const shipTransMenuKeyMap = {
    s : (ev) => {
        if ($("#shipment-records")) {
            $("#shipment-records").trigger("click");
        }
    },
    m : (ev) => {
        if ($("#ind-ship-exp")) {
            $("#ind-ship-exp").trigger("click");
        }
    },
    escape : (ev) => {
        apex.navigation.redirect($("#P301_MURL").val());
    }
}

function mapKeys() {
    $(document).off('keydown.shipTransMenuKeyEvents');
    $(document).on('keydown.shipTransMenuKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (shipTransMenuKeyMap[key]) {
            ev.preventDefault();
            shipTransMenuKeyMap[key]();
        }
    });
}