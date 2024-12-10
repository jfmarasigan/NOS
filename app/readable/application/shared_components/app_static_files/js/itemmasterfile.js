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

    // Format the string with leading zeroes
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
            console.log("set time and date");
            updateTime();
            setInterval(updateTime, interval || 1000);
        }
    }
}

function focusOnIGFirstRecordFirstCell(regionId, columnName) {
    var ig = apex.region(regionId).widget().interactiveGrid("getViews","grid");
    var model = ig.model;

    if (model._data.length > 0) { // Check if there are any records
        var rec = model.recordAt(0); // Get the first record
        ig.view$.grid("gotoCell", rec[0], columnName); // Focus on the first cell in the specified column
    } else {
        console.log("No records available in the grid.");
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

function refocusOnIG(regionId, columnName, selectedRecord) {
    var ig = apex.region(regionId).widget().interactiveGrid("getViews","grid");
    ig.view$.grid("gotoCell", selectedRecord[0][0], columnName);
}

function generateReport(reportName, format, options) {
    const opts = options ? options : {};
    let url = `/jri/report?_repName=${reportName}&_repFormat=${format ? "pdf" : format}&_repLocale=en_US`;
    if (opts?.parameters) {
        let params = new URLSearchParams(opts?.parameters).toString();
        url = `${url}&${params}`;
    }
    if (opts?.fileName) {
        url = `${url}&_outFilename=${opts.fileName}`;
        url = `${url}&_saveFileName=${opts.fileName}`;
    }

    const mode = opts?.mode || "print";

    fetch(url)
        .then(response => response.blob())
        .then(blob => {
            if (mode === "export") {
                // download
                const url = window.URL.createObjectURL(blob);
                const link = document.createElement("a");
                link.href = url;
                link.download = opts?.fileName ? opts.fileName : "report.pdf";
                link.setAttribute("target", "_blank");
                document.body.appendChild(link);
                link.click();
                link.parentNode.removeChild(link);
            } else {
                window.open(`/jri/r/${opts.fileName}`);
            }
        })
        .catch(error => console.error(error));
}

function setTitle(titleText) {
    $(".t-Header-navBar .t-Header-navBar--start")
        .css({"justify-content": "center", "font-size" : "1.5rem"})
        .html(titleText);
}