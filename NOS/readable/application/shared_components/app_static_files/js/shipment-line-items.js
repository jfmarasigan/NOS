const USDollar = new Intl.NumberFormat('en-US', {
    minimumFractionDigits: 2
});

const LINE_IG = "shipment-line-items";
const ITEMS_IG = "item-po-list";
const SERIAL_NO_IG = "serial-nos-ig";

let lineRec = null;
let itemRec = null;
let itemPODdialogFocus = true;
let snIGLoaded = false;

const quantityRegexFn = value => /^\d*\.?\d*$/.test(value);
const quantityInvalidMsg = "Please enter a valid value";

(function($) {
    function update(model) {
        var tuKey = model.getFieldKey("TOTAL_UNITS"),
            costKey = model.getFieldKey("COST"),
            tuTotal = 0,
            costTotal = 0;

        model.forEach(function(record, index, id) {
            var tu = parseFloat(record[tuKey]),
                cost = parseFloat(record[costKey]),
                meta = model.getRecordMetadata(id);

            if (!meta.deleted && !meta.agg) {
                if (!isNaN(tu)) {
                    tuTotal += tu;
                }
                if (!isNaN(cost) && !isNaN(tu)) {
                    costTotal += (tu * cost);
                }
            }
        });
        
        $s("P102_CS_TOTAL_QTY", tuTotal);
        $s("P102_PO_VALUE", USDollar.format(costTotal));
    }

    $(function() {
        $("#shipment-line-items").on("interactivegridviewmodelcreate", function(event, ui) {
            var model = ui.model;

            if (ui.viewId === "grid") {
                model.subscribe( {
                    onChange: function(type, change) {
                        if (type === "set") {
                            if (change.field === "TOTAL_UNITS" || change.field === "COST") {
                                update(model);
                            }
                        } else if (type !== "move" && type !== "metaChange") {
                            update(model);
                        }
                    }
                });
                
                update(model); 
                model.fetchAll(function() {});
            }
        });
    });
})(apex.jQuery);

function focusEditOnCell(regionId, column, record) {
    const gridView = apex.region(regionId).widget().interactiveGrid("getViews").grid;
    const model = gridView.model;
    setTimeout(() => {
        gridView.view$.grid("gotoCell", model.getRecordId(record), column);
        gridView.view$.find(".a-GV-cell.is-focused").trigger("dblclick");
    }, 250);
}

const p102KeyMap = {
    escape : (ev) => {
        if (activeModal === null) {
            // save and redirect to p100
        } else {
            $.event.trigger(`close-${activeModal}`);
            activeModal = null;
        }
    }
}

function mapP102Keys() {
    $(document).off('keydown.p102keyevents');
    $(document).on('keydown.p102keyevents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (p102KeyMap[key]) {
            ev.preventDefault();
            p102KeyMap[key](ev);
        }
    });
}

function getSelectedColumnValue(columnName) {
    const model = getIGGridViewModel(LINE_IG);
    const record = model.getSelectedRecords()[0];
    return model.getValue(record, columnName);
}

function addSelectedItemToFilter(refPoNo, itemId) {
    const shipmentItemsId = getSelectedColumnValue("SHIPMENT_ITEMS_ID");
    apex.server.process("SET_ITEM_FILTER", {
        x01: refPoNo,
        x02: itemId,
        x03: shipmentItemsId
    })
    .done(data => { });
}

function saveLineIG() {
    let modelA = getIGGridViewModel(LINE_IG);

    if (modelA.isChanged()) {
        let itemKey = modelA.getFieldKey("ITEM_ID");
        let deleteRecs = [];

        modelA.forEach((row) => {
            let rowItemId = row[itemKey];
            if (rowItemId === "") {
                deleteRecs.push(row);
            }
        });
        modelA.deleteRecords(deleteRecs);

        apex.region(LINE_IG).call("getActions").invoke("save");
    } else {
        apex.navigation.redirect($v("P102_SURL"));
    }
}

function initialize() {
    setTitle(`${$v("P102_LABEL")} Line Items`);

    $("#item-po-dialog").on("keydown", (ev) => {
        const key = ev.key?.toLowerCase();
        if (key === "home") {
            focusOnIGFirstRecordFirstCell("item-po-list", "ITEM_NUMBER");
        } else if (key === "end") {
            focusOnIGLastRecordFirstCell("item-po-list");
        } else if (key === "escape") {
            ev.preventDefault();
            $.event.trigger("CLOSE_ITEM_PO");
            focusEditOnCell(LINE_IG, "ITEM_NUMBER", lineRec);
            itemPODdialogFocus = true;
            ev.stopImmediatePropagation();
        } else if (key === "enter") {
            const model = getIGGridViewModel(LINE_IG);
            const itemListModel = getIGGridViewModel(ITEMS_IG);
            const selItemRec = itemListModel.getSelectedRecords();
            if (selItemRec.length > 0) {
                model.setValue(lineRec, "ITEM_NUMBER", selItemRec[0][1]);
                model.setValue(lineRec, "ITEM_DESC", selItemRec[0][2]);
                model.setValue(lineRec, "UOM", selItemRec[0][4]);
                model.setValue(lineRec, "UOM_ID", selItemRec[0][6]);
                model.setValue(lineRec, "MASTERCASE_QUANTITY", selItemRec[0][5]);
                model.setValue(lineRec, "ITEM_ID", selItemRec[0][0]);
                model.setValue(lineRec, "SPID", model.getValue(lineRec, "SHIPMENT_ITEMS_ID"));
                // model.setValue(lineRec, "CS", 1);
                // model.setValue(lineRec, "COST", 1);
            }
            itemPODdialogFocus = true;
            // addSelectedItemToFilter($v("P102_REF_PO_NO"), selItemRec[0][0]);
            $.event.trigger("CLOSE_ITEM_PO");
            apex.item("P102_ITEM_SEARCH_F").setValue("");
            apex.item("P102_ITEM_SEARCH_V").setValue("");
            // apex.region(LINE_IG).call("getActions").set("edit", false);
            focusEditOnCell(LINE_IG, "CS", lineRec);
        }
    });

    $(`#${LINE_IG}`).on("keydown", (ev) => {
        const key = ev.key?.toLowerCase();
        if (ev.key?.toLowerCase() === "f2") {
            $("#add-line-item").trigger("click");
        } else if (key === "f7") {
            ev.preventDefault();
            $("#add-serial-nos").trigger("click");
        }
    });

    setIGInputFilter($("#cs"), quantityRegexFn, quantityInvalidMsg);
    setIGInputFilter($("#total-units"), quantityRegexFn, quantityInvalidMsg);
    setIGInputFilter($("#cost"), quantityRegexFn, quantityInvalidMsg);

    apex.message.setThemeHooks({ 
        beforeShow: function(pMsgType, pElement$){ 
            setTimeout(function() { 
                $('.t-Alert').fadeOut('fast');
            }, 2500);
        }
    });

    $("#encoded").on("keydown", (ev) => {
        const modelE = getIGGridViewModel(LINE_IG);
        const total = modelE.getTotalRecords();
        const index = modelE.indexOf(modelE.getSelectedRecords()[0]);

        const key = ev.key?.toLowerCase();
        if (key === "tab" && (total - 1) === index) {
            ev.preventDefault();
        }
    });

    focusEditOnCell(LINE_IG, "ITEM_NUMBER", getIGGridViewModel(LINE_IG).recordAt(0));
}