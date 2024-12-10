prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Add/Update New Shipment'
,p_alias=>'ADD-UPDATE-NEW-SHIPMENT'
,p_step_title=>'Add/Update New Shipment'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/jquery-ui.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let vendorCtr = 1;',
'let isAutoCompleteOpen = false;',
'let svp = [];',
'',
'const p101KeyMap = {',
'    f8 : (v) => {',
'        $("#add-vendor-btn").trigger("click");',
'    },',
'    escape : (v) => {',
'        apex.navigation.redirect($("#P101_SRURL").val());',
'    }',
'}',
'',
'function mapP101Keys() {',
'    $(document).off(''keydown.p101keyevents'');',
'    $(document).on(''keydown.p101keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p101KeyMap[key]) {',
'            ev.preventDefault();',
'            p101KeyMap[key](ev);',
'        }',
'    });',
'}',
'',
'function resetValidityOnKeydown(elem) {',
'    elem.on("keydown", function (ev) {',
'        if (!this.checkValidity()) {',
'            this.setCustomValidity("");',
'        }',
'    });',
'}',
'',
'function parseMDY(value) {',
'    var date = value.split("/");',
'    var d = parseInt(date[1], 10),',
'        m = parseInt(date[0], 10),',
'        y = parseInt(date[2], 10);  ',
'    return new Date(y, m - 1, d);',
'}',
'',
'function compareDates (d1, d2) {',
'    let date1 = new Date(d1).getTime();',
'    let date2 = new Date(d2).getTime();',
'',
'    if (date1 < date2) {',
'        return -1',
'    } else if (date1 > date2) {',
'        return 1;',
'    } else {',
'        return 0;',
'    }',
'};',
'',
'function repositionDateFields() {',
'    $(".shipment-dates").append(''<div class="dates-label"></div><div class="dates-fields"></div>'');',
'    $("#P101_ETD_LABEL").appendTo(".dates-label");',
'    $(".t-Form-inputContainer:has(.t-Form-itemWrapper):has(#P101_ETD)").appendTo(".dates-fields");',
'    $(`<div class="dates-fields-separator">-</div>`).appendTo(".dates-fields");',
'    $(".t-Form-inputContainer:has(.t-Form-itemWrapper):has(#P101_ETA)").appendTo(".dates-fields");',
'    $(`<div class="dates-fields-separator">-</div>`).appendTo(".dates-fields");',
'    $(".t-Form-inputContainer:has(.t-Form-itemWrapper):has(#P101_ATA)").appendTo(".dates-fields");',
'    $(".dates-fields .t-Form-inputContainer").removeClass("col col-2");',
'    $(".shipment-dates .etd, .shipment-dates .eta, .shipment-dates .ata").remove();',
'}',
'',
'function initialize() {',
'    setTitle(`${$v("P101_LABEL")} New Shipment`);',
'    repositionDateFields();',
'    mapP101Keys();',
'    setAutocompleteForVendorName(1);',
'    setAutocompleteForVendorRefPo(1);',
'    setValidationForVendor(1);',
'    setValidationForVendorRefPo(1);',
'    setInvNosChangeEvent(1);',
'',
'    $("#P101_SVP1").addClass("svp");',
'    $("#P101_VENDOR_ID1").addClass("vendor-id required");',
'    $("#P101_VENDOR_REF_PO_ID1").addClass("vendor-ref-po-id required");',
'    $("#P101_VENDOR_ID1").attr("vendor-seq", "1");',
'    $("#P101_VENDOR_REF_PO_ID1").attr("vendor-seq", "1");',
'    $("#P101_SHIPMENT_YR, #P101_SHIPMENT_NO").on("keydown", (ev) => {',
'        if (ev.key?.toLowerCase() !== "tab") {',
'            ev.preventDefault();',
'        }',
'    });',
'',
'    const amountRegexFn = value => /^\d*\.?\d*$/.test(value);',
'    const amountInvalidMsg = "Please enter a valid amount";',
'',
'    setInputFilter($("#P101_FREIGHT_COST"), amountRegexFn, amountInvalidMsg);',
'    setInputFilter($("#P101_INSURANCE_COST"), amountRegexFn, amountInvalidMsg);',
'    setInputFilter($("#P101_HANDLING_COST"), amountRegexFn, amountInvalidMsg);',
'    setInputFilter($("#P101_DUTIES_AND_TAXES"), amountRegexFn, amountInvalidMsg);',
'    setInputFilter($("#P101_MISC_EXPENSES"), amountRegexFn, amountInvalidMsg);',
'    setInputFilter($("#P101_VENDOR_CREDITS"), amountRegexFn, amountInvalidMsg);',
'',
'    resetValidityOnKeydown($("#P101_ETD_input"));',
'    resetValidityOnKeydown($("#P101_ETA_input"));',
'    resetValidityOnKeydown($("#P101_ATA_input"));',
'',
'    $("#P101_ETD").on("change", function (ev) {',
'        const etd = parseMDY(apex.item("P101_ETD").getValue());',
'        const eta = parseMDY(apex.item("P101_ETA").getValue());',
'        const ata = parseMDY(apex.item("P101_ETA").getValue());',
'        const elem = document.getElementById("P101_ETD_input");',
'        let message = "";',
'',
'        if (isNaN(etd)) {',
'            message = "Invalid date";',
'        } else if (apex.item("P101_ETA").getValue() !== "" && compareDates(etd, eta) === 1) {',
'            message = "ETD should be earlier than or equal to ETA";',
'        } else if (apex.item("P101_ATA").getValue() !== "" && compareDates(etd, ata) === 1) { ',
'            message = "ETD should be earlier than or equal to ATA";',
'        } else {',
'            elem.setCustomValidity("");',
'        }',
'        ',
'        if (message !== "") {',
'            elem.setCustomValidity(message);',
'            elem.reportValidity();',
'            $("#P101_ETD").focus();',
'            $("#P101_ETD").val("");',
'        }',
'    });',
'',
'    $("#P101_ETA").on("change", (ev) => {',
'        const etd = parseMDY(apex.item("P101_ETD").getValue());',
'        const eta = parseMDY(apex.item("P101_ETA").getValue());',
'        const elem = document.getElementById("P101_ETA_input");',
'        let message = "";',
'',
'        if (isNaN(eta)) {',
'            message = "Invalid date";',
'        } else if (apex.item("P101_ETD").getValue() !== "" && compareDates(etd, eta) === 1) {',
'            message = "ETA should be later than or equal to ETD";',
'        } else {',
'            elem.setCustomValidity("");',
'        }',
'        ',
'        if (message !== "") {',
'            elem.setCustomValidity(message);',
'            elem.reportValidity();',
'            $("#P101_ETA").focus();',
'            $("#P101_ETA").val("");',
'        }',
'    });',
'',
'    $("#P101_ATA").on("change", (ev) => {',
'        const etd = parseMDY(apex.item("P101_ETD").getValue());',
'        const ata = parseMDY(apex.item("P101_ATA").getValue());',
'        const elem = document.getElementById("P101_ATA_input");',
'        let message = "";',
'',
'        if (isNaN(ata)) {',
'            message = "Invalid date";',
'        } else if (apex.item("P101_ETD").getValue() !== "" && compareDates(etd, ata) === 1) {',
'            message = "ATA should be later than or equal to ETD";',
'        } else {',
'            elem.setCustomValidity("");',
'        }',
'        ',
'        if (message !== "") {',
'            elem.setCustomValidity(message);',
'            elem.reportValidity();',
'            $("#P101_ATA").focus();',
'            $("#P101_ATA").val("");',
'        }',
'    });',
'',
'    $(".required").on("keydown", (ev) => {',
'        if (ev.key?.toLowerCase() === "tab" && !ev.shiftKey) {',
'            const elem = ev.target;',
'            if (elem.value === "") {',
'                ev.preventDefault();',
'                $(elem).focus();',
'                elem.setCustomValidity("This field is required");',
'                elem.reportValidity();',
'            } else {',
'                elem.setCustomValidity("");',
'            }',
'        }',
'    });',
'}',
'',
'function setInvNosChangeEvent(vendorCounter) {',
'    $(`#P101_VENDOR_INV_NO${vendorCounter}`).on("change", function(ev) {',
'        const invInputs = this.value.split(",");',
'        const svpId = parseInt(this.getAttribute("svp-id"), 10);',
'        const svpIndx = svp.findIndex(x => x.svpId === svpId);',
'',
'        if (!isNaN(svpId) && svpIndx !== -1) {',
'            for (var i = 0; i < invInputs.length && svpIndx !== -1; i++) {',
'                const inv = svp[svpIndx].invoices.findIndex(x => x.docNo?.toString() === invInputs[i]);',
'                if (inv === -1) {',
'                    svp[svpIndx].invoices.push({svp: svpId, invoiceId: null, docNo: invInputs[i], status: "N"});',
'                } else {',
'                    svp[svpIndx].invoices[inv].status = ''U'';',
'                }',
'            }',
'',
'            const svpInvs = svp[svpIndx].invoices;',
'            for (var j = 0; j < svpInvs.length; j++) {',
'                if (invInputs.indexOf(svpInvs[j].docNo?.toString()) === -1) {',
'                    if (svp[svpIndx].invoices[j].status === "N") {',
'                        svp[svpIndx].invoices.splice(j, 1);',
'                    } else {',
'                        svp[svpIndx].invoices[j].status = "D";',
'                    }',
'                }',
'            }',
'        }',
'    });',
'}',
'',
'function setAutocompleteForVendorName(vendorCounter) {    ',
'    $(`#P101_VENDOR_NAME${vendorCounter}`).autocomplete({',
'        autoFocus: true,',
'        minLength: 1,',
'        delay: 250,',
'        source: function (request, response) {',
'            apex.server.process("SEARCH_VENDORS", {',
'                x01: request.term,',
'            })',
'            .done(data => {',
'                response(data);',
'            });',
'        },',
'        open: function () {',
'            isAutoCompleteOpen = true;',
'        },',
'        select: function(ev, ui) {',
'            $(`#P101_VENDOR_ID${vendorCounter}`).val(ui?.item?.realValue);',
'        },',
'        close : function () {',
'            isAutoCompleteOpen = false;',
'        }',
'    });',
'    $(`#P101_VENDOR_NAME${vendorCounter}`).on("blur", () => {',
'        isAutoCompleteOpen = false;',
'    });',
'}',
'',
'function setAutocompleteForVendorRefPo(vendorCounter) {',
'    $(`#P101_VENDOR_REF_PO${vendorCounter}`).autocomplete({',
'        autoFocus: true,',
'        minLength: 1,',
'        delay: 100,',
'        source: function (request, response) {',
'            apex.server.process("SEARCH_REF_POS", {',
'                x01: request.term,',
'                x02: apex.item(`P101_VENDOR_ID${vendorCounter}`).getValue()',
'            })',
'            .done(data => {',
'                response(data);',
'            });',
'        },',
'        select: function(ev, ui) {',
'            $(`#P101_VENDOR_REF_PO_ID${vendorCounter}`).val(ui?.item?.realValue);',
'            // set selected vendor PO',
'        }',
'    });',
'}',
'',
'function setValidationForVendor(vendorCounter) {',
'    $(`#P101_VENDOR_NAME${vendorCounter}`).on("keydown", function(ev) {',
'        if (!this.checkValidity()) {',
'            this.setCustomValidity("");',
'        }',
'    });',
'    $(`#P101_VENDOR_NAME${vendorCounter}`).on("change", function (ev) {',
'        const vendorId = $(`#P101_VENDOR_ID${vendorCounter}`).val();',
'        if (vendorId !== "") {',
'            apex.server.process("CHECK_VENDOR", {',
'                x01: vendorId',
'            })',
'            .done(data => {',
'                if (data.isValid !== "Y") {',
'                    $(this).focus();',
'                    this.value = "";',
'                    $(`#P101_VENDOR_ID${vendorCounter}`).val("");',
'                    this.setCustomValidity("Invalid vendor entered");',
'                    this.reportValidity();',
'                } else {',
'                    this.setCustomValidity("");',
'                }',
'            });',
'        } else {',
'            $(this).focus();',
'            this.value = "";',
'            $(`#P101_VENDOR_ID${vendorCounter}`).val("");',
'            this.setCustomValidity("Invalid vendor entered");',
'            this.reportValidity();',
'        }',
'    });',
'}',
'',
'function setValidationForVendorRefPo(vendorCounter) {',
'    $(`#P101_VENDOR_REF_PO${vendorCounter}`).on("keydown", function(ev) {',
'        if (!this.checkValidity()) {',
'            this.setCustomValidity("");',
'        }',
'    });',
'    $(`#P101_VENDOR_REF_PO${vendorCounter}`).on("change", function (ev) {',
'        apex.server.process("CHECK_PO", {',
'            x01: this.value,',
'            x02: apex.item(`P101_VENDOR_ID${vendorCounter}`).getValue()',
'        })',
'        .done(data => {',
'            if (data.isValid !== "Y") {',
'                $(this).focus();',
'                this.value = "";',
'                $(`#P101_VENDOR_REF_PO_ID${vendorCounter}`).val("");',
'                this.setCustomValidity("Invalid PO entered");',
'                this.reportValidity();',
'            } else {',
'                this.setCustomValidity("");',
'            }',
'        })',
'    });',
'}',
'',
'function addNewVendor(data) {',
'    vendorCtr++;',
'',
'    let vendorInputClone = $(".row.vendors-input:first").clone();',
'    const seqNo = data?.vendorSeq || vendorCtr;',
'',
'    vendorInputClone.find("input, a-autocomplete, span.display_only.apex-item-display-only, div.t-Form-fieldContainer, span.a-Form-error, div.t-Form-error div").each(function(index, elem) { ',
'        let currentId = elem.id;',
'        let newId = "";',
'        if (currentId === "P101_VENDOR1") {',
'            newId = `P101_VENDOR${seqNo || ""}`;',
'        } if (currentId === "P101_VENDOR_NAME1_input") {',
'            newId = `P101_VENDOR_NAME${seqNo}_input`;',
'        } else if (currentId === "P101_VENDOR_NAME1") {',
'            newId = `P101_VENDOR_NAME${seqNo}`;',
'            elem.value = data?.vendorName || "";',
'            elem.name = newId;',
'            elem.disabled = (data?.vendorName || "") !== "";',
'            elem.classList.remove("apex-page-item-error");',
'            elem.removeAttribute("aria-describedby");',
'            elem.removeAttribute("aria-invalid");',
'        } else if (currentId === "P101_VENDOR_ID1") {',
'            newId = `P101_VENDOR_ID${seqNo}`;',
'            elem.value = data?.vendorId || "";',
'            elem.name = newId;',
'        } else if (currentId === "P101_VENDOR_REF_PO1") {',
'            newId = `P101_VENDOR_REF_PO${seqNo}`;',
'            elem.value = data?.vendorRefPo || "";',
'            elem.name = newId;',
'        } else if (currentId === "P101_VENDOR_REF_PO_ID1") {',
'            newId = `P101_VENDOR_REF_PO_ID${seqNo}`;',
'            elem.value = data?.vendorRefPo || "";',
'        } else if (currentId === "P101_VENDOR_INV_NO1") {',
'            newId = `P101_VENDOR_INV_NO${seqNo}`;',
'            elem.value = data?.invDisplay || "";',
'            elem.name = newId;',
'            elem.setAttribute("svp-id", data?.svp);',
'        } else if (currentId === "P101_SVP1") {',
'            newId = `P101_SVP${seqNo}`;',
'            elem.value = data?.svp || "";',
'            elem.name = newId;',
'        } else if (currentId === "P101_VENDOR_NAME1_CONTAINER") {',
'            newId = `P101_VENDOR_NAME${seqNo}_CONTAINER`;',
'        } else if (currentId === "P101_VENDOR_NAME1_error_placeholder") {',
'            newId = `P101_VENDOR_NAME${seqNo}_error_placeholder`;',
'        } else if (currentId === "P101_VENDOR_NAME1_error") {',
'            newId = `P101_VENDOR_NAME${seqNo}_error`;',
'            elem.innerHTML = "";',
'        } else if (currentId === "P101_VENDOR_REF_PO1_CONTAINER") {',
'            newId = `P101_VENDOR_REF_PO${seqNo}_CONTAINER`;',
'        } else if (currentId === "P101_VENDOR_REF_PO1_error_placeholder") {',
'            newId = `P101_VENDOR_REF_PO${seqNo}_error_placeholder`;',
'        } else if (currentId === "P101_VENDOR_REF_PO1_error") {',
'            newId = `P101_VENDOR_REF_PO${seqNo}_error`;',
'            elem.innerHTML = "";',
'        } else if (currentId === "P101_VENDOR_INV_NO1_CONTAINER") {',
'            newId = `P101_VENDOR_INV_NO${seqNo}_CONTAINER`;',
'        } else if (currentId === "P101_VENDOR_INV_NO1_error_placeholder") {',
'            newId = `P101_VENDOR_INV_NO${seqNo}_error_placeholder`;',
'        } else if (currentId === "P101_VENDOR_INV_NO1_error") {',
'            newId = `P101_VENDOR_INV_NO${seqNo}_error`;',
'            elem.innerHTML = "";',
'        }',
'        elem.setAttribute("vendor-seq", seqNo);',
'        elem.id = newId;',
'    });',
'',
'    vendorInputClone.find(`#P101_VENDOR${seqNo}`).text(`Vendor ${seqNo}`);',
'',
'    vendorInputClone.find(`.t-Form-labelContainer`).remove();',
'',
'    vendorInputClone.insertAfter($(".row.vendors-input:last"));',
'',
'    setAutocompleteForVendorName(seqNo);',
'    setAutocompleteForVendorRefPo(seqNo);',
'    setValidationForVendorRefPo(seqNo);',
'    setValidationForVendorRefPo(seqNo);',
'    setInvNosChangeEvent(seqNo);',
'',
'    // $(`#P101_VENDOR_REF_PO${vendorCtr}`).on("keyup", function(ev) {',
'    //     resetSelectedVendorPos(ev, $(this));',
'    // });',
'}',
'',
'function getSelectedVendorPos() {',
'    let vendors = { VENDORS : [] };',
'    $(".row.vendors-input").each(function(index, elem) {',
'        let val = $(this).find(".vendor-id").val();',
'        if (val !== "") {',
'            vendors.VENDORS.push(val);',
'        }',
'    });',
'    return vendors;',
'}',
'',
'function resetSelectedVendorPos(ev, elem) {',
'    if (["backspace", "delete"].indexOf(ev.key.toLowerCase()) !== -1 && elem.val() === "") {',
'        $(`#P101_VENDOR_ID${elem.attr("vendor-seq")}`).val("");',
'        apex.server.process("SET_SELECTED_VENDOR_POS", {',
'            p_clob_01: JSON.stringify(getSelectedVendorPos()),',
'        })',
'        .done(data => { });',
'    }',
'}',
'',
'function getBasicInfoData() {',
'    let data = {',
'        shipmentId: $v("P101_SHIPMENT_ID"),',
'        shipmentNo: `${$v("P101_SHIPMENT_YR")}-${$v("P101_SHIPMENT_NO")}`,',
'        vendors: [],',
'        invoices: [],',
'        vessel: $v("P101_VESSEL_NAME_BL1"),',
'        vesselBlNo: $v("P101_VESSEL_NAME_BL2"),',
'        barge: $v("P101_BARGE_BL1"),',
'        bargeBlNo: $v("P101_BARGE_BL2"),',
'        containerType: $v("P101_CONTAINER_TYPE_NO1"),',
'        containerNo: $v("P101_CONTAINER_TYPE_NO2"),',
'        origin: $v("P101_ORIGIN"),',
'        eta: $v("P101_ETA"),',
'        etd: $v("P101_ETD"),',
'        ata: $v("P101_ATA"),',
'        freightCost: $v("P101_FREIGHT_COST"),',
'        insuranceCost: $v("P101_INSURANCE_COST"),',
'        handlingCost: $v("P101_HANDLING_COST"),',
'        dutiesAndTaxes: $v("P101_DUTIES_AND_TAXES"),',
'        miscExpenses: $v("P101_MISC_EXPENSES"),',
'        vendorCredits: $v("P101_VENDOR_CREDITS")',
'    };',
'',
'    $(".row.vendors-input").each(function(index, elem) {',
'        const svpId = $(this).find(".svp").val();',
'        const vendorId = $(this).find(".vendor-id").val();',
'        const invNos = $(this).find(".vendor-inv-no").val();',
'',
'        let invoices = [];',
'        let svpIndx = svp.findIndex(x => x.svpId?.toString() === svpId);',
'        if (svpIndx !== -1) {',
'            invoices.push(...(svp[svpIndx].invoices.map(inv => { ',
'                return {',
'                    invoiceId: inv.invoiceId,',
'                    docNo: inv.docNo,',
'                    status: inv.status',
'                }',
'            })));',
'        } else {',
'            invoices.push(...(invNos.split('','').map(inv => {',
'                return {',
'                    invoiceId: null,',
'                    docNo: inv,',
'                    status: ''N''',
'                }',
'            })))',
'        }',
'',
'        data.vendors.push({',
'            svpId: svpId,',
'            vendorId: vendorId,',
'            vendorSeq: $(this).find(".vendor-id").attr("vendor-seq"),',
'            poId: $(this).find(".vendor-ref-po-id").val(),',
'            invNos: $(this).find(".vendor-inv-no").val(),',
'            invoices: invoices',
'        });',
'    });',
'',
'    return data;',
'}',
'',
'function validateFields() {',
'    let errors = [];',
'    apex.message.clearErrors();',
'    $(".required").each((index, elem) => {',
'        if ($v(elem.id) === "" && elem.type !== "hidden") {',
'            errors.push({',
'                type:       "error",',
'                location:   ["inline"],',
'                pageItem:   elem.id,',
'                message:    "This field is required",',
'                unsafe:     false',
'            });',
'        }',
'    });',
'',
'    const invNoLength = 10;',
'    $(".row.vendors-input").each(function(index, elem) {',
'        const invNos = $(this).find(".vendor-inv-no").val();',
'        const xLength = invNos.split(",").find((invNo) => invNo.length > invNoLength);',
'        if (xLength !== undefined) {',
'            errors.push({',
'                type:       "error",',
'                location:   ["inline"],',
'                pageItem:   $(this).find(".vendor-inv-no").attr("id"),',
'                message:    "One or more invoice number/s are invalid.",',
'                unsafe:     false',
'            });',
'        }',
'    });',
'',
'    if (errors.length > 0) {',
'        apex.message.showErrors(errors);',
'        return false;',
'    }',
'    return true;',
'}',
'',
'function submitForm() {',
'    apex.server.process("SAVE_SHIPMENT", {',
'        pageItems : ["P101_LABEL"],',
'        p_clob_01 : JSON.stringify(getBasicInfoData())',
'    }, {',
'        dataType: ''json''',
'    })',
'    .done(data => {',
'        // apex.page.submit({',
'        //     request: "SUBMIT",',
'        //     set: { "P101_SHIPMENT_ID" : data.id },',
'        //     showWait: true',
'        // });',
'        apex.navigation.redirect(data.u);',
'    });',
'}',
'',
'function loadVendorData(vendors) {',
'    // get first vendor from vendors object',
'    const firstVendorIndex = vendors.findIndex(vendor => vendor.vendorSeq === 1);',
'    const firstVendor = vendors[firstVendorIndex];',
'    const fvinvs = firstVendor.invoices.sort((a, b) => a.invoiceId - b.invoiceId);',
'    svp.push({svpId: firstVendor.svp, invoices: fvinvs});',
'',
'    // set first vendor to fields',
'    $("#P101_SVP1").val(firstVendor.svp);',
'    $("#P101_VENDOR_NAME1").val(firstVendor.vendorName);',
'    $("#P101_VENDOR_NAME1").prop("disabled", true);',
'    $("#P101_VENDOR_ID1").val(firstVendor.vendorId);',
'    $("#P101_VENDOR_REF_PO1").val(firstVendor.vendorRefPo);',
'    $("#P101_VENDOR_REF_PO_ID1").val(firstVendor.vendorRefPo);',
'    $("#P101_VENDOR_INV_NO1").val(fvinvs.map(x => x.docNo).join());',
'    $("#P101_VENDOR_INV_NO1").attr("svp-id", firstVendor.svp);',
'    vendorCtr = firstVendor.vendorSeq;',
'',
'    // remove first vendor from vendors object',
'    vendors.splice(firstVendorIndex, 1);',
'',
'    // set other vendors to field in order',
'    for (var i = 0; i < vendors.length; i++) {',
'        let svpDatum = vendors[i];',
'        const invs = svpDatum.invoices.sort((a, b) => a.invoiceId - b.invoiceId);',
'        svpDatum.invDisplay = invs.map(x => x.docNo).join();',
'        svp.push({svpId: svpDatum.svp, invoices: invs});',
'        addNewVendor(vendors[i]);',
'    }',
'}',
'',
'function getVendors1() {',
'    $(".shipment-no").prop("disabled", true);',
'',
'    let waitSpinner = apex.widget.waitPopup();',
'    apex.server.process("GET_VENDORS", {',
'        x01: $v("P101_SHIPMENT_ID")',
'    })',
'    .done(data => {',
'',
'    })',
'    .fail((jqXHR, textStatus, errorThrown) => {',
'        // error: An error occurred while retrieving vendor information for this shipment',
'    });',
'}',
'',
'function getVendors2() {',
'    $(".shipment-no").prop("disabled", true);',
'',
'    let waitSpinner = apex.widget.waitPopup();',
'    apex.server.process("GET_VENDORS2", {',
'        x01: $v("P101_SHIPMENT_ID")',
'    })',
'    .done(data => { ',
'',
'    })',
'    .fail((jqXHR, textStatus, errorThrown) => {',
'        // error: An error occurred while retrieving vendor information for this shipment',
'    });',
'}',
'',
'function getVendors() {',
'    $(".shipment-no").prop("disabled", true);',
'',
'    let waitSpinner = apex.widget.waitPopup();',
'    apex.server.process("GET_VENDORS3", {',
'        x01: $v("P101_SHIPMENT_ID")',
'    })',
'    .done(data => {',
'        let vendors = JSON.parse(data.svp);',
'        vendors.sort((a, b) => a.vendorSeq - b.vendorSeq);',
'        loadVendorData(vendors);',
'        waitSpinner.remove();',
'        $("#P101_VENDOR_REF_PO1").focus();',
'    })',
'    .fail((jqXHR, textStatus, errorThrown) => {',
'        // error: An error occurred while retrieving vendor information for this shipment',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initialize();',
''))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#css/cmn#MIN#.css',
'#APP_FILES#css/jquery-ui.min.css',
'#APP_FILES#css/jquery-ui.structure.min.css',
'#APP_FILES#css/jquery-ui.theme.min.css'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
' ',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Region-header {',
'    color: white;',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Region-bodyWrap, .t-Region-body  {',
'    border-radius: 0.5rem;',
'    background-color: white;',
'}',
'',
'.p101-section {',
'    border-radius: 0.5rem;',
'}',
'',
'.p101-section label, .p101-section input, .t-Region-title, #P101_VENDOR_NAME {',
'    font-size: 1.125rem !important;',
'}',
'',
'.vendor-name:disabled,',
'.shipment-no:disabled {',
'    color: black;',
'    background-color: #d9d9d9;',
'    opacity: unset;',
'}',
'',
'.p101-label-req {',
'    color: red;',
'}',
'',
'.t-Form-labelContainer {',
'    text-align: start;',
'}',
'',
'div.is-required  .t-Form-label:before { ',
'    content: none !important;',
'}',
'',
'.t-Form-labelContainer {',
'    display: flex;',
'    align-items: center;',
'}',
'',
'.t-Form-labelContainer label {',
'    align-content: center;',
'}',
'',
'#P101_CONTAINER_TYPE_NO2_CONTAINER .t-Form-labelContainer {',
'    justify-content: center;',
'}',
'',
'#basic-info .t-Region-body,',
'#vessel-info .t-Region-body,',
'#cost-info .t-Region-body {',
'    padding-top: 0;',
'    border: var(--ut-region-border-color,var(--ut-component-border-color));',
'    border-color: white;',
'    border-radius: 0.5rem;',
'    border-style: solid;',
'    border-width: var(--ut-region-border-width,var(--ut-component-border-width,1px));',
'}',
'',
'',
'#P101_VENDOR_NAME_CONTAINER .t-Form-inputContainer,',
'#P101_VENDOR_INV_NO_CONTAINER .t-Form-inputContainer {',
'    max-width: 63%;',
'}',
'',
'.t-Form-labelContainer:has(#P101_VENDOR_NAME_LABEL),',
'.t-Form-labelContainer:has(#P101_VENDOR_INV_NO_LABEL) {',
'    max-width: 27%;',
'}',
'',
'#P101_SHIPMENT_NO1_CONTAINER:after,',
'#P101_SHIPMENT_YR_CONTAINER:after {',
'    content: "\002D";',
'    align-self: center;',
'}',
'',
'.dates-label {',
'    width: 16.8%;',
'    padding-top: 0.5rem;',
'    padding-bottom: 0.5rem;',
'    display: flex;',
'    align-items: center;',
'}',
'',
'.dates-fields {',
'    width: 35%;',
'    display: flex;',
'}',
'',
'.dates-fields .t-Form-inputContainer {',
'    padding-left: 0;',
'    padding-right: 0;',
'    width: 30%;',
'}',
'',
'.dates-fields .dates-fields-separator {',
'    font-size: 1.125rem;',
'    align-self: center;',
'    width: 5%;',
'    display: flex;',
'    justify-content: center;',
'}',
'',
'#add-vendor-btn {',
'    font-size: 1.125rem;',
'    font-weight: 600;',
'} ',
'',
'.vendor-no {',
'    margin-block-start: 0.25rem;',
'    font-size: 1.125rem;',
'    font-weight: normal;',
'}',
'',
'.vendor-name label,',
'.vendor-ref-po label {',
'    padding-block-start: 0.25rem;',
'    padding-block-end: 0.25rem;',
'}',
'',
'.no-pad-start {',
'    padding-inline-start: 0;',
'}',
'',
'.ui-menu-item {',
'    font-size: 1.125rem;',
'    font-family: var(--ut-base-font-family,var(--a-base-font-family,sans-serif));',
'}',
'',
'/* font sizes for pop up LOV */',
'.a-IconList-item, .a-PopupLOV-search {',
'    font-size: 1.125rem !important;',
'}',
'',
'/* css for popup LOV type modal dialog */',
'.ui-dialog-popuplov .ui-dialog-titlebar {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ui-dialog-popuplov .ui-dialog-titlebar .ui-dialog-title {',
'    font-size: 1.125rem;',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'/* ',
'.a-PopupLOV-searchBar {',
'    background-color: #046BC8;',
'} */',
'',
'.a-PopupLOV-results .a-GV-header a,',
'.a-PopupLOV-results th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.a-PopupLOV-results table,',
'.a-PopupLOV-results tr,',
'.a-PopupLOV-results td,',
'.a-PopupLOV-results th {',
'    font-size: 1rem;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15061919372627930)
,p_plug_name=>'Basic Information'
,p_region_name=>'basic-info'
,p_region_css_classes=>'p101-section'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15062059775627931)
,p_plug_name=>'Vessel Information'
,p_region_name=>'vessel-info'
,p_region_css_classes=>'p101-section'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15062136902627932)
,p_plug_name=>'Cost Information'
,p_region_name=>'cost-info'
,p_region_css_classes=>'p101-section'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17923110332262908)
,p_plug_name=>'Basic Information'
,p_region_name=>'basic-info'
,p_region_css_classes=>'p101-section'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17924124089262918)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_button_name=>'ADD_VENDOR'
,p_button_static_id=>'add-vendor-btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'F8 - Add Another Vendor'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17926020669262937)
,p_branch_name=>'Redirect to shipment line items'
,p_branch_action=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:102:P102_SHIPMENT_ID,P102_LABEL:&P101_SHIPMENT_ID.,&P101_LABEL.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SUBMIT'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062270149627933)
,p_name=>'P101_SHIPMENT_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'PK for this shipment record'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062320146627934)
,p_name=>'P101_LABEL'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'Label identifying if current task is Add or Update'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062510938627936)
,p_name=>'P101_VENDOR_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Vendor Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UPPER(vendor_name) d, vendor_id r',
'  FROM nit006'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>8
,p_grid_label_column_span=>3
,p_grid_column_css_classes=>'p101-label-align'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    options.defaultGridOptions = {',
'        resizeColumns: false,',
'        columnSort: false,',
'        pagination : {',
'            scroll : true,',
'            loadMore : false',
'        }   ',
'    };',
'    return options;',
'}'))
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vendor_name d, vendor_id r',
'  FROM nit006'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062638859627937)
,p_name=>'P101_SHIPMENT_NO1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Shipment Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>9
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062701637627938)
,p_name=>'P101_SHIPMENT_NO2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Shipment Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_column=>12
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062801080627939)
,p_name=>'P101_REF_PO_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Reference PO Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15062906932627940)
,p_name=>'P101_VENDOR_INV_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Vendor Invoice No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063020499627941)
,p_name=>'P101_LETTER_OF_CREDIT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15061919372627930)
,p_prompt=>'Letter of Credit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063178565627942)
,p_name=>'P101_VESSEL_NAME_BL1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'Vessel Name <span style="color:red;"> * </span> and B/L No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_tag_css_classes=>'required'
,p_colspan=>9
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063226190627943)
,p_name=>'P101_VESSEL_NAME_BL2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'and'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063302434627944)
,p_name=>'P101_BARGE_BL1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'Barge and B/L No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_colspan=>9
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063461484627945)
,p_name=>'P101_BARGE_BL2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'and'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063544890627946)
,p_name=>'P101_CONTAINER_TYPE_NO1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'Container Type/No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063678772627947)
,p_name=>'P101_CONTAINER_TYPE_NO2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'and'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063792923627948)
,p_name=>'P101_ORIGIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'Origin'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063850869627949)
,p_name=>'P101_ETD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'ETD - ETA - ATA'
,p_placeholder=>'mm/dd/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'required'
,p_grid_row_css_classes=>'shipment-dates'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_grid_column_css_classes=>'etd'
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15063917851627950)
,p_name=>'P101_ETA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'ETA'
,p_placeholder=>'mm/dd/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'required'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_grid_column_css_classes=>'eta'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15653953307560901)
,p_name=>'P101_ATA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(15062059775627931)
,p_prompt=>'ATA'
,p_placeholder=>'mm/dd/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'required'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_grid_column_css_classes=>'ata'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654059894560902)
,p_name=>'P101_FREIGHT_COST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Freight Cost'
,p_format_mask=>'999999999999990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654182951560903)
,p_name=>'P101_INSURANCE_COST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Insurance Cost'
,p_format_mask=>'999999999999990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654203181560904)
,p_name=>'P101_HANDLING_COST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Handling Cost'
,p_format_mask=>'999999999999990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654322444560905)
,p_name=>'P101_DUTIES_AND_TAXES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Duties And Taxes'
,p_format_mask=>'999999999999990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654477271560906)
,p_name=>'P101_MISC_EXPENSES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Misc. Expenses'
,p_format_mask=>'999999999999990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15654506007560907)
,p_name=>'P101_VENDOR_CREDITS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15062136902627932)
,p_prompt=>'Vendor Credits'
,p_format_mask=>'999999999999990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15655721924560919)
,p_name=>'P101_SRURL'
,p_item_sequence=>80
,p_item_default=>'APEX_PAGE.GET_URL(p_page => 100)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'URL for when returning to main shipment screen'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923213153262909)
,p_name=>'P101_SHIPMENT_YR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_prompt=>'Shipment Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'shipment-no'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'center'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923304320262910)
,p_name=>'P101_SHIPMENT_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_tag_css_classes=>'u-textCenter shipment-no'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923511280262912)
,p_name=>'P101_VENDOR1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_item_default=>'Vendor 1'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'vendor-no'
,p_grid_row_css_classes=>'vendors-input'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923620518262913)
,p_name=>'P101_VENDOR_NAME1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_prompt=>'Vendor Name <span class="p101-label-req">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'required vendor-name'
,p_tag_attributes=>'vendor-seq="1"'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'no-pad-start'
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923768847262914)
,p_name=>'P101_VENDOR_REF_PO1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_prompt=>'Reference PO Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125 vendor-ref-po'
,p_tag_attributes=>'vendor-seq="1"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17923832489262915)
,p_name=>'P101_VENDOR_INV_NO1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_prompt=>'Vendor Invoice Number <span class="p101-label-req">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'fs-1125 required vendor-inv-no'
,p_tag_attributes=>'vendor-seq="1"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4383087695084279)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17924721311262924)
,p_name=>'P101_VENDOR_ID1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17924888983262925)
,p_name=>'P101_VENDOR_REF_PO_ID1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17925637624262933)
,p_name=>'P101_SVP1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17923110332262908)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(15062405570627935)
,p_computation_sequence=>10
,p_computation_item=>'P101_LABEL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'CASE WHEN :P101_SHIPMENT_ID IS NULL THEN ''Add'' ELSE ''Update'' END'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17924398200262920)
,p_name=>'On vendor name change'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'$(".vendor-name input")'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17924429912262921)
,p_event_id=>wwv_flow_imp.id(17924398200262920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("changed");',
'console.log(this.triggeringElement);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17924506095262922)
,p_name=>'Add Vendor row'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17924124089262918)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17924694057262923)
,p_event_id=>wwv_flow_imp.id(17924506095262922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'addNewVendor();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17925464103262931)
,p_name=>'Load Vendors for update'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17925511088262932)
,p_event_id=>wwv_flow_imp.id(17925464103262931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P101_SHIPMENT_ID") !== "") {',
'    getVendors();',
'} else {',
'    $("#P101_VENDOR_NAME1").focus();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27344632004391832)
,p_name=>'On enter press'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_VENDOR_CREDITS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "enter"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27344770395391833)
,p_event_id=>wwv_flow_imp.id(27344632004391832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (validateFields()) {',
'    submitForm();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17922705977262904)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_shipment_no           number;',
'begin',
'    if :P101_SHIPMENT_ID is not null then',
'        select substr(shipment_number, 0, 4), substr(shipment_number, 6, 3),',
'               vessel_name, vessel_bl_no, barge, barge_bl_no, ',
'               container_type, container_no, origin,',
'               TO_CHAR(eta, ''MM/DD/YYYY''), ',
'               TO_CHAR(etd, ''MM/DD/YYYY''),',
'               TO_CHAR(ata, ''MM/DD/YYYY'')',
'          into :P101_SHIPMENT_YR, :P101_SHIPMENT_NO,',
'               :P101_VESSEL_NAME_BL1, :P101_VESSEL_NAME_BL2, :P101_BARGE_BL1, :P101_BARGE_BL2,',
'               :P101_CONTAINER_TYPE_NO1, :P101_CONTAINER_TYPE_NO2, :P101_ORIGIN,',
'               :P101_ETA,',
'               :P101_ETD,',
'               :P101_ATA',
'          from nit016',
'         where shipment_id = :P101_SHIPMENT_ID;',
'',
'        select freight_cost, insurance_cost, handling_cost,',
'               duties_and_taxes, misc_expenses, vendor_credits',
'          into :P101_FREIGHT_COST, :P101_INSURANCE_COST, :P101_HANDLING_COST,',
'               :P101_DUTIES_AND_TAXES, :P101_MISC_EXPENSES, :P101_VENDOR_CREDITS',
'          from nit017',
'         where shipment_id = :P101_SHIPMENT_ID; ',
'    else',
'        :P101_SHIPMENT_YR := EXTRACT(YEAR FROM SYSDATE);',
'',
'        select nvl(max(to_number(substr(shipment_number, 6, 3))), 0) + 1',
'          into v_shipment_no',
'          from nit016',
'         where to_number(substr(shipment_number, 0, 4)) = extract(year from sysdate);',
'',
'        :P101_SHIPMENT_NO := LPAD(v_shipment_no, 3, ''0'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17922705977262904
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17925748590262934)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset Selected PO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (',
'    p_collection_name => ''VENDOR_POS''',
');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17925748590262934
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17924982206262926)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SEARCH_VENDORS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_term          varchar2(300) := apex_application.g_x01;',
'begin',
'    OPEN l_cursor FOR ',
'        SELECT DISTINCT a.vendor_id "realValue", b.vendor_name "label", b.vendor_name "value"',
'          FROM nit012 a,',
'               nit006 b',
'         WHERE a.vendor_id = b.vendor_id',
'           AND UPPER(b.vendor_name) like UPPER(''%'' || v_term || ''%'')',
'         ORDER BY b.vendor_name ASC;',
'',
'    APEX_JSON.write(l_cursor);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17924982206262926
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27346142211391847)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SEARCH_REF_POS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_term          varchar2(300) := apex_application.g_x01;',
'    v_vendor_id     nit012.vendor_id%TYPE := TO_NUMBER(apex_application.g_x02);',
'begin',
'    OPEN l_cursor FOR ',
'        SELECT a.po_id "realValue", a.po_id "label", a.po_id "value", a.etd_date etd, a.eta_date eta ',
'          FROM nit012 a               ',
'         WHERE UPPER(a.po_id) like UPPER(''%'' || v_term || ''%'')',
'           AND a.is_posted = ''N''',
'           AND a.vendor_id = v_vendor_id',
'         ORDER BY a.po_id ASC;',
'',
'    APEX_JSON.write(l_cursor);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27346142211391847
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17925339905262930)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_SELECTED_VENDOR_POS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_json_clob     clob := apex_application.g_clob_01;',
'    l_json          json_object_t;',
'    lt_vendors      json_array_t;',
'    l_vendor        number;',
'begin',
'    l_json := json_object_t.parse(l_json_clob);',
'    lt_vendors := l_json.get_Array(''vendorPos'');',
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (',
'        p_collection_name => ''VENDOR_POS''',
'    );',
'',
'    for idx in 0 .. lt_vendors.get_size - 1',
'    loop',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''VENDOR_POS'',',
'            p_c001 => lt_vendors.get_number(idx), -- get PO num',
'            p_n001 => lt_vendors.get_number(idx)  -- get vendor id',
'        );',
'    end loop;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17925339905262930
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32275762513470405)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_PO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_po_id         nit015.po_id%TYPE := apex_application.g_x01;',
'    v_vendor_id     nit015.vendor_id%TYPE := apex_application.g_x02;',
'    v_valid         varchar2(1) := ''N'';',
'begin',
'    SELECT CASE WHEN EXISTS (SELECT null',
'                               FROM nit012 a',
'                              WHERE a.is_posted = ''N''',
'                                AND a.vendor_id = v_vendor_id',
'                                AND a.po_id = v_po_id)',
'                THEN ''Y''',
'                ELSE ''N''',
'                END',
'      INTO v_valid',
'      FROM dual;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''isValid'', v_valid);',
'    apex_json.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32275762513470405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32275859577470406)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_VENDOR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_vendor_id     nit015.vendor_id%TYPE := apex_application.g_x01;',
'    v_valid         varchar2(1) := ''N'';',
'begin',
'    SELECT CASE WHEN EXISTS (SELECT null',
'                               FROM nit012 a,',
'                                    nit006 b',
'                              WHERE a.vendor_id = b.vendor_id',
'                                AND a.vendor_id = v_vendor_id)',
'                THEN ''Y''',
'                ELSE ''N''',
'                END',
'      INTO v_valid',
'      FROM dual;',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''isValid'', v_valid);',
'    apex_json.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32275859577470406
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27346051282391846)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_SHIPMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    s_json_clob             clob;',
'    v_shipment_id           nit016.shipment_id%TYPE;',
'    v_url                   varchar2(200);',
'begin',
'    --Get the clob passed in from the Ajax process',
'    s_json_clob := apex_application.g_clob_01;',
'    v_shipment_id := shipment_records_pkg.save_shipment(s_json_clob);',
'',
'    v_url := apex_page.get_url(',
'        p_page   => 102,',
'        p_items  => ''P102_SHIPMENT_ID,P102_LABEL'',',
'        p_values => v_shipment_id || '','' || :P101_LABEL',
'    );',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.write(''id'', v_shipment_id);',
'    apex_json.write(''u'', v_url);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27346051282391846
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31307207161578704)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_VENDORS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_shipment_id   nit016.shipment_id%TYPE;',
'begin',
'    v_shipment_id := TO_NUMBER(apex_application.g_x01);',
'',
'    OPEN l_cursor FOR ',
'        SELECT svp_id "svp", vendor_id "vendorId", vendor_name "vendorName", ',
'               vendor_sequence "vendorSeq", po_id "vendorRefPo", invoices "invoices"',
'          FROM TABLE (shipment_records_pkg.get_shipment_vendor_basic_info(p_shipment_id => v_shipment_id));',
'',
'    APEX_JSON.write(l_cursor);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>31307207161578704
,p_process_comment=>'for loading vendors for update'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32277844218470426)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_VENDORS2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_shipment_id   nit016.shipment_id%TYPE;',
'begin',
'    v_shipment_id := TO_NUMBER(apex_application.g_x01);',
'',
'    OPEN l_cursor FOR ',
'        select a.svp_id "svp", a.vendor_id "vendorId", b.vendor_name "vendorName", ',
'               a.vendor_sequence "vendorSeq", a.po_id "vendorRefPo",',
'               cursor(select x.svp_id "svp", x.invoice_id "invoiceId", y.document_number "docNo", ''U'' status',
'                        from nit035 x,',
'                             nit036 y',
'                       where x.invoice_id = y.invoice_id',
'                         and x.svp_id = a.svp_id) "invoices"',
'          from nit015 a,',
'               nit006 b',
'         where a.vendor_id = b.vendor_id',
'           and a.shipment_id = v_shipment_id',
'         order by a.vendor_sequence ASC;',
'',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''svp'', l_cursor);',
'    APEX_JSON.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>32277844218470426
,p_process_comment=>'for loading vendors for update'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32277937457470427)
,p_process_sequence=>90
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_VENDORS3'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor        sys_refcursor;',
'    v_shipment_id   nit016.shipment_id%TYPE;',
'    l_json          clob;',
'begin',
'    v_shipment_id := TO_NUMBER(apex_application.g_x01);',
'',
'    select json_arrayagg(json_object (',
'                KEY ''svp'' VALUE a.svp_id,',
'                KEY ''vendorId'' VALUE a.vendor_id,',
'                KEY ''vendorName'' VALUE b.vendor_name,',
'                KEY ''vendorSeq'' VALUE a.vendor_sequence,',
'                KEY ''vendorRefPo'' VALUE a.po_id,',
'                KEY ''invoices'' VALUE (',
'                    select json_arrayagg(json_object(',
'                                KEY ''svp'' VALUE x.svp_id,',
'                                KEY ''invoiceId'' VALUE x.invoice_id,',
'                                KEY ''docNo'' VALUE y.document_number,',
'                                KEY ''status'' VALUE ''U''',
'                           ))',
'                      from nit035 x,',
'                           nit036 y',
'                     where x.invoice_id = y.invoice_id',
'                       and x.svp_id = a.svp_id',
'                )',
'           ))',
'      into l_json',
'      from nit015 a,',
'           nit006 b',
'     where a.vendor_id = b.vendor_id',
'       and a.shipment_id = v_shipment_id',
'     order by a.vendor_sequence ASC;',
'',
'    APEX_JSON.open_object;',
'    APEX_JSON.write(''svp'', l_json);',
'    APEX_JSON.close_object;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>32277937457470427
,p_process_comment=>'for loading vendors for update'
);
wwv_flow_imp.component_end;
end;
/
