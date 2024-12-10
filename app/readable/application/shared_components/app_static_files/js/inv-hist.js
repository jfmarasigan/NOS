let activeModal = null;
let forRefresh = false;
let isSearchValid = false;

function initialize() {
    activeModal = 'search-bar';
    $("#btn-search").trigger("click");
}

const inputTags = ['input', 'select', 'button', 'textarea'];
const closeWithAnyKey = [];
const p201KeyMap = {
    s : (v) => {
        if (activeModal === null) {
            activeModal = "search-bar";
            $("#btn-search").trigger("click");
        } else if (closeWithAnyKey.indexOf(activeModal) !== -1) {
            closeModal(activeModal);
            activeModal = null;
        }
    },
    i : (v) => {
        if (activeModal === null) {
            activeModal = "inquire-invoice";
            $("#btn-inquire").trigger("click");
        } else if (closeWithAnyKey.indexOf(activeModal) !== -1) {
            closeModal(activeModal);
            activeModal = null;
        }
    },
    d : (v) => {
        if (activeModal === null) {
            activeModal = "delivery-details";
            $("#btn-delivery").trigger("click");
        } else if (closeWithAnyKey.indexOf(activeModal) !== -1) {
            closeModal(activeModal);
            activeModal = null;
        }
    },
    home : (v) => {
        if (activeModal === null) {
            $("#btn-top").trigger("click");
        } else if (closeWithAnyKey.indexOf(activeModal) !== -1)  {
            closeModal(activeModal);
            activeModal = null;
        }
    },
    end : (v) => {
        if (activeModal === null) {
            $("#btn-end").trigger("click");
        } else if (closeWithAnyKey.indexOf(activeModal) !== -1)  {
            closeModal(activeModal);
            activeModal = null;
        }
    },
    escape : (v) => {
        if (activeModal === null) {
            apex.navigation.redirect($("#P201_SURL").val());
        } else {
            activeModal = null;
        }
    }
}

function mapP201Keys() {
    function eventHandler(ev) {
        var key = ev.key?.toLowerCase();
        const activeElem = document.activeElement.tagName.toLowerCase();
        if (p201KeyMap[key] && inputTags.indexOf(activeElem) === -1) {
            ev.preventDefault();
            p201KeyMap[key](ev);
        }
    }

    $(document).off('keydown.p201keyevents', eventHandler);
    $(document).on('keydown.p201keyevents', eventHandler);
}

function onInvHistoryIGRecordSelect(data) {
    if (data.selectedRecords?.length > 0) {
        let selectedRecord = data.selectedRecords[0];
        $("#P201_ID").val(selectedRecord[0]);

        if (forRefresh) {
            focusOnIGFirstRecordFirstCell("inv-hist-ig", "INVOICE_NUMBER");
            forRefresh = false;
        }
    }
}

function setSearchBarKeyEvents(event) {
    event.preventDefault();

    const key = event.key?.toLowerCase();

    if (key === "escape") {
        isSearchValid = true;
    } else {
        apex.message.clearErrors();
        isSearchValid = true;
        
    }
}

function setDeliveryDetailsTitle(title) {
    $("div.ui-dialog:has(#delivery-details) .ui-dialog-title").text(title);
}