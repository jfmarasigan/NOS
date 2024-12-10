const masterfileMenuKeyMap = {
    i : (ev) => {
        if ($("#itm-master")) {
            $("#itm-master").trigger("click");
        }
    },
    v : (ev) => {
        if ($("#sup-master")) {
            $("#sup-master").trigger("click");
        }
    },
    c : (ev) => {
        if ($("#customer-masterfile")){
            $("#customer-masterfile").trigger("click");
        }
    },
    o : (ev) => {
        if ($("#ord-sales-master")) {
            $("#ord-sales-master").trigger("click");
        }
    },
    b : (ev) => {
        if ($("#bank-masterfile")) {
            $("#bank-masterfile").trigger("click");
        }
    },
    d : (ev) => {
        if ($("#discount-masterfile")) {
            $("#discount-masterfile").trigger("click");
        }
    },
    escape : (ev) => {
        apex.navigation.redirect($("#P2_MURL").val());
    }
}

function mapKeys() {
    $(document).off('keydown.masterMenuKeyEvents');
    $(document).on('keydown.masterMenuKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (masterfileMenuKeyMap[key]) {
            ev.preventDefault();
            masterfileMenuKeyMap[key]();
        }
    });
}