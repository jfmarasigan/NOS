const purTransMenuKeyMap = {
    i : (ev) => {
        if ($("#review-purchase-orders")) {
            $("#review-purchase-orders").trigger("click");
        }
    },
    l : (ev) => {
        if ($("#upd-inc-ship-log")) {
            $("#upd-inc-ship-log").trigger("click");
        }
    },
    escape : (ev) => {
        if($("#success").is(":visible")) {
            $("#ok").trigger("click");
        } else {
            apex.navigation.redirect($("#P302_MURL").val());
        }
    }
}

function mapKeys() {
    $(document).off('keydown.purTransMenuKeyEvents');
    $(document).on('keydown.purTransMenuKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (purTransMenuKeyMap[key]) {
            ev.preventDefault();
            purTransMenuKeyMap[key]();
        }
    });
}