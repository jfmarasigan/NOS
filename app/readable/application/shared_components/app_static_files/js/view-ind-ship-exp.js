let activeModal = null;
let forRefresh = false;
let isSearchValid = false;

function initialize() {
    activeModal = 'search-bar';
    $("#btn-search").trigger("click");
}

const inputTags = ['input', 'select', 'button', 'textarea'];
const closeWithAnyKey = [];
const p110KeyMap = {
    p : (v) => {
        if (activeModal === null) {
            $("#btn-print").trigger("click");
        } else if (closeWithAnyKey.indexOf(activeModal) !== -1) {
            closeModal(activeModal);
            activeModal = null;
        }
    },
    s : (v) => {
        if (activeModal === null) {
            activeModal = "search-bar";
            $("#btn-search").trigger("click");
        } else if (closeWithAnyKey.indexOf(activeModal) !== -1) {
            closeModal(activeModal);
            activeModal = null;
        }
    },
    home : (v) => {
        if (activeModal === null) {
            $("#btn-top").trigger("click");
        } else if (closeWithAnyKey.indexOf(activeModal) !== -1)  {
            closeModal(activeModal);
            activeModal = null;
        }
    },
    end : (v) => {
        if (activeModal === null) {
            $("#btn-end").trigger("click");
        } else if (closeWithAnyKey.indexOf(activeModal) !== -1)  {
            closeModal(activeModal);
            activeModal = null;
        }
    },
    escape : (v) => {
        if (activeModal === null) {
            apex.navigation.redirect($("#P110_SURL").val());
        } else {
            activeModal = null;
        }
    }
}

function mapP110Keys() {
    function eventHandler(ev) {
        var key = ev.key?.toLowerCase();
        const activeElem = document.activeElement.tagName.toLowerCase();
        if (p110KeyMap[key] && inputTags.indexOf(activeElem) === -1) {
            ev.preventDefault();
            p110KeyMap[key](ev);
        }
    }

    $(document).off('keydown.p110keyevents', eventHandler);
    $(document).on('keydown.p110keyevents', eventHandler);
}

function onShipmentExpIGRecordSelect(data) {
    if (data.selectedRecords?.length > 0) {
        let selectedRecord = data.selectedRecords[0];
        $("#P110_ID").val(selectedRecord[0]);

        if (forRefresh) {
            focusOnIGFirstRecordFirstCell("shipment-expenses", "CHECK_DATE");
            forRefresh = false;
        }
    }
}

function setSearchBarKeyEvents(event) {
    event.preventDefault();

    const key = event.key?.toLowerCase();

    if (key === "escape") {
        isSearchValid = true;
    } else {
        apex.message.clearErrors();
        const dateRegex = /^((0?[1-9]|1[012])[- /.](0?[1-9]|[12][0-9]|3[01])[- /.](19|20)?[0-9]{2})*$/;
        const matchOption = apex.item("P110_SEARCH_OPTIONS").getValue();
        const containerNo = apex.item("P110_SEARCH_CONTAINER").getValue();
        const ata = apex.item("P110_SEARCH_ATA").getValue();
        let errors = [];

        if (matchOption === '1' && (containerNo === "" || ata === "")) {
            if (containerNo === "") {
                errors.push({
                    type: "error",
                    location: "inline",
                    pageItem: "P110_SEARCH_CONTAINER",
                    message: "Please enter a value for container number"
                });
            } 
            if (ata === "") {
                errors.push({
                    type: "error",
                    location: "inline",
                    pageItem: "P110_SEARCH_ATA",
                    message: "Please enter a value for ATA"
                });
            } 
        } else if (matchOption === '2' && containerNo === "") {
            errors.push({
                type: "error",
                location: "inline",
                pageItem: "P110_SEARCH_CONTAINER",
                message: "Please enter a value for container number"
            });
        } else if (matchOption === "") {
            errors.push({
                type: "error",
                location: "inline",
                pageItem: "P110_SEARCH_OPTIONS",
                message: "Please select a matching option"
            });
        } else if (ata !== "" && (!dateRegex.test(ata) || parseMDY(ata) === null)) {
            errors.push({
                type: "error",
                location: "inline",
                pageItem: "P110_SEARCH_ATA",
                message: "Please enter a valid date (MM/DD/YYYY)"
            });
        } 

        if (errors.length > 0) {
            isSearchValid = false;
            apex.message.showErrors(errors);
        } else {
            apex.region("shipment-expenses").refresh();
            activeModal = null;
            forRefresh = true;

            apex.server.process("SET_SEARCH", {
                pageItems: ["P110_SEARCH_OPTIONS", "P110_SEARCH_CONTAINER", "P110_SEARCH_ATA"]
            });

            apex.item("P110_CONTAINER_NO_HEADER").setValue($("#P110_SEARCH_CONTAINER").val().toUpperCase());
            apex.item("P110_ATA_DATE_HEADER").setValue(apex.item("P110_SEARCH_ATA").getValue() || "-");
            apex.item("P110_MATCH_OPTION_HEADER").setValue($("#P110_SEARCH_OPTIONS").val());

            isSearchValid = true;
        }
    }
}