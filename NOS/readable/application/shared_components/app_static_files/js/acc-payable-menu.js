const accPayableMenuKeyMap = {
    p : (ev) => {
        if ($("#payable-entry-update")) {
            $("#payable-entry-update").trigger("click");
        }
    },
    c : (ev) => {
        if ($("#boh-checks-entry-update")) {
            $("#boh-checks-entry-update").trigger("click");
        }
    },
    h : (ev) => {
        if ($("#fhb-checks-entry-update")) {
            $("#fhb-checks-entry-update").trigger("click");
        }
    },
    k : (ev) => {
        if ($("#mc-corp-payment-entry-update")) {
            $("#mc-corp-payment-entry-update").trigger("click");
        }
    },
    i : (ev) => {
        if ($("#mp-ays-payment-entry-update")) {
            $("#mp-ays-payment-entry-update").trigger("click");
        }
    },
    a : (ev) => {
        if ($("#inquire-payments")) {
            $("#inquire-payments").trigger("click");
        }
    },
    escape : (ev) => {
        apex.navigation.redirect($("#P303_MURL").val());
    }
}

function mapKeys() {
    $(document).off('keydown.accPayableMenuKeyEvents');
    $(document).on('keydown.accPayableMenuKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (accPayableMenuKeyMap[key]) {
            ev.preventDefault();
            accPayableMenuKeyMap[key]();
        }
    });
}