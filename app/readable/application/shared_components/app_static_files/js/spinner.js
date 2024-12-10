let gspinner = null;

function openSpinner() {
    gspinner = apex.widget.waitPopup();
}

function closeSpinner() {
    gspinner.remove();
    gspinner = null;
}