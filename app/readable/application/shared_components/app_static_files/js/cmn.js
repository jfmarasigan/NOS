function updateTime() {
    const weekday = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
    const timeElement = document.getElementById("clock");
    const dateElement = document.getElementById("date");
    const now = new Date();
    let hours = now.getHours();
    const minutes = now.getMinutes();
    const seconds = now.getSeconds();
    const dayOfTheWeek = now.getDay();
    let session = "AM";
    
    if (hours >= 12){
        hours = hours - 12;
        session = "PM";
    }

    if (hours == 0){
        hours = 12;
    }

    var formatter = new Intl.DateTimeFormat('en-US', { day: '2-digit', month: '2-digit', year: 'numeric'});
    var formattedDate = formatter.format(now);

    const clockStr = `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')} ${session}`;
    const dateStr  = `${formattedDate} (${weekday[dayOfTheWeek]})`;

    timeElement.innerText = clockStr;
    dateElement.innerText = dateStr;
}

function setTimeToNavBar(interval) {
    if ($(".t-Header-navBar--center")) {
        $(".t-Header-navBar--center").prepend("<div id='clock'></div>");
        $(".t-Header-navBar--center").prepend("<div id='date'></div>");
        if (document.getElementById("clock") != null && document.getElementById("date") != null) {
            updateTime();
            setInterval(updateTime, interval || 1000);
        }
    }
}

function focusOnIGFirstRecordFirstCell(regionId, columnName) {
    var ig = apex.region(regionId).widget().interactiveGrid("getViews","grid");
    var rec = ig.model.recordAt(0);
    if (rec !== null) {
        ig.view$.grid("gotoCell", rec[0], columnName);
    }
}

function focusOnIGLastRecordFirstCell(regionId) {
    let region = apex.region(regionId)
    let view = region.call("getCurrentView"),
    model = view.model,
    view$ = view.view$;

    let totalRec = model.getTotalRecords();
    let rec = model.recordAt(totalRec - 1);
    if ( rec ) {
        let offset,
            pi = view$.grid("getPageInfo"),
            index = model.indexOf(rec);

        offset = index * pi.rowHeight;
        $(".a-GV-w-scroll").scrollTop( offset );

        view$.grid("setSelectedRecords", [rec], true);
    }
}

function getSelectedIGRecord(regionId) {
    var ig = apex.region(regionId).widget().interactiveGrid("getViews","grid");
    return ig.model.getSelectedRecords();
}

// use this to refocus on IG after refresh
function refocusOnIG(regionId, columnName, selectedRecord) {
    var ig = apex.region(regionId).widget().interactiveGrid("getViews","grid");
    ig.view$.grid("gotoCell", selectedRecord[0][0], columnName);
}

async function getHashForReport(reportName, format, fileName) {
    return apex.server.process("GET_HASH", {
        x01: reportName,
        x02: format,
        x03: fileName
    });   
}

async function generateReport(reportName, format, options) {
    const opts = options ? options : {};
    let fileFormat = format ? format : "pdf";
    let url = `/jri/report?_repName=${reportName}&_repFormat=${fileFormat}&_repLocale=en_US`;

    if (opts?.parameters) {
        let params = new URLSearchParams(opts?.parameters).toString();
        url = `${url}&${params}`;
    }

    let fileName = opts.fileName ? opts.fileName : (format === "xlsx" ? "report.xlsx" : "report.pdf");
    if (fileName.indexOf(".") === -1) {
        fileName = `${fileName}.${fileFormat}`;
    }

    url = `${url}&_outFilename=${fileName}`;
    url = `${url}&_saveIsEnabled=true&_saveFileName=${fileName}`;
    
    let datasource = $v("P_APP_ENV");
    if (datasource && datasource !== 'default') {
        url = `${url}&_dataSource=${datasource}`;
    }

    const mode = opts?.mode || "print";

    const printCallback = opts?.printCallback;
    const printerCallback = opts?.printerCallback;
    const exportCallback = opts?.exportCallback;

    const res = await getHashForReport(reportName, fileFormat, fileName);

    const reqHeaders = {
        gx0s1 : res.h
    };

    url = `${url}&_user=${res.u}`;

    let grSpinner = null;
    if (opts?.spinnerEnabled) {
        grSpinner = apex.widget.waitPopup();
    }
    fetch(url, {headers : reqHeaders})
        .then(response => {
            if (!response?.ok) {
                if (opts?.spinnerEnabled) {
                    grSpinner.remove();
                }
                throw new Error("An error occured while generating your file. Please contact your administrator.");
            }
            return response.blob();
        })
        .then(blob => {
            if (opts?.spinnerEnabled) {
                grSpinner.remove();
            }
            if (mode === "export") {
                const url = window.URL.createObjectURL(blob);
                const link = document.createElement("a");
                link.href = url;
                link.download = fileName;
                link.setAttribute("target", "_blank");
                document.body.appendChild(link);
                link.click();
                link.parentNode.removeChild(link);
                if (exportCallback) {
                    exportCallback();
                }
            } else if (mode === "printer") {
                if (printerCallback) {
                    printerCallback(`/jri/r/${fileName}`);
                }
            } else {
                window.open(`/jri/r/${fileName}`);
                if (printCallback) {
                    printCallback();
                }
            }
        })
        .catch(error => apex.message.showErrors([{
                type:       "error",
                location:   [ "page" ],
                message:    error,
                unsafe:     false
        }]));
}

function generateReportParams(reportName, options) {
    return encodeURIComponent(JSON.stringify({
        reportName: reportName,
        format: "pdf",
        options: {
            fileName : options?.fileName,
            parameters : options?.parameters
        }
    }));
}

function setTitle(titleText) {
    $(".t-Header-navBar .t-Header-navBar--start")
        .addClass("nos-page-title")
        // .css({"justify-content": "center", "font-size" : "1.5rem"})
        .html(titleText);
}

function setIGInputFilter(textbox, inputFilter, errMsg) {
    [ "input", "keydown" ].forEach(function(event) {
        textbox.on(event, function(e) {
            if (e.key?.toLowerCase() !== "tab") {
                if (inputFilter(this.value)) {
                    this.classList.remove("input-error");
                    this.setCustomValidity("");

                    this.oldValue = this.value;
                    this.oldSelectionStart = this.selectionStart;
                    this.oldSelectionEnd = this.selectionEnd;
                }
                else if (this.hasOwnProperty("oldValue")) {
                    this.classList.add("input-error");
                    this.setCustomValidity(errMsg);
                    this.reportValidity();
                    this.value = this.oldValue;
                    this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
                }
                else {
                    this.value = "";
                }
            }
        });
    });
}

function setInputFilter(textbox, inputFilter, errMsg) {
    [ "input", "keydown", "keyup", "mousedown", "mouseup", "select", "contextmenu", "drop", "focusout" ].forEach(function(event) {
        textbox.on(event, function(e) {
            if (inputFilter(this.value)) {
                // Accepted value.
                if ([ "keydown", "mousedown", "focusout" ].indexOf(e.type) >= 0){
                    this.classList.remove("input-error");
                    this.setCustomValidity("");
                }

                this.oldValue = this.value;
                this.oldSelectionStart = this.selectionStart;
                this.oldSelectionEnd = this.selectionEnd;
            }
            else if (this.hasOwnProperty("oldValue")) {
                // Rejected value: restore the previous one.
                this.classList.add("input-error");
                this.setCustomValidity(errMsg);
                this.reportValidity();
                this.value = this.oldValue;
                this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
            }
            else {
                // Rejected value: nothing to restore.
                this.value = "";
            }
        });
    });
}

function parseMDY(value) {
    var dateArr = value.split("/");
    var day = parseInt(dateArr[1], 10),
        month = parseInt(dateArr[0], 10) - 1,
        year = parseInt(dateArr[2], 10);
        
    var d = new Date(year, month, day);
    if (d.getFullYear() == year && d.getMonth() == month && d.getDate() == day) {
        return d;
    }
    return null;
}

function getIGGridViewModel(regionId) {
    const gridView = apex.region(regionId).widget().interactiveGrid("getViews").grid;
    return gridView.model;
}

function showGPopup(props) {
    if (props.icon) {
        $(".g-popup-icon").addClass(props.icon);
    }
    $(".g-popup").text(props.message);
    $.event.trigger("OPEN_GPOPUP");
    const pContainer = $("div.ui-dialog:has(.g-popup-box)");
    if (props.width) {
        const widthAdj = 600 - props.width;
        const widthUnit = pContainer.css("width").match(/[a-zA-Z]+/);
        const leftUnit = pContainer.css("left").match(/[a-zA-Z]+/);
        const leftValue = parseFloat(pContainer.css("left").match(/\d+/)) + (widthAdj / 2);
        pContainer.css({
            "width": `${props.width}${widthUnit}`, 
            "left": `${leftValue}${leftUnit}`
        });
    }
    if (props.top) {
        pContainer.css("top", props.top);
    }

    if (props.removeMaxHeight) {
        $(".g-popup-box").css({"max-height":""});
    }
    const timeoutActive = props.timeoutActive !== null && props.timeoutActive !== undefined ? props.timeoutActive : true;
    const timeoutIn = props.timeout ? props.timeout : 2000;

    if (timeoutActive) {
        const timeout = isNaN(timeoutIn) ? 2000 : timeoutIn;
        setTimeout(() => {
            $.event.trigger("CLOSE_GPOPUP");
        }, timeout);
    }
}

function nvl(value, defaultValue) {
    return value !== "" && value !== null && value !== undefined ? value : defaultValue;
}