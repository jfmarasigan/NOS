const orderEntryInvMenuKeyMap = {
    p : (ev) => {
        if ($("#pur-hist")) {
            $("#pur-hist").trigger("click");
        }
    },
    d : (ev) => {
        if ($("#inq-inv-dets")) {
            $("#inq-inv-dets").trigger("click");
        }
    },
    s : (ev) => {
        if ($("#inq-sum-inv")) {
            $("#inq-sum-inv").trigger("click");
        }
    },
    c : (ev) => {
        if ($("#cash-invoicing")) {
            $("#cash-invoicing").trigger("click");
        }
    },
    x : (ev) => {
        if ($("#refund")) {
            $("#refund").trigger("click");
        }
    },
    h : (ev) => {
        if ($("#charge-cod-invoicing")) {
            $("#charge-cod-invoicing").trigger("click");
        }
    },
    m : (ev) => {
        if ($("#credit-memo")) {
            $("#credit-memo").trigger("click");
        }
    },
    q : (ev) => {
        if ($("#quote-entry-update")) {
            $("#quote-entry-update").trigger("click");
        }
    },
    r : (ev) => {
        if ($("#reservations")) {
            $("#reservations").trigger("click");
        }
    },
    escape : (ev) => {
        apex.navigation.redirect($("#P305_MURL").val());
    }
}

function mapKeys() {
    $(document).off('keydown.orderEntryInvMenuKeyEvents');
    $(document).on('keydown.orderEntryInvMenuKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (orderEntryInvMenuKeyMap[key]) {
            ev.preventDefault();
            orderEntryInvMenuKeyMap[key]();
        }
    });
}