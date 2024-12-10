const gcMenuKeyMap = {
    c : (ev) => {
        if ($("#gc-create-update")) {
            $("#gc-create-update").trigger("click");
        }
    },
    s : (ev) => {
        if ($("#gc-status")) {
            $("#gc-status").trigger("click");
        }
    },
    d : (ev) => {
        if ($("#donation-status")) {
            $("#donation-status").trigger("click");
        }
    },
    r : (ev) => {
        if ($("#gc-reports")) {
            $("#gc-reports").trigger("click");
        }
    },
    escape : (ev) => {
        apex.navigation.redirect($("#P304_MURL").val());
    }
}

function mapKeys() {
    $(document).off('keydown.gcMenuKeyEvents');
    $(document).on('keydown.gcMenuKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (gcMenuKeyMap[key]) {
            ev.preventDefault();
            gcMenuKeyMap[key]();
        }
    });
}