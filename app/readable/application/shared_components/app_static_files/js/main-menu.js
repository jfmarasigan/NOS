const mainMenuKeyMap = {
    m : (ev) => {
        if ($("#masterfile")) {
            $("#masterfile").trigger("click");
        }
    },
    p : (ev) => {
        if ($("#pur-trans")) {
            $("#pur-trans").trigger("click");
        }
    },
    v : (ev) => {
        if ($("#inv-trans")) {
            $("#inv-trans").trigger("click");
        }
    },
    s : (ev) => {
        if ($("#ship-trans")) {
            $("#ship-trans").trigger("click");
        }
    },
    u : (ev) => {
        if ($("#settings")) {
            $("#settings").trigger("click");
        }
    },
    w : (ev) => {
        if ($("#wh-trans")) {
            $("#wh-trans").trigger("click");
        }
    },
    r : (ev) => {
        if ($("#reports")) {
            $("#reports").trigger("click");
        }
    },
    a : (ev) => {
        if ($("#acc-payable")) {
            $("#acc-payable").trigger("click");
        }
    },
    o : (ev) => {
        if ($("#order-entry-inv")) {
            $("#order-entry-inv").trigger("click");
        }
    },
    g : (ev) => {
        if ($("#gc-trans")) {
            $("#gc-trans").trigger("click");
        }
    },
    c : (ev) => {
        if ($("#coll-outs")) {
            $("#coll-outs").trigger("click");
        }
    },
    escape : (ev) => {
        apex.navigation.redirect($("#LURL").val());
    }
}

function mapKeys() {
    $(document).off('keydown.mmKeyEvents');
    $(document).on('keydown.mmKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (mainMenuKeyMap[key]) {
            ev.preventDefault();
            mainMenuKeyMap[key]();
        }
    });
}