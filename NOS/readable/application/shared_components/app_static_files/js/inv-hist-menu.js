const inventoryHistMenuKeyMap = {
    i : (ev) => {
        if ($("#inv-hist")) {
            $("#inv-hist").trigger("click");
        }
    },
    k : (ev) => {
        if ($("#inv-hist-item")) {
            $("#inv-hist-item").trigger("click");
        }
    },
    r : (ev) => {
        if ($("#inv-reports")) {
            $("#inv-reports").trigger("click");
        }
    },
    escape : (ev) => {
        apex.navigation.redirect($("#P200_MURL").val());
    }
}
function evHandler(ev) {
    var key = ev.key?.toLowerCase();
    if (inventoryHistMenuKeyMap[key]) {
        ev.preventDefault();
        inventoryHistMenuKeyMap[key]();
    }
}

function mapKeys() {    
    $(document).off('keydown.inventoryHistMenuKeyEvents', evHandler);
    $(document).on('keydown.inventoryHistMenuKeyEvents', evHandler);
}