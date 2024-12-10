const whTransMenuKeyMap = {
    '*' : (ev) => {
        if ($("#view-today-dispatch")) {
            $("#view-today-dispatch").trigger("click");
        }
    },
    '*' : (ev) => {
        if ($("#view-past-dispatch")) {
            $("#view-past-dispatch").trigger("click");
        }
    },
    t : (ev) => {
        if ($("#transfer-records")) {
            $("#transfer-records").trigger("click");
        }
    },
    d : (ev) => {
        if ($("#delivery-log")) {
            $("#delivery-log").trigger("click");
        }
    }, 
    c : (ev) => {
        if ($("#convert-item")) {
            $("#convert-item").trigger("click");
        }
    },    
    escape : (ev) => {
        apex.navigation.redirect($("#P300_MURL").val());
    }
}

function mapKeys() {
    $(document).off('keydown.whTransMenuKeyEvents');
    $(document).on('keydown.whTransMenuKeyEvents', (ev) => {
        var key = ev.key?.toLowerCase();
        if (whTransMenuKeyMap[key]) {
            ev.preventDefault();
            whTransMenuKeyMap[key]();
        }
    });
}