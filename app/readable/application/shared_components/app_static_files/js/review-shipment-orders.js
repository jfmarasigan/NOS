let activeModal = null;
let forRefresh = false;
let whSubmit = false;

const SHIPMENT_IG = "shipment-records";
const ICON_OK_LARGE = "fa fa-lg fa-check-circle";
const ICON_FAIL_LARGE = "fa fa-lg fa-times-circle msg-icon-yellow";

function moveButtons() {
    $("#btn-exit").prependTo(".shipment-buttons2");
    $("#btn-bottom").prependTo(".shipment-buttons2");
    $("#btn-top").prependTo(".shipment-buttons2");
    $("#btn-search").prependTo(".shipment-buttons2");
    $("#btn-print-ship").prependTo(".shipment-buttons2");
    $("#btn-print-inv").prependTo(".shipment-buttons2");
    $("#btn-sort").prependTo(".shipment-buttons2");
    $("#btn-post-all-po").prependTo(".shipment-buttons2");
    $("#btn-print").prependTo(".shipment-buttons1");
    $("#btn-vendor-payt").prependTo(".shipment-buttons1");
    $("#btn-unpost").prependTo(".shipment-buttons1");
    $("#btn-post").prependTo(".shipment-buttons1");
    $("#btn-receive").prependTo(".shipment-buttons1");
    $("#btn-reports").prependTo(".shipment-buttons1");
    $("#btn-inquire").prependTo(".shipment-buttons1");
    $("#btn-update").prependTo(".shipment-buttons1");
    $("#btn-add").prependTo(".shipment-buttons1");
}

function withSearchResults() {
    return getIGGridViewModel(SHIPMENT_IG).getTotalRecords() > 0;
}

function withSelectedRecord() {
    return $("#P100_ID").val() !== "";
}

function setGeneralEventHandler(handler, ev, withRecordCheck = false, withActiveModal = false, activeModalHandler) {
    const withRecord = withRecordCheck ? withSelectedRecord() : true;
    if (activeModal === null && withRecord) {
        handler(ev);
    } else if (closeWithAnyKey.indexOf(activeModal) !== -1) {
        $.event.trigger(`close-${activeModal}`);
        activeModal = null;
    } else if (activeModal !== null && withActiveModal) {
        activeModalHandler(ev);
    }
}

const inputTags = ['input', 'select', 'button', 'textarea'];
const closeWithAnyKey = ["vp-modal"];
const p100KeyMap = {
    a : (ev) => {
        setGeneralEventHandler(() => {
            $("#btn-add").trigger("click");
        }, ev, false, true, () => {
            if (activeModal === "printing-options") {
                print(1);
            } else if (activeModal === "report-options") {
                $.event.trigger("EXEC_REPORT_OPT_A");
            } else if (activeModal === "pic-options") {
                $.event.trigger("EXEC_PIC_OPT_A");
            } else {
                $.event.trigger("EXEC_PRINT_A");
            }
        });
    },
    b : (ev) => {
        setGeneralEventHandler(null, ev, false, true, () => {
            if (activeModal === "printing-options") {
                print(2);
            } else if (activeModal === "report-options") {
                $.event.trigger("EXEC_REPORT_OPT_B");
            } else if (activeModal === "pic-options") {
                $.event.trigger("EXEC_PIC_OPT_B");
            } else {
                $.event.trigger("EXEC_PRINT_B");
            }
        });
    },
    u : (ev) => {
        setGeneralEventHandler(() => {
            const igmodel = getIGGridViewModel(SHIPMENT_IG);
            const selRec = igmodel.getSelectedRecords()[0];
            const isPosted = igmodel.getValue(selRec, "P") === "P";
            if (!isPosted) {
                $("#btn-update").trigger("click");
            }
        }, ev, true);
    },
    i : (ev) => {
        setGeneralEventHandler(() => {
            $("#btn-inquire").trigger("click");
        }, ev, true);
    },
    r : (ev) => {
        setGeneralEventHandler(() => {
            activeModal = "report-options";
            $("#btn-reports").trigger("click");
        }, ev);
    },
    e : (ev) => {
        setGeneralEventHandler(() => {
            const isPR = getPRStatus();
            if (isPR !== "") {
                showPopup({
                    message: `Shipment No. ${$v("P100_SHIPMENT_NUM")} is already ${isPR === "R" ? "received" : "posted"}`,
                    icon: ICON_FAIL_LARGE,
                    width: 410
                });
            } else {
                activeModal = "wh-location";
                $("#btn-receive").trigger("click");
            }
        }, ev, true);
    },
    p : (ev) => {
        setGeneralEventHandler(() => {
            const isPR = getPRStatus();
            if (isPR === "R") {
                $("#btn-post").trigger("click");
            } else if (isPR === "P") {
                showPopup({
                    message: `Shipment No. ${$v("P100_SHIPMENT_NUM")} is already posted.`,
                    icon: ICON_FAIL_LARGE,
                    width: 410
                });
            } else {
                showPopup({
                    message: `Shipment No. ${$v("P100_SHIPMENT_NUM")} is not yet recived.`,
                    icon: ICON_FAIL_LARGE,
                    width: 410
                });
            }
        }, ev, true);
    },
    h : (ev) => {
        setGeneralEventHandler(() => {
            const isPR = getPRStatus();
            if (isPR === "P") {
                activeModal = "supervisor-approval";
                $("#btn-unpost").trigger("click");
            } else {
                showPopup({
                    message: `Shipment No. ${$v("P100_SHIPMENT_NUM")} is not yet posted.`,
                    icon: ICON_FAIL_LARGE,
                    width: 410
                });
            }
        }, ev, true);
    },
    v : (ev) => {
        setGeneralEventHandler(() => {
            activeModal = "vp-modal";
            $("#btn-vendor-payt").trigger("click");
        }, ev, true);
    },
    n : (ev) => {
        setGeneralEventHandler(() => {
            $("#btn-print").trigger("click");
        }, ev, true);
    },
    t : (ev) => {
        setGeneralEventHandler(() => {
            $("#btn-post-all-po").trigger("click");
        }, ev, true);
    },
    o : (ev) => {
        setGeneralEventHandler(() => {
            activeModal = "sort-modal";
            $("#btn-sort").trigger("click");
        }, ev); 
    },
    c : (ev) => {
        setGeneralEventHandler(() => {
            activeModal = "pic-options";
            $("#btn-print-inv").trigger("click");
        }, ev, false, true, () => {
            $.event.trigger("EXEC_REPORT_OPT_C");
        });
    },
    d : (ev) => {
        setGeneralEventHandler(() => {
            activeModal = "ship-dup-container";
            $("#btn-print-ship").trigger("click");
        }, ev, false, true, () => {
            $.event.trigger("EXEC_REPORT_OPT_D");
        });
    },
    s : (ev) => {
        setGeneralEventHandler(() => {
            activeModal = "search-bar";
            $("#btn-search").trigger("click");
        }, ev); 
    },
    home : (ev) => {
        setGeneralEventHandler(() => {
            $("#btn-top").trigger("click");
        }, ev); 
    },
    end : (ev) => {
        setGeneralEventHandler(() => {
            $("#btn-bottom").trigger("click");
        }, ev);
    },
    escape : (ev) => {
        if (activeModal === null) {
            apex.navigation.redirect($("#P100_SURL").val());
        } else {
            $.event.trigger(`close-${activeModal}`);
            activeModal = null;
        }
    }
}

function mapP100Keys() {
    $(document).off('keydown.p100keyevents');
    $(document).on('keydown.p100keyevents', (ev) => {
        var key = ev.key?.toLowerCase();
        const activeElem = document.activeElement.tagName.toLowerCase();
        if (p100KeyMap[key] && inputTags.indexOf(activeElem) === -1) {
            ev.preventDefault();
            p100KeyMap[key](ev);
        }
    });
}

function mapSortKeys() {
    function sortEvent(event) {
        var key = event.key?.toLowerCase();
        if (key === "arrowup") {
            $(event.target).removeClass("sort-active");
            $(event.target).prev().focus();
            $(event.target).prev().addClass("sort-active");
        }
        if (key === "arrowdown") {
            $(event.target).removeClass("sort-active");
            $(event.target).next().focus();
            $(event.target).next().addClass("sort-active");
        }
        if (key === "enter") {
            const activeElem = $(".sort-option.sort-active");
            $("#P100_SORT").val(activeElem.attr("data-value"));
            $("#P100_SORT").trigger("change");
            $(".shipment-tg-header .sort-col").text(activeElem.text());
            activeModal = null;
            forRefresh = true;
            $.event.trigger("close-sort");
        }
    }

    $(".sort").on("keydown", sortEvent);
}

function showPopup(props) {
    if (props.icon) {
        $(".r-popup-icon").addClass(props.icon);
    }
    $.event.trigger("OPEN_POPUP");
    if (props.width) {
        const pContainer = $("div.ui-dialog:has(.r-popup-box)");
        const widthAdj = 600 - props.width;
        const widthUnit = pContainer.css("width").match(/[a-zA-Z]+/);
        const leftUnit = pContainer.css("left").match(/[a-zA-Z]+/);
        const leftValue = parseFloat(pContainer.css("left").match(/\d+/)) + (widthAdj / 2);
        pContainer.css({
            "width": `${props.width}${widthUnit}`, 
            "left": `${leftValue}${leftUnit}`
        });
    }
    $(".r-popup").text(props.message);
    const timeoutActive = props.timeoutActive || true;
    const timeoutIn = props.timeout || 2000;
    if (timeoutActive) {
        const timeout = isNaN(timeoutIn) ? 2000 : timeoutIn;
        setTimeout(() => {
            $.event.trigger("CLOSE_POPUP");
        }, timeout);
    }
}

function showErrorMessage(message, callback) {
    apex.message.clearErrors();
    apex.message.showErrors([{
        type:       "error",
        location:   ["page"],
        message:    message,
        unsafe:     false
    }]);
    if(callback) {
        callback();
    }
}

function getPRStatus() {
    const igmodel = getIGGridViewModel(SHIPMENT_IG);
    const selRec = igmodel.getSelectedRecords()[0];
    return igmodel.getValue(selRec, "P");
}

function getRepCurrentDateString() {
    let date = new Date();
    let year = new Intl.DateTimeFormat('en', { year: 'numeric' }).format(date);
    let month = new Intl.DateTimeFormat('en', { month: '2-digit' }).format(date);
    let day = new Intl.DateTimeFormat('en', { day: '2-digit' }).format(date);
    return `${year}.${month}.${day}`;
}

function setPrintingOptions(options) {
    document.getElementById("P100_REPORT_AFFIX_NAME").value = nvl(options.affixFontName, "Y");
    document.getElementById("P100_REPORT_SPINNER_ON").value = nvl(options.spinnerEnabled, "Y");
    document.getElementById("P100_REPORT_FORMAT").value = nvl(options.format, "pdf");
    document.getElementById("P100_REPORT_NAME").value = nvl(options.reportName, "");
    document.getElementById("P100_FILENAME").value = nvl(options.fileName, "");
    document.getElementById("P100_REPORT_DATA").value = JSON.stringify(options.data);
    $.event.trigger("OPEN_PRINTING_OPTIONS");
}

function getPrintingOptions() {
    return {
        reportName: document.getElementById("P100_REPORT_NAME").value,
        format: document.getElementById("P100_REPORT_FORMAT").value || "pdf",
        fileName: document.getElementById("P100_FILENAME").value,
        spinnerEnabled: document.getElementById("P100_REPORT_SPINNER_ON").value === "Y",
        data: JSON.parse(document.getElementById("P100_REPORT_DATA").value),
        affixFontName: document.getElementById("P100_REPORT_AFFIX_NAME").value === "Y",
    };
}

function print(printer) {
    const printOptions = getPrintingOptions();
    
    let reportData = printOptions.data;
    let reportName = printOptions.reportName;
    // if (printOptions.affixFontName) {
    //     if (printer === 1) {
    //         reportName += "_COURIER_NEW";
    //     } else {
    //         reportName += "_ARIAL";
    //     }
    // } else {
    //     reportData.P_FONT = printer;
    // }
    reportData.P_FONT = printer;

    generateReport(reportName, printOptions.format, {
        fileName: printOptions.fileName,
        mode : "print",
        parameters : printOptions.data,
        spinnerEnabled : printOptions.spinnerEnabled,
        printCallback : function () {
            $.event.trigger("CLOSE_PRINTING_OPTIONS");
        }
    });
}

function initialize() {
    mapP100Keys();
    moveButtons();
    setTitle("Review Shipment Orders");
    mapSortKeys();

    let testDigitsOnly = function (value) {
        return /^\d*$/.test(value);
    };

    setInputFilter($("#P100_SEARCH"), testDigitsOnly, "Only digits are allowed");
    setInputFilter($("#P100_REP_MONTH_FROM"), testDigitsOnly, "Only digits are allowed");
    setInputFilter($("#P100_REP_MONTH_TO"), testDigitsOnly, "Only digits are allowed");
    setInputFilter($("#P100_REP_PIC_MONTH"), testDigitsOnly, "Only digits are allowed");
    setInputFilter($("#P100_REP_DUP_MONTH"), testDigitsOnly, "Only digits are allowed");

    apex.message.setThemeHooks({ 
        beforeShow: function(pMsgType, pElement$){ 
            setTimeout(function() { 
                $('.t-Alert').fadeOut('fast');
            }, 2000);
        }
    });

    apex.actions.shortcutSupport("off");
}

