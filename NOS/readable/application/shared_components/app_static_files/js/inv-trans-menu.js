const invTransMenuKeyMap = {
    s : (ev) => {
        if ($("#inv-tran-map")) {
            $("#inv-tran-map").trigger("click");
        }
    },
    w : (ev) => {
        if ($("#inv-tran-map-wh")) {
            $("#inv-tran-map-wh").trigger("click");
        }
    },
    u : (ev) => {
        if ($("#upd-inv-bal")) {
            $("#upd-inv-bal").trigger("click");
        }
    },
    q : (ev) => {
        if ($("#inq-inv-bal")) {
            $("#inq-inv-bal").trigger("click");
        }
    },
    escape : (ev) => {
        apex.navigation.redirect($("#P3_MURL").val());
    }
}

function mapKeys() {
    $(document).off('keydown.invTransMenuKeyEvents');
    $(document).on('keydown.invTransMenuKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (invTransMenuKeyMap[key]) {
            ev.preventDefault();
            invTransMenuKeyMap[key]();
        }
    });
}