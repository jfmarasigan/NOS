const collOutsKeyMap = {
    p : (ev) => {
        if ($("#view-pay-map")) {
            $("#view-pay-map").trigger("click");
        }
    },
    s : (ev) => {
        if ($("#view-state-acct")) {
            $("#view-state-acct").trigger("click");
        }
    },
    r : (ev) => {
        if ($("#reports")) {
            $("#reports").trigger("click");
        }
    },
    c : (ev) => {
        if ($("#coll-entry-update")) {
            $("#coll-entry-update").trigger("click");
        }
    },
    escape : (ev) => {
        apex.navigation.redirect($("#P306_MURL").val());
    }
}

function mapKeys() {
    $(document).off('keydown.coKeyEvents');
    $(document).on('keydown.coKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (collOutsKeyMap[key]) {
            ev.preventDefault();
            collOutsKeyMap[key]();
        }
    });
}