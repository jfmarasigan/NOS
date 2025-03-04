prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_name=>'Collection & Outstanding Creation'
,p_alias=>'COLLECTION-OUTSTANDING-CREATION'
,p_step_title=>'Collection & Outstanding Creation'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function validateForm() {',
'    var collectionType = $v("P77_COLLECTION_TYPE");',
'    var datePaid = $v("P77_DATE_PAID");',
'    var amountPaid = $v("P77_AMOUNT_PAID");',
'    var checkNo = $v("P77_CHECK_NO");',
'    var dbaId = $v("P77_DBA_ID");',
'    var checkDate = $v("P77_CHECK_DATE");',
'    var orNo = $v("P77_OR_NO");',
'    var currentDate = new Date()',
'    var datePaidParsed = parseDate(datePaid);',
'    function showError(item, errorMessage) {',
'        apex.message.showErrors([{type: "error",location: ["inline"],pageItem: item,message: errorMessage,unsafe: false}]);',
'        hasErrors = true;',
'    }',
'    function isValidNumber(orNo) {',
'        pattern = /^\d+$/;',
'        return pattern.test(orNo);',
'    }',
'    function isValidAmount(amount) {',
'        var numberPattern = /^(\d{1,3})(,\d{3})*(\.\d{1,2})?$/;',
'',
'        var cleanAmount = amount.replace(/,/g, "");',
'        var parsedAmount = parseFloat(cleanAmount);',
'',
'        return numberPattern.test(amount) && parsedAmount <= 9999999.99;',
'    }',
'    apex.message.clearErrors();',
'    var hasErrors = false;',
'',
'    if(checkNo.match(/^(ACH|CASH|OFFSET|WRITEOFF|CMEMO#)/i)) {',
'        checkNo = checkNo.toUpperCase();',
'        $s("P77_CHECK_NO", checkNo)',
'    }',
'    if (collectionType == "") {showError("P77_COLLECTION_TYPE", "Collection Type cannot be empty");}',
'    if (datePaid == "") {showError("P77_DATE_PAID", "Date Paid cannot be empty");}',
'    else if (!isDateValid(datePaid)) {showError("P77_DATE_PAID", "Please enter a valid date");}',
'    else if (datePaidParsed > currentDate) {showError("P77_DATE_PAID", "Date Paid cannot be greater than the current date");}',
'    if (amountPaid == "") {showError("P77_AMOUNT_PAID", "Amount Paid cannot be empty");}',
'    else if (amountPaid.replace(/,/g, '''').length > 10) {showError("P77_AMOUNT_PAID", "Amount Paid cannot exceed 9 digits");}',
'    else if (!isValidAmount(amountPaid)) {showError("P77_AMOUNT_PAID", "Amount Paid must be a number");}',
'    if (checkNo == "") {',
'        showError("P77_CHECK_NO", "Check No cannot be empty");',
'        toggleRequired(false);',
'    } else if (checkNo !== "ACH" && checkNo !== "CASH" && checkNo !== "OFFSET" && checkNo !== "WRITEOFF" && !getBankCode(checkNo) && !validateCMEMO(checkNo)) {',
'        showError("P77_CHECK_NO", "Check No must follow the allowed values");',
'        toggleRequired(false);',
'    } else if (getBankCode(checkNo)) {',
'        let bankCode = extractBankCode(checkNo);',
'        try {await doesBankExist(bankCode);toggleRequired(true);',
'        }',
'        catch (error) {toggleRequired(false);',
'        showError("P77_CHECK_NO", error);}',
'    } else if (validateCMEMO(checkNo)) {',
'        let cMemoId = extractCMEMOId(checkNo);',
'        try {await validatateCMemoId(cMemoId, dbaId, amountPaid);toggleRequired(false);',
'        }',
'        catch (error) {showError(error === "Invalid Amount" ? "P77_AMOUNT_PAID" : "P77_CHECK_NO", error);toggleRequired(false);',
'        }',
'    } else {',
'        toggleRequired(false);',
'    }',
'    const checkDateLabel = document.querySelector("#P77_CHECK_DATE_CONTAINER span div div:nth-child(1)");',
'    const isCheckDateRequired = checkDateLabel.classList.contains("required");',
'    if(isCheckDateRequired && !checkDate) {',
'        if(isCheckDateRequired) {',
'            showError("P77_CHECK_DATE", "Check Date is required");',
'        }',
'    } else if (checkDate && !isDateValid(checkDate)) {',
'        if(isCheckDateRequired) {',
'            showError("P77_CHECK_DATE", "Please enter a valid date");',
'        }',
'    }',
'    if(orNo && !isValidNumber(orNo)) {',
'        showError("P77_OR_NO", "OR No must only contain numbers");',
'    } else if(orNo && orNo.length > 12) {',
'        showError("P77_OR_NO", "OR No cannot exceed 12 characters");',
'    }',
'    return hasErrors;',
'}',
'',
'function isDateValid(dateString) {',
'    var datePattern = /^(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}$/;',
'    if (!dateString.match(datePattern)) {',
'        return false;',
'    }',
'    var parts = dateString.split("/");',
'    var month = parseInt(parts[0], 10);',
'    var day = parseInt(parts[1], 10);',
'    var year = parseInt(parts[2], 10);',
'    var date = new Date(year, month - 1, day);',
'    return (',
'        date.getFullYear() === year &&',
'        date.getMonth() === (month - 1) &&',
'        date.getDate() === day',
'    );',
'}',
'',
'function parseDate(dateString) {',
'    var parts = dateString.split("/");',
'    return new Date(parts[2], parts[0] - 1, parts[1]);',
'}',
'',
'function getBankCode(check) {',
'    // const regex = /^([A-Z]{1,5})#\d{7}$/i;',
'    const regex = /^(?!CMEMO#)[A-Z]{1,5}#\d{1,7}$/i;',
'    return regex.test(check);',
'}',
'',
'function extractBankCode(check) {',
'    const regex = /^([A-Z]{1,5})#/i;',
'    const match = regex.exec(check);',
'    return match ? match[1] : null;',
'}',
'',
'function validateCMEMO(cMemo) {',
'    const regex = /^CMEMO#\d{1,9}$/;',
'    return regex.test(cMemo);',
'}',
'',
'function extractCMEMOId(cMemo) {',
'    const regex = /^CMEMO#0*(\d{1,9})$/;',
'    const match = regex.exec(cMemo);',
'    return match ? match[1] : null;',
'}',
'',
'async function doesBankExist(checkNo) {',
'    const response = await apex.server.process(''CHECK_BANK_EXISTS'', {',
'        x01: checkNo',
'    }, {',
'        dataType: ''json''',
'    });',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw ''Bank does not exist.'';',
'    }',
'}',
'',
'async function validatateCMemoId(checkNo, dbaId, amountPaid) {',
'    const response = await apex.server.process(''VALIDATE_CMEMO'', {',
'        x01: checkNo,',
'        x02: dbaId,',
'        x03: amountPaid ? amountPaid : 0',
'    }, {',
'        dataType: ''json''',
'    });',
'    if (response.success) {',
'        return true;',
'    } else {',
'        throw response.errorMessage;',
'    }',
'}',
'',
'function toggleRequired(isRequired) {',
'    const dateFieldLabel = document.querySelector("#P77_CHECK_DATE_CONTAINER span div div:nth-child(1)");',
'    const dateFieldLabel2 = document.querySelector("#P77_CHECK_DATE_CONTAINER span div:nth-child(1)");',
'    const dateField = document.querySelector("#P77_CHECK_DATE")',
'',
'    if(isRequired) {',
'        dateFieldLabel.classList.add("required");',
'        dateField.setAttribute("aria-required", "true");',
'        // dateField.removeAttribute("disabled");',
'        dateFieldLabel2.style.marginRight = "2.1rem";',
'    } else {',
'        dateFieldLabel.classList.remove("required");',
'        dateField.setAttribute("aria-required", "false");',
'        // dateField.setAttribute("disabled", true);',
'        dateFieldLabel2.style.marginRight = "2.6rem";',
'        apex.item("P77_CHECK_DATE").setValue(null);',
'    }',
'}',
'',
'function isTagged() {',
'    var gridTable = $v("P77_FROM") === "A" ? "outstandingGrid" : "outstandingGridU";',
'    var model = apex.region(gridTable).widget().interactiveGrid("getViews", "grid").model;',
'    var tagKey = model.getFieldKey("TAG");',
'    var isTagged = false;',
'',
'    model.forEach(function(row) {',
'        var tag = row[tagKey];',
'        if (tag === "Y") {',
'            isTagged = true;',
'        }',
'    });',
'',
'    return isTagged;',
'}',
'',
'function highlightValue() {',
'    const inputFieldIds = ["P77_DATE_PAID", "P77_AMOUNT_PAID", "P77_CHECK_NO", "P77_CHECK_DATE", "P77_OR_NO"];',
'',
'    inputFieldIds.forEach((fieldId) => {',
'        $(`#${fieldId}`).on("focus", function() {',
'            $(this).select();',
'        });',
'    })',
'}',
'',
'function formatAmount(value) {',
'    value = value.replace(/[^0-9.]/g, "");',
'    let parts = value.split(".");',
'    let integerPart = parts[0];',
'    let decimalPart = parts[1] ? `.${parts[1]}` : [];',
'',
'    integerPart = integerPart.replace(/\B(?=(\d{3})+(?!\d))/g, ",");',
'',
'    return integerPart + decimalPart;',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fromValue = $v("P77_FROM");',
'setTitle(`${fromValue === "A" ? "Collections Entry Creation" : "Collections Entry Update"}`);',
'highlightValue();',
'apex.actions.shortcutSupport("off");',
'$("#submit").html(fromValue === "A" ? "<u>F8</u> - Create Collection" : "<u>F8</u> - Update Collection")',
'',
'const dateFields = [''P77_DATE_PAID'', ''P77_CHECK_DATE''];',
'',
'dateFields.forEach((fieldId) => {',
'  const dateField = document.getElementById(fieldId);',
'',
'  dateField.addEventListener(''input'', function () {',
'    let value = dateField.value.replace(/\D/g, '''');',
'',
'    if (value.length > 2) {',
'      value = value.substring(0, 2) + ''/'' + value.substring(2);',
'    }',
'    if (value.length > 5) {',
'      value = value.substring(0, 5) + ''/'' + value.substring(5, 9);',
'    }',
'',
'    if (value.length > 10) {',
'      value = value.substring(0, 10);',
'    }',
'',
'    dateField.value = value;',
'  });',
'});',
'',
'$(document).ready(function() {',
'    $(''#P77_COLLECTION_TYPE, #P77_DATE_PAID, #P77_AMOUNT_PAID, #P77_CHECK_NO, #P77_CHECK_DATE, #P77_OR_NO'').on(''keydown'', function(event) {',
'        if(event.key === ''Enter'' || event.keyCode === 13) {',
'            $.event.trigger("validateFields");',
'            event.preventDefault();',
'        }',
'    });',
'',
'    $(document).on(''keydown'', function(event) {',
'        if(event.key === ''F6'') {',
'            $("#nav").trigger("click");',
'            event.preventDefault();',
'        }',
'    });',
'    ',
'    $(document).on(''keydown'', function(event) {',
'        if(event.key === ''S'' || event.key === ''s'') {',
'            const focusedElement = document.activeElement;',
'            const focusedClass = focusedElement.className;',
'',
'            const excludedIds = ["P77_CHECK_NO", "P77_COLLECTION_TYPE", "P77_DATE_PAID", "P77_AMOUNT_PAID", "P77_CHECK_DATE", "P77_OR_NO", "P77_SEARCH_VALUE"];',
'',
'            const isExcluded = excludedIds.includes(focusedElement.id) || focusedClass.includes("a-PopupLOV-search")',
'            ',
'            if (isExcluded) {',
'                return;',
'            } else {',
'                $("#s").trigger("click");',
'                event.preventDefault();',
'            }',
'            console.log(focusedElement.id)',
'        }',
'    });',
'',
'    $(document).on(''keydown'', function(event) {',
'        if(event.key === ''Escape'' || event.keyCode === 27) {',
'            if(!$("#search").is(":visible")) {',
'                $("#exit").trigger("click");',
'                event.preventDefault();',
'            }',
'        }',
'    });',
'',
'    $(document).on(''keydown'', function(event) {',
'        if(event.key === ''F8'') {',
'            $("#submit").trigger("click");',
'            event.preventDefault();',
'        }',
'    });',
'});',
'',
'var grid;',
'',
'if($v("P77_FROM") === ''A'') {',
'    grid = apex.region("outstandingGrid").widget().interactiveGrid("getViews", "grid");',
'} else if($v("P77_FROM") === ''U'') {',
'    grid = apex.region("outstandingGridU").widget().interactiveGrid("getViews", "grid");',
'}',
'',
'// var amountPaidArray = [];',
'',
'// grid.view$.on("change", "input[type=checkbox]", function (event) {',
'//     var model = grid.model;',
'//     var originalFunds = parseFloat($v("P77_ORIGINAL_FUNDS").replace(/,/g, "")) || 0;',
'//     var availableFunds = originalFunds;',
'',
'//     amountPaidArray = [];',
'',
'//     model.forEach(function (row) {',
'//         var tagKey = model.getFieldKey("TAG");',
'//         var amountKey = model.getFieldKey("AMOUNT");',
'//         var rowAmount = parseFloat(row[amountKey].replace(/,/g, "")) || 0;',
'//         var tag = row[tagKey];',
'',
'//         var isChecked = tag === "Y";',
'',
'//         console.log("isChecked", isChecked)',
'',
'//         if (isChecked) {',
'//             if (rowAmount <= availableFunds) {',
'//                 amountPaidArray.push(rowAmount);',
'//                 availableFunds -= rowAmount;',
'//             } else {',
'//                 amountPaidArray.push(availableFunds);',
'//                 availableFunds = 0;',
'//             }',
'//         }',
'//     });',
'',
'//     var totalTagged = amountPaidArray.reduce((sum, value) => sum + value, 0);',
'',
'//     console.log("totalTagged", totalTagged)',
'',
'//     $s("P77_TOTAL_TAGGED", totalTagged.toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 }));',
'//     $s("P77_AVAILABLE_FUNDS", availableFunds.toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 }));',
'// });',
'',
'var amountPaidArray = [];',
'',
'grid.view$.on("change", "input[type=checkbox]", function (event) {',
'    var model = grid.model;',
'    var $checkbox = $(event.target);',
'    var rowId = $checkbox.closest("tr").data("id");',
'    var row = model.getRecord(rowId);',
'',
'    if (!row) return;',
'',
'    var tagKey = model.getFieldKey("TAG");',
'    var amountKey = model.getFieldKey("AMOUNT");',
'',
'    var originalFunds = parseFloat($v("P77_ORIGINAL_FUNDS").replace(/,/g, "")) || 0;',
'    var availableFunds = originalFunds;',
'',
'    row[tagKey] = $checkbox.prop("checked") ? "Y" : "N";',
'    model.setValue(rowId, tagKey, row[tagKey]);',
'',
'    amountPaidArray = [];',
'',
'    model.forEach(function (r) {',
'        var isChecked = r[tagKey] === "Y";',
'        var rowAmount = parseFloat(r[amountKey].replace(/,/g, "")) || 0;',
'',
'        if (isChecked) {',
'            if (rowAmount <= availableFunds) {',
'                amountPaidArray.push(rowAmount);',
'                availableFunds -= rowAmount;',
'            } else {',
'                amountPaidArray.push(availableFunds);',
'                availableFunds = 0;',
'            }',
'        }',
'    });',
'',
'    var totalTagged = amountPaidArray.reduce((sum, value) => sum + value, 0);',
'',
'    $s("P77_TOTAL_TAGGED", totalTagged.toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 }));',
'    $s("P77_AVAILABLE_FUNDS", availableFunds.toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 }));',
'});',
'',
'',
'// grid.view$.on("change", "input[type=checkbox]", function(event) {',
'//     var checkbox = $(this);',
'//     var recordId = checkbox.closest("tr").data("id");',
'//     var isChecked = checkbox.prop("checked");',
'//     var model = grid.model;',
'//     var row = model.getRecord(recordId);',
'//     var rowAmount = parseFloat(model.getValue(row, "AMOUNT")) || 0;',
'',
'//     var availableFunds = parseFloat($v("P77_AVAILABLE_FUNDS").replace(/,/g, "")) || 0;',
'//     var totalTagged = parseFloat($v("P77_TOTAL_TAGGED").replace(/,/g, "")) || 0;',
'//     var originalFunds = parseFloat($v("P77_ORIGINAL_FUNDS").replace(/,/g, "")) || 0;',
'',
'//     if (isChecked) {',
'//         totalTagged += rowAmount;',
'//     } else {',
'//         totalTagged -= rowAmount;',
'//     }',
'',
'//     availableFunds = originalFunds - totalTagged;',
'',
'//     $s("P77_TOTAL_TAGGED", totalTagged.toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 }));',
'//     $s("P77_AVAILABLE_FUNDS", availableFunds.toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 }));',
'// });',
'',
'$(document).ready(function() { ',
'',
'    var ig$',
'    if($v("P77_FROM") === ''A'') {',
'        ig$ = apex.region("outstandingGrid").widget().interactiveGrid("getViews", "grid").view$;',
'    } else if ($v("P77_FROM") === ''U'') {',
'        ig$ = apex.region("outstandingGridU").widget().interactiveGrid("getViews", "grid").view$;',
'    }',
'    ',
'',
'    ig$.on("keydown", ".a-GV-cell input", function(event) {',
'        var $cell = $(event.target).closest(".a-GV-cell");',
'        var cellIndex = $cell.index();',
'        var grid;',
'        if($v("P77_FROM") === ''A'') {',
'            grid = apex.region("outstandingGrid").widget().interactiveGrid("getViews", "grid");',
'        } else if ($v("P77_FROM") === ''U'') {',
'            grid = apex.region("outstandingGridU").widget().interactiveGrid("getViews", "grid");',
'        }',
'        var model = grid.model;',
'        var activeRecordId = grid.getSelectedRecords()[0];',
'        var lastRecordId = model.getTotalRecords();',
'        var currentIndex = null;',
'',
'        for (let index = 0; index < lastRecordId; index++) {',
'            let record = model.recordAt(index);',
'            if (model.getRecordId(record) === model.getRecordId(activeRecordId)) {',
'                currentIndex = index;',
'                break;',
'            }',
'        }',
'',
'        if (cellIndex === 0) {',
'            switch (event.keyCode) {',
'                case 38:',
'                    if (currentIndex > 0) {',
'                        event.preventDefault();',
'                        let prevRecord = model.recordAt(currentIndex - 1);',
'                        grid.setSelectedRecords([prevRecord]);',
'                        grid.focus();',
'                    }',
'                    break;',
'',
'                case 40:',
'                    if (currentIndex < lastRecordId - 1) {',
'                        event.preventDefault();',
'                        let nextRecord = model.recordAt(currentIndex + 1);',
'                        grid.setSelectedRecords([nextRecord]);',
'                        grid.focus();',
'                    }',
'                    break;',
'',
'                case 13:',
'                    event.preventDefault();',
'                    event.stopPropagation();',
'                    let record = model.recordAt(currentIndex);',
'                    let currentValue = model.getValue(record, "TAG");',
'                    if (currentValue === "N") {',
'                        model.setValue(record, "TAG", "Y");',
'                    } else if (currentValue === "Y") {',
'                        model.setValue(record, "TAG", "N");',
'                    }',
'                    break;',
'',
'                case 9:',
'                    event.preventDefault();',
'                    break;',
'',
'                case 32:',
'                    event.preventDefault();',
'                    break;',
'',
'                default:',
'                    break;',
'            }',
'        }',
'    });',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* .a-GV-table tr.is-selected .a-GV-cell {',
'     background-color: #e6f0fa;',
'} */',
'',
'.a-GV-table tr.is-selected .a-GV-cell {',
'     background-color: #F5DC1C;',
'}',
'',
'.a-GV-table .a-GV-cell.is-focused {',
'     box-shadow: 0 0 0 1px black inset !important;',
'}',
'',
'.apex-item-text, .apex-item-text.apex-item-popup-lov {',
'    background-color: white;',
'}',
'',
'.disabled {',
'    color: #808080 !important;',
'    pointer-events: none;',
'}',
'',
'.ui-dialog:has(#search-header) {',
'    background-color: #056AC8;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'#search {',
'    border-radius: 12px;',
'}',
'',
'#search.t-DialogRegion {',
'    min-height: 120px !important;',
'    background-color: white;',
'    border-radius: 12px;',
'}',
'',
'#search label {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Region#search-header {',
'    background-color: #046BC8;',
'}',
'',
'.mr-1 {',
'    margin-right: 1rem;',
'}',
'',
'.t-Body {',
'    width: 93%;',
'    margin-left: auto;',
'    margin-right: auto;',
'}',
'',
'#readonly-form label,',
'#readonly-form span:not(.t-Form-error),',
'#P77_AVAILABLE_FUNDS_CONTAINER span,',
'#P77_TOTAL_TAGGED_CONTAINER span {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.t-Form-error {',
'    color: #FFD700 !important;',
'    margin-left: 8.5rem;',
'    font-weight: 700;',
'}',
'',
'#P77_COLLECTION_TYPE_lov_btn span {',
'    color: black !important;',
'}',
'',
'#readonly-form .t-Form-inputContainer {',
'    padding-block-end: var(--ut-field-padding-y, 0) !important;',
'}',
'',
'.required::after {',
'    content: "*";',
'    color: red;',
'}',
'',
'#P77_AVAILABLE_FUNDS_DISPLAY,',
'#P77_TOTAL_TAGGED_DISPLAY {',
'    text-align: right;',
'    width: 8rem;',
'}',
'',
'.border {',
'    margin-top: 5rem;',
'    border-left: 2px solid white;',
'}',
'',
'.border.col-1 {',
'    max-width: 3% !important;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    text-align: left;',
'}',
'',
'#outstandingGrid .a-GV-header a, #outstandingGrid th.a-GV-header,',
'#outstandingGridU .a-GV-header a, #outstandingGridU th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'    pointer-events: none;',
'}',
'',
'.a-IG,',
'.a-GV-table .a-GV-cell, th.a-GV-header{',
'    border-color: 	black !important;',
'}',
'',
'#outstandingGrid table, #outstandingGridU table,',
'#outstandingGrid tr, #outstandingGridU tr,',
'#outstandingGrid th, #outstandingGridU th {',
'    font-size: 1rem;',
'}',
'',
'#outstandingGrid td,',
'#outstandingGridU td {',
'    font-size: 1.125rem;',
'}',
'',
'#outstandingGrid .a-GV-table,',
'#outstandingGridU .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.button {',
'    position: fixed;',
'    bottom: 0;',
'    margin-bottom: 4rem;',
'}',
'',
'#outstandingGrid .a-GV-table,',
'#outstandingGridU .a-GV-table {',
'    width: 100%;',
'}',
'',
'#outstandingGrid .a-GV-table colgroup col:nth-child(1),',
'#outstandingGridU .a-GV-table colgroup col:nth-child(1) {',
'    width: 3rem;',
'}',
'',
'#outstandingGrid .a-GV-table colgroup col:nth-child(2),',
'#outstandingGridU .a-GV-table colgroup col:nth-child(2) {',
'    width: 7rem;',
'}',
'',
'#outstandingGrid .a-GV-table colgroup col:nth-child(3),',
'#outstandingGrid .a-GV-table colgroup col:nth-child(4),',
'#outstandingGridU .a-GV-table colgroup col:nth-child(3),',
'#outstandingGridU .a-GV-table colgroup col:nth-child(4) {',
'    width: 8rem;',
'}',
'',
'#outstandingGrid .a-GV-table colgroup col:nth-child(5),',
'#outstandingGridU .a-GV-table colgroup col:nth-child(5) {',
'    width: 0',
'}',
'',
'#outstandingGrid .a-GV-table colgroup col:nth-child(6),',
'#outstandingGridU .a-GV-table colgroup col:nth-child(6) {',
'    width: 4rem',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'#esc, #enter {',
'    display: none;',
'}',
'',
'#readonly-form {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.outstanding-header {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'#header-wrapper {',
'    background-color: rgb(30, 58, 138);;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24859739172616231)
,p_plug_name=>'Left Form'
,p_region_name=>'readonly-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>80
,p_plug_grid_column_span=>5
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24860355480616237)
,p_plug_name=>'Right Form'
,p_region_name=>'collection-form'
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24861442374616248)
,p_plug_name=>'Outstanding Invoice Header'
,p_region_name=>'header-wrapper'
,p_parent_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>'<div role="region" id="header-wrapper"><h3 class="outstanding-header">Outstanding Invoice</h3></div>'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P77_FROM'
,p_plug_display_when_cond2=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24861559994616249)
,p_plug_name=>'Outstanding Invoice Grid'
,p_region_name=>'outstandingGrid'
,p_parent_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- WITH grid AS (',
'--     SELECT',
'--         ''N'' AS "TAG",',
'--         npt001.invoice_id AS INVOICE_NUMBER,',
'--         TO_CHAR(npt001.date_created, ''MM/DD/YYYY'') AS INVOICE_DATE,',
'--         npt001.outstanding_balance AS AMOUNT,',
'--         NULL AS IS_CHANGED',
'--     FROM ',
'--         NPT001 npt001',
'--     WHERE',
'--         npt001.customer_id = :P77_DBA_ID',
'--         AND npt001.outstanding_balance IS NOT NULL ',
'--         AND npt001.outstanding_balance != 0',
'--     ORDER BY',
'--         npt001.invoice_id',
'-- )',
'-- SELECT * FROM grid',
'',
'WITH customers (customer_id, customer_code, account_type_id) AS (',
'    SELECT customer_id, customer_code, account_type_id',
'    FROM NPT009',
'    WHERE customer_id = :P77_DBA_ID',
'',
'    UNION ALL',
'',
'    SELECT n9.customer_id, n9.customer_code, n9.account_type_id',
'    FROM NPT009 n9',
'    JOIN customers ch ON n9.main_account_code = ch.customer_code',
'    WHERE EXISTS (',
'        SELECT 1 FROM NPT009 WHERE customer_id = :P77_DBA_ID AND account_type_id = 2',
'    )',
'), ',
'',
'grid AS (',
'    SELECT',
'        ''N'' AS "TAG",',
'        npt001.invoice_id AS INVOICE_NUMBER,',
'        TO_CHAR(npt001.date_created, ''MM/DD/YYYY'') AS INVOICE_DATE,',
'        npt001.outstanding_balance AS AMOUNT,',
'        NULL AS IS_CHANGED,',
'        CASE ch.account_type_id WHEN 2 THEN npm003.account_type_code ',
'                                WHEN 3 THEN npm003.account_type_code',
'                                WHEN 4 THEN npm003.account_type_code',
'                                WHEN 5 THEN npm003.account_type_code',
'                                END AS ACCOUNT_TYPE',
'    FROM NPT001 npt001',
'    JOIN customers ch ON npt001.customer_id = ch.customer_id',
'    JOIN NPM003 npm003 ON ch.account_type_id = npm003.account_type_id',
'    WHERE',
'        npt001.outstanding_balance IS NOT NULL',
'        AND npt001.outstanding_balance != 0',
'    ORDER BY npt001.invoice_id',
')',
'',
'SELECT * FROM grid',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P77_DBA_ID,P77_COLLECTION_ID,P77_AMOUNT_PAID,P77_FROM'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P77_FROM'
,p_plug_display_when_cond2=>'A'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70213117327391727)
,p_name=>'TAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Tag'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>false
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70213231116391728)
,p_name=>'INVOICE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NUMBER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>true
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70213390668391729)
,p_name=>'INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70213453090391730)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72830581295498314)
,p_name=>'IS_CHANGED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_CHANGED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Is Changed'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>false
,p_static_id=>'is-changed-a'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72834003532498349)
,p_name=>'ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCOUNT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(24861621919616250)
,p_internal_uid=>24861621919616250
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(25320652834944776)
,p_interactive_grid_id=>wwv_flow_imp.id(24861621919616250)
,p_static_id=>'253207'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(25320842749944778)
,p_report_id=>wwv_flow_imp.id(25320652834944776)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71034842510396975)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(70213117327391727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71035662344396987)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(70213231116391728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71036599365396996)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(70213390668391729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71037400325397009)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(70213453090391730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(74842023934207164)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(72830581295498314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77029246716268278)
,p_view_id=>wwv_flow_imp.id(25320842749944778)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(72834003532498349)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47418258759411412)
,p_plug_name=>'U - Outstanding Invoice Grid'
,p_region_name=>'outstandingGridU'
,p_parent_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    c001 AS "TAG",',
'    c003 AS "INVOICE_NUMBER",',
'    c002 AS "INVOICE_DATE",',
'    n004 AS "AMOUNT",',
'    NULL AS IS_CHANGED,',
'    c004 AS "ACCOUNT_TYPE"',
'FROM',
'    APEX_COLLECTIONS',
'WHERE',
'    COLLECTION_NAME = ''OUTSTANDING_GRID'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P77_AMOUNT_PAID,P77_COLLECTION_ID_F,P77_DBA_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P77_FROM'
,p_plug_display_when_cond2=>'U'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47418459301411414)
,p_name=>'TAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Tag'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70215232166391748)
,p_name=>'INVOICE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70215339483391749)
,p_name=>'INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70215440994391750)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(71479392346170401)
,p_name=>'IS_CHANGED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_CHANGED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Is Changed'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>false
,p_static_id=>'is-changed'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72834111504498350)
,p_name=>'ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCOUNT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(47418310702411413)
,p_internal_uid=>47418310702411413
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>400
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false,',
'        skipReadonlyCells: true',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(48001082646007484)
,p_interactive_grid_id=>wwv_flow_imp.id(47418310702411413)
,p_static_id=>'480011'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(48001285954007487)
,p_report_id=>wwv_flow_imp.id(48001082646007484)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48001799766007500)
,p_view_id=>wwv_flow_imp.id(48001285954007487)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47418459301411414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71486145269195160)
,p_view_id=>wwv_flow_imp.id(48001285954007487)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(70215232166391748)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71487021178195173)
,p_view_id=>wwv_flow_imp.id(48001285954007487)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(70215339483391749)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71487957009195187)
,p_view_id=>wwv_flow_imp.id(48001285954007487)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(70215440994391750)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71488826126195196)
,p_view_id=>wwv_flow_imp.id(48001285954007487)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(71479392346170401)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77033145372394882)
,p_view_id=>wwv_flow_imp.id(48001285954007487)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(72834111504498350)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49037598549299820)
,p_plug_name=>'U - Outstanding Invoice Header'
,p_parent_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>'<div role="region"><h3 class="outstanding-header">Outstanding Invoice</h3></div>'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P77_FROM'
,p_plug_display_when_cond2=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43603804748093338)
,p_plug_name=>'Border'
,p_region_name=>'border'
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'border'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43604331877093343)
,p_plug_name=>'Button'
,p_plug_display_sequence=>110
,p_plug_grid_column_css_classes=>'button'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65876538063340931)
,p_plug_name=>'Search'
,p_region_name=>'search'
,p_region_template_options=>'t-DialogRegion--noPadding:js-modal:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65876766264340933)
,p_plug_name=>'Header'
,p_region_name=>'search-header'
,p_parent_plug_id=>wwv_flow_imp.id(65876538063340931)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="background-color: #056AC8; font-size: 1.5rem; color: white; padding: .50rem 0 .50rem 0; margin-left: 1rem;"',
'     id="search-header">',
'    Search',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43604454508093344)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(43604331877093343)
,p_button_name=>'Navigate'
,p_button_static_id=>'nav'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F6</u> - Navigate'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>5
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65876852752340934)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(43604331877093343)
,p_button_name=>'Search'
,p_button_static_id=>'s'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>S</u> - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45377746729832339)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(43604331877093343)
,p_button_name=>'Submit'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - '
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_column_span=>3
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49037665993299821)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(43604331877093343)
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71621314980549134)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(43604331877093343)
,p_button_name=>'TEST'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Test'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24859868106616232)
,p_name=>'P77_LEGAL_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'<div style="margin-right: 2.4rem;">Legal Name:</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24859919831616233)
,p_name=>'P77_DBA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_pre_element_text=>'<div style="margin-right: 6.2rem;">DBA:</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24860062919616234)
,p_name=>'P77_COLLECTION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_pre_element_text=>'<div style="margin-right: .7rem;">Collection Date:</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24860161944616235)
,p_name=>'P77_AVAILABLE_FUNDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'New'
,p_pre_element_text=>'<div>Available Funds:&nbsp;</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'u-textEnd'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35236314657472429)
,p_name=>'P77_TOTAL_TAGGED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_pre_element_text=>'<div>Total Tagged:&nbsp;</div>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603050452093330)
,p_name=>'P77_COLLECTION_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_pre_element_text=>'<div style="margin-right: .2rem; display: flex;"><div class="required">Collection Type</div>:</div>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT collection_type_name AS d, COLLECTION_TYPE_ID AS r',
'FROM NPM015'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-bottom-lg'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603137905093331)
,p_name=>'P77_DATE_PAID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_placeholder=>'MM/DD/YYYY'
,p_pre_element_text=>'<div style="margin-right: 3.05rem; display: flex;"><div class="required">Date Paid</div>:</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603211513093332)
,p_name=>'P77_AMOUNT_PAID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Paid'
,p_pre_element_text=>'<div style="margin-right: 1.40rem; display: flex;"><div class="required">Amount Paid</div>:</div>'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603345164093333)
,p_name=>'P77_CHECK_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'<div style="margin-right: 2.95rem; display: flex;"><div class="required">Check No</div>:</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603434023093334)
,p_name=>'P77_CHECK_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_placeholder=>'MM/DD/YYYY'
,p_pre_element_text=>'<div style="margin-right: 2.6rem; display: flex;"><div>Check Date</div>:</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43603501652093335)
,p_name=>'P77_OR_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'<div style="margin-right: 4.9rem;">OR No:</div>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44254942823146512)
,p_name=>'P77_DBA_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24859739172616231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45376739465832329)
,p_name=>'P77_ORIGINAL_FUNDS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24860355480616237)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45378094942832342)
,p_name=>'P77_CURRENT_TARGET'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45378667717832348)
,p_name=>'P77_FROM'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46854982912898202)
,p_name=>'P77_COLLECTION_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47417833611411408)
,p_name=>'P77_COLLECTION_ID_F'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47421992452411449)
,p_name=>'P77_URL'
,p_item_sequence=>70
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65876611697340932)
,p_name=>'P77_SEARCH_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65876538063340931)
,p_prompt=>'Invoice Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35236196139472427)
,p_name=>'Set Read Only'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35236200276472428)
,p_event_id=>wwv_flow_imp.id(35236196139472427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_legal_name NPT009.legal_name%TYPE;',
'    v_collection_date DATE;',
'    -- v_customer_id NPT009.customer_id%TYPE;',
'BEGIN',
'    SELECT legal_name',
'    INTO v_legal_name',
'    FROM NPT009',
'    WHERE "DBA" = :P77_DBA;',
'',
'    v_collection_date := SYSDATE;',
'',
'    :P77_LEGAL_NAME := v_legal_name;',
'    :P77_COLLECTION_DATE := TO_CHAR(v_collection_date, ''MM/DD/YYYY'');',
'    -- :P77_DBA_ID := v_customer_id;',
'END;'))
,p_attribute_02=>'P77_DBA'
,p_attribute_03=>'P77_COLLECTION_DATE,P77_LEGAL_NAME,P77_DBA_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44256236052146525)
,p_name=>'Validate Fields'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'validateFields'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44256341217146526)
,p_event_id=>wwv_flow_imp.id(44256236052146525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function hasError() {',
'    const hasErrors = await validateForm();',
'    if(!hasErrors) {',
'        if ($v("P77_FROM") === "A") {',
'            $("#header-wrapper").show();',
'            // $("#outstandingGrid").show();',
'            $("#header-wrapper").css("visibility", "visible");',
'            $("#outstandingGrid").css("visibility", "visible");',
'            $("#s").removeClass("disabled");',
'            apex.region("outstandingGrid").refresh();',
'            apex.region("outstandingGrid").call("getCurrentView").model.fetchAll(function(status) {',
'                if (status.done) {',
'                    setTimeout(function () {',
'                        $(".a-GV-cell").first().trigger("click");',
'                    }, 200);',
'                }',
'            });',
'            apex.item("P77_AVAILABLE_FUNDS").setValue($v("P77_AMOUNT_PAID"));',
'            apex.item("P77_ORIGINAL_FUNDS").setValue($v("P77_AMOUNT_PAID"));',
'            apex.item("P77_TOTAL_TAGGED").setValue(0.00);',
'        } else if ($v("P77_FROM") === "U") {',
'            const totalTagged = parseFloat($v("P77_TOTAL_TAGGED").replace(/,/g, "")) || 0;',
'            const newAmountPaid = parseFloat($v("P77_AMOUNT_PAID").replace(/,/g, "")) || 0;',
'            const newAvailableFunds = newAmountPaid - totalTagged;',
'            apex.item("P77_AVAILABLE_FUNDS").setValue(newAvailableFunds.toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 }));',
'            apex.item("P77_ORIGINAL_FUNDS").setValue(newAmountPaid);',
'            apex.region("outstandingGridU").refresh();',
'            // apex.region("outstandingGridU").focus();',
'            // $(".a-GV-cell").first().trigger("dblclick");',
'            // apex.item("P77_CURRENT_TARGET").setValue("IG");',
'        }',
'    }',
'}',
'hasError();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44256982910146532)
,p_name=>'Set Check Date Disable'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44257074926146533)
,p_event_id=>wwv_flow_imp.id(44256982910146532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const checkDate = document.querySelector("#P77_CHECK_DATE");',
'async function disableCheckDate() {',
'    try {',
'        const exists = await checkDateExists();',
'',
'        if(exists) {',
'            checkDate.removeAttribute("disabled");',
'        } else {',
'            checkDate.setAttribute("disabled", "true");',
'        }',
'        ',
'    } catch (error) {',
'        checkDate.setAttribute("disabled", "true");',
'    }',
'}',
'',
'async function checkDateExists() {',
'    const response = await apex.server.process("CHECK_DATE_EXISTS", {',
'        pageItems: "#P77_COLLECTION_ID_F"',
'    }, {',
'        dataType: "json"',
'    });',
'',
'    return response.success;',
'}',
'',
'if($v("P77_FROM") === "A") {',
'    checkDate.setAttribute("disabled", "true");',
'} else if($v("P77_FROM") === "U") {',
'    disableCheckDate();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44258200779146545)
,p_name=>'Hide Table'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45377621191832338)
,p_event_id=>wwv_flow_imp.id(44258200779146545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24861442374616248)
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44258378583146546)
,p_event_id=>wwv_flow_imp.id(44258200779146545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24861559994616249)
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71621706223549138)
,p_event_id=>wwv_flow_imp.id(44258200779146545)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#header-wrapper").css("visibility", "hidden");',
'$("#outstandingGrid").css("visibility", "hidden");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45377335790832335)
,p_name=>'Select Grid'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24861559994616249)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45377448212832336)
,p_event_id=>wwv_flow_imp.id(45377335790832335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("dblclick");',
'    apex.item("P77_CURRENT_TARGET").setValue("IG");',
' });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45377864183832340)
,p_name=>'Add or Update'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45377746729832339)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46855075730898203)
,p_event_id=>wwv_flow_imp.id(45377864183832340)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const ICON_FAIL_LARGE = ''fa fa-lg fa-times-circle msg-icon-yellow'';',
'',
'async function processAndSaveGrid() {',
'    try {',
'        const hasErrors = await validateForm();',
'',
'        if(hasErrors) {',
'            return;',
'        }',
'        const tagged = isTagged();',
'        if(tagged) {',
'            if($v("P77_FROM") === "U") {',
'                await deleteFromNPT038();',
'            }',
'            const collectionId = await insertNPT005andNPT022();',
'            apex.item("P77_COLLECTION_ID").setValue(collectionId)',
'            await saveInteractiveGrid();',
'        } else {',
'            showGPopup({ message: "Select at least one Outstanding Invoice", width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'            setTimeout(function() {',
'                if($v("P77_CURRENT_TARGET") === "IG") {',
'                    apex.region($v("P77_FROM") === "A" ? "outstandingGrid" : "outstandingGridU").widget().interactiveGrid("getViews", "grid").focus();',
'                }',
'            }, 2000);',
'        }',
'    } catch (error) {',
'        showGPopup({ message: error, width: 600, icon: ICON_FAIL_LARGE, top: "85%", timeoutActive: true });',
'    }',
'}',
'',
'async function deleteFromNPT038() {',
'    const response = await apex.server.process("DELETE_FROM_NPT038", {',
'        pageItems: ''#P77_COLLECTION_ID_F''',
'    }, {',
'        dataType: ''json''',
'    });',
'',
'    if(response.success) {',
'        return true;',
'    } else {',
'        throw "An unknown error occured.";',
'    }',
'}',
'',
'async function insertNPT005andNPT022() {',
'    const response = await apex.server.process("INSERT_NPT005_NPT022", {',
'        pageItems: "#P77_COLLECTION_ID_F, #P77_COLLECTION_TYPE, #P77_DATE_PAID, #P77_AMOUNT_PAID, #P77_CHECK_NO, #P77_OR_NO, #P77_DBA_ID, #P77_CHECK_DATE"',
'    }, {',
'        dataType: "json"',
'    });',
'',
'    if (response.success) {',
'        return response.collection_id;',
'    } else {',
'        throw response.message || "Error inserting into table.";',
'    }',
'}',
'',
'async function saveInteractiveGrid() {',
'    return new Promise((resolve, reject) => {',
'        let ig;',
'        if($v("P77_FROM") === "A") {',
'            ig = apex.region("outstandingGrid").widget();',
'        } else if($v("P77_FROM") === "U") {',
'            ig = apex.region("outstandingGridU").widget();',
'        }',
'        ig.interactiveGrid("getActions").invoke("save");',
'    });',
'}',
'',
'processAndSaveGrid()'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46855242438898205)
,p_name=>'Change Target'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43604454508093344)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46855357997898206)
,p_event_id=>wwv_flow_imp.id(46855242438898205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let current_target = $v("P77_CURRENT_TARGET");',
'',
'if (current_target === "FIELD") {',
'    if($v("P77_FROM") === "A") {',
'        apex.region("outstandingGrid").widget().interactiveGrid("getViews", "grid").focus();',
'    } else if($v("P77_FROM") === "U") {',
'        apex.region("outstandingGridU").widget().interactiveGrid("getViews", "grid").focus();',
'    }',
'    apex.item("P77_CURRENT_TARGET").setValue("IG");',
'} else if(current_target === "IG") {',
'    $("#P77_COLLECTION_TYPE").focus();',
'    apex.item("P77_CURRENT_TARGET").setValue("FIELD");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47417974996411409)
,p_name=>'Set Update Fields Value'
,p_event_sequence=>100
,p_condition_element=>'P77_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'U'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47418066473411410)
,p_event_id=>wwv_flow_imp.id(47417974996411409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_collection_type NPT005.collection_type_id%TYPE;',
'    l_date_paid NPT005.date_paid%TYPE;',
'    l_amount_paid NPT005.amount%TYPE;',
'    l_check_no NPT005.cashcheck%TYPE;',
'    l_check_date NPT022.check_date%TYPE;',
'    l_or_no NPT005.or_no%TYPE;',
'    l_tagged_amount NUMBER := 0;',
'BEGIN',
'    SELECT collection_type_id, date_paid, amount, cashcheck, check_date, or_no',
'    INTO l_collection_type, l_date_paid, l_amount_paid, l_check_no, l_check_date, l_or_no',
'    FROM NPT005',
'    WHERE collection_id = :P77_COLLECTION_ID_F;',
'',
'    :P77_COLLECTION_TYPE := l_collection_type;',
'    :P77_DATE_PAID := TO_CHAR(l_date_paid, ''MM/DD/YYYY'');',
'    :P77_AMOUNT_PAID := l_amount_paid;',
'    :P77_CHECK_NO := l_check_no;',
'    :P77_CHECK_DATE := TO_CHAR(l_check_date, ''MM/DD/YYYY'');',
'    :P77_OR_NO := l_or_no;',
'',
'    DELETE FROM NPT038 n',
'    WHERE n.collection_id = :P77_COLLECTION_ID_F',
'      AND EXISTS (',
'          SELECT 1',
'          FROM NPT001 t',
'          WHERE t.invoice_id = n.invoice_id',
'            AND t.outstanding_balance = 0',
'      );',
'',
'    -- SELECT NVL(SUM(CASE ',
'    --             WHEN t.outstanding_balance > 0 THEN ',
'    --                  t.outstanding_balance',
'    --             ELSE 0',
'    --         END), 0)',
'    -- INTO l_tagged_amount',
'    -- FROM NPT038 n',
'    -- JOIN NPT001 t ON n.invoice_id = t.invoice_id',
'    -- WHERE n.collection_id = :P77_COLLECTION_ID_F;',
'',
'    SELECT NVL(SUM(amount_paid), 0)',
'    INTO l_tagged_amount',
'    FROM NPT038',
'    WHERE collection_id = :P77_COLLECTION_ID_F;',
'',
'    :P77_ORIGINAL_FUNDS := l_amount_paid;',
'    :P77_AVAILABLE_FUNDS := CASE',
'                                WHEN :P77_AMOUNT_PAID - l_tagged_amount = 0 THEN ''0.00''',
'                                ELSE TO_CHAR(:P77_AMOUNT_PAID - l_tagged_amount, ''999,999,999.00'')',
'                            END;',
'    :P77_TOTAL_TAGGED :=    CASE',
'                                WHEN l_tagged_amount = 0 THEN ''0.00''',
'                                ELSE TO_CHAR(l_tagged_amount, ''999,999,999.00'')',
'                            END;',
'END;'))
,p_attribute_02=>'P77_COLLECTION_ID_F,P77_AMOUNT_PAID'
,p_attribute_03=>'P77_COLLECTION_TYPE,P77_DATE_PAID,P77_AMOUNT_PAID,P77_CHECK_NO,P77_OR_NO,P77_CHECK_DATE,P77_AVAILABLE_FUNDS,P77_TOTAL_TAGGED,P77_ORIGINAL_FUNDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49036455941299809)
,p_name=>'Redirect to Page 75'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24861559994616249)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.status == "success"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'interactivegridsave'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P77_FROM'
,p_display_when_cond2=>'A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49037915097299824)
,p_event_id=>wwv_flow_imp.id(49036455941299809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'    var ig = apex.region("outstandingGrid");',
'    var view = ig.widget().interactiveGrid("getViews","grid");',
'    view.model.clearChanges();',
'}, 100);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47422029757411450)
,p_event_id=>wwv_flow_imp.id(49036455941299809)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P77_URL := apex_page.get_url(',
'    p_page => 75,',
'    p_items => ''P75_FROM,P75_COLLECTION_ID,P75_COLLECT_DATE_FROM,P75_COLLECT_DATE_TO'',',
'    p_values => :P77_FROM || '','' || :P77_COLLECTION_ID || '','' || :P77_COLLECTION_DATE || '','' || NULL',
');'))
,p_attribute_02=>'P77_FROM,P77_COLLECTION_ID,P77_COLLECTION_DATE'
,p_attribute_03=>'P77_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49036630948299811)
,p_event_id=>wwv_flow_imp.id(49036455941299809)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P77_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51617987526202047)
,p_name=>'Select U Grid'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47418258759411412)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51618008486202048)
,p_event_id=>wwv_flow_imp.id(51617987526202047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("dblclick");',
'    apex.item("P77_CURRENT_TARGET").setValue("IG");',
' });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49036756863299812)
,p_name=>'Redirect to Page 75_1'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47418258759411412)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.status == "success"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'interactivegridsave'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P77_FROM'
,p_display_when_cond2=>'U'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49038091976299825)
,p_event_id=>wwv_flow_imp.id(49036756863299812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function () {',
'    var ig = apex.region("outstandingGridU");',
'    var view = ig.widget().interactiveGrid("getViews","grid");',
'    view.model.clearChanges();',
'}, 100);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49036829932299813)
,p_event_id=>wwv_flow_imp.id(49036756863299812)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P77_URL := apex_page.get_url(',
'    p_page => 75,',
'    p_items => ''P75_FROM'',',
'    p_values => :P77_FROM',
');'))
,p_attribute_02=>'P77_FROM'
,p_attribute_03=>'P77_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49036933331299814)
,p_event_id=>wwv_flow_imp.id(49036756863299812)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P77_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49037019102299815)
,p_name=>'Select Table'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49037111959299816)
,p_event_id=>wwv_flow_imp.id(49037019102299815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( document ).ready(function() {',
'    $(".a-GV-cell").first().trigger("dblclick");',
'    apex.item("P77_CURRENT_TARGET").setValue("IG");',
' });'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P77_FROM'
,p_client_condition_expression=>'U'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50460501023444409)
,p_name=>'Always Changed'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47418258759411412)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50460622028444410)
,p_event_id=>wwv_flow_imp.id(50460501023444409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'IS_CHANGED'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'C'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50464245118444446)
,p_name=>'Update Collections'
,p_event_sequence=>150
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(47418258759411412)
,p_triggering_element=>'TAG'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50464318602444447)
,p_event_id=>wwv_flow_imp.id(50464245118444446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_seq NUMBER;',
'BEGIN',
'    SELECT SEQ_ID',
'    INTO l_seq',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''OUTSTANDING_GRID''',
'      AND C003 = :INVOICE_NUMBER;',
'',
'    APEX_COLLECTION.UPDATE_MEMBER(',
'        p_collection_name => ''OUTSTANDING_GRID'',',
'        p_seq             => l_seq,',
'        p_c001            => CASE WHEN :"TAG" =''Y'' THEN ''Y'' ELSE ''N'' END,',
'        p_c002            => :INVOICE_DATE,',
'        p_c003            => :INVOICE_NUMBER,',
'        p_n004            => TO_NUMBER(REPLACE(:AMOUNT,'','',''''))',
'    );',
'END;'))
,p_attribute_02=>'TAG,INVOICE_NUMBER,AMOUNT,INVOICE_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50464541740444449)
,p_name=>'Make Read Only'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50464685507444450)
,p_event_id=>wwv_flow_imp.id(50464541740444449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("is-changed").node.readOnly = true;',
'apex.item("is-changed-a").node.readOnly = true;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(55262701566963911)
,p_name=>'Set to 0'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_AVAILABLE_FUNDS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(55262831451963912)
,p_event_id=>wwv_flow_imp.id(55262701566963911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var availableFunds = parseFloat($v("P77_AVAILABLE_FUNDS").replace(/,/g, "")) || 0;',
'',
'if(availableFunds < 0) {',
'    apex.item("P77_AVAILABLE_FUNDS").setValue(0.00)',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65876931518340935)
,p_name=>'Open Search'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65876852752340934)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$("#outstandingGrid").is(":visible") || $("#outstandingGridU").is(":visible");'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65877019795340936)
,p_event_id=>wwv_flow_imp.id(65876931518340935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#search").dialog("option", "width", 400);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65877113647340937)
,p_event_id=>wwv_flow_imp.id(65876931518340935)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65876538063340931)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65877550808340941)
,p_event_id=>wwv_flow_imp.id(65876931518340935)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_SEARCH_VALUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65877901192340945)
,p_event_id=>wwv_flow_imp.id(65876931518340935)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let keyPressed = "";',
'',
'$("#search").on("keydown", function(event) {',
'    if(event.key === "Escape") {',
'        keyPressed = "escape"',
'    } else if(event.key === "Enter") {',
'        keyPressed = ''enter''',
'    }',
'});',
'',
'$("#search").on("dialogbeforeclose", function(event, ui) {',
'    if(keyPressed === "escape") {',
'        apex.region($v("P77_FROM") === ''A'' ? "outstandingGrid" : "outstandingGridU").focus();',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65877297018340938)
,p_name=>'On Search'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_SEARCH_VALUE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === ''enter'';'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65877466683340940)
,p_event_id=>wwv_flow_imp.id(65877297018340938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65876538063340931)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65877383065340939)
,p_event_id=>wwv_flow_imp.id(65877297018340938)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let view = apex.region($v("P77_FROM") === ''A'' ? "outstandingGrid" : "outstandingGridU").call("getCurrentView"),',
'    model = view.model,',
'    view$ = view.view$,',
'    id = $v("P77_SEARCH_VALUE"),',
'    rec = model.getRecord(id);',
'',
'if (rec) {',
'    let pi = view$.grid("getPageInfo"),',
'        index = model.indexOf(rec),',
'        offset = index * pi.rowHeight;',
'',
'    $(".a-GV-w-scroll").scrollTop(offset);',
'    view$.grid("setSelectedRecords", [rec], true);',
'',
'    setTimeout(function () {',
'        let row$ = view$.find(`tr[data-id=''${id}'']`);',
'        console.log("row$", row$);',
'        if (row$.length > 0) {',
'            $(row$).find(".a-GV-cell").first().trigger("click");',
'        } else {',
'            $(".a-GV-cell").first().trigger("click");',
'        }',
'    }, 500);',
'} else {',
'    setTimeout(function () {',
'        $(".a-GV-cell").first().trigger("click");',
'    }, 500);',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65877613635340942)
,p_event_id=>wwv_flow_imp.id(65877297018340938)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_SEARCH_VALUE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65877740409340943)
,p_name=>'Make search disabled'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65877838884340944)
,p_event_id=>wwv_flow_imp.id(65877740409340943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P77_FROM") === ''A'') {',
'    $("#s").addClass("disabled");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71621423357549135)
,p_name=>'New'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71621314980549134)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71621527083549136)
,p_event_id=>wwv_flow_imp.id(71621423357549135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("outstandingGridU").refresh()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72830342067498312)
,p_name=>'Always Changed - A'
,p_event_sequence=>240
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24861559994616249)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72830457684498313)
,p_event_id=>wwv_flow_imp.id(72830342067498312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'IS_CHANGED'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'C'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45376554315832327)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24861559994616249)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'CUSTOM_DML'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_amount_paid  NUMBER := TO_NUMBER(REPLACE(:P77_AMOUNT_PAID,'','',''''));',
'    l_paid_for_row NUMBER;',
'    l_outstanding_bal NUMBER;',
'BEGIN',
'    IF :P77_FROM = ''A'' THEN',
'        IF :"TAG" = ''Y'' THEN',
'',
'            SELECT outstanding_balance',
'            INTO l_outstanding_bal',
'            FROM NPT001',
'            WHERE invoice_id = :invoice_number;',
'',
'            IF l_amount_paid >= TO_NUMBER(REPLACE(:amount,'','','''')) THEN',
'                l_paid_for_row := TO_NUMBER(REPLACE(:amount,'','',''''));',
'            ELSE',
'                l_paid_for_row := l_amount_paid;',
'            END IF;',
'',
'            INSERT INTO NPT038 (collection_id, invoice_id, amount_paid, user_created, date_created, pre_collected)',
'            VALUES (',
'                :P77_COLLECTION_ID,',
'                :invoice_number,',
'                l_paid_for_row,',
'                V(''APP_USER''),',
'                SYSDATE,',
'                l_outstanding_bal',
'            );',
'',
'            l_amount_paid := l_amount_paid - l_paid_for_row;',
'            :P77_AMOUNT_PAID := TO_NUMBER(REPLACE(:P77_AMOUNT_PAID,'','','''')) - l_paid_for_row;',
'',
'            IF l_amount_paid <= 0 THEN',
'                RETURN;',
'            END IF;',
'        END IF;',
'    END IF;',
'END;',
'',
'-- DECLARE',
'--     l_amount_paid      NUMBER := TO_NUMBER(REPLACE(:P77_AMOUNT_PAID, '','', ''''));',
'--     l_paid_for_row     NUMBER;',
'--     l_outstanding_bal  NUMBER;',
'-- BEGIN',
'--     IF :P77_FROM = ''A'' THEN',
'--         FOR r IN (',
'--             SELECT c001 AS invoice_number,',
'--                    c002 AS invoice_date,',
'--                    n003 AS amount',
'--             FROM APEX_COLLECTIONS',
'--             WHERE COLLECTION_NAME = ''OUTSTANDING_GRID_A''',
'--         ) LOOP',
'--             SELECT outstanding_balance',
'--             INTO l_outstanding_bal',
'--             FROM NPT001',
'--             WHERE invoice_id = r.invoice_number;',
'',
'--             IF l_amount_paid >= r.amount THEN',
'--                 l_paid_for_row := r.amount;',
'--             ELSE',
'--                 l_paid_for_row := l_amount_paid;',
'--             END IF;',
'',
'--             INSERT INTO NPT038 (',
'--                 collection_id, ',
'--                 invoice_id, ',
'--                 amount_paid, ',
'--                 user_created, ',
'--                 date_created, ',
'--                 pre_collected',
'--             )',
'--             VALUES (',
'--                 :P77_COLLECTION_ID,',
'--                 r.invoice_number,',
'--                 l_paid_for_row,',
'--                 V(''APP_USER''),',
'--                 SYSDATE,',
'--                 l_outstanding_bal',
'--             );',
'',
'--             l_amount_paid := l_amount_paid - l_paid_for_row;',
'--             :P77_AMOUNT_PAID := TO_NUMBER(REPLACE(:P77_AMOUNT_PAID,'','','''')) - l_paid_for_row;',
'',
'--             IF l_amount_paid <= 0 THEN',
'--                 EXIT;',
'--             END IF;',
'--         END LOOP;',
'--     END IF;',
'-- END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>45376554315832327
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47420478632411434)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(47418258759411412)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'U_CUSTOM_DML'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_amount_paid       NUMBER := TO_NUMBER(REPLACE(:P77_AMOUNT_PAID, '','', ''''));',
'    l_paid_for_row      NUMBER;',
'    l_outstanding_bal   NUMBER;',
'    l_total_tagged      NUMBER := 0;',
'BEGIN',
'    FOR r IN (',
'        SELECT *',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''OUTSTANDING_GRID''',
'          AND c001 = ''Y''',
'    ) LOOP',
'        SELECT outstanding_balance',
'        INTO l_outstanding_bal',
'        FROM NPT001',
'        WHERE invoice_id = r.c003;',
'',
'        IF l_amount_paid >= r.n004 THEN',
'            l_paid_for_row := r.n004;',
'        ELSE',
'            l_paid_for_row := l_amount_paid;',
'        END IF;',
'',
'        MERGE INTO NPT038 npt',
'        USING DUAL',
'        ON (npt.collection_id = :P77_COLLECTION_ID_F',
'            AND npt.invoice_id = r.c003)',
'        WHEN MATCHED THEN',
'            UPDATE SET',
'                npt.amount_paid = npt.amount_paid,',
'                npt.date_updated = SYSDATE,',
'                npt.user_updated = V(''APP_USER'')',
'        WHEN NOT MATCHED THEN',
'            INSERT (collection_id, invoice_id, amount_paid, user_created, date_created, pre_collected)',
'            VALUES (',
'                :P77_COLLECTION_ID_F,',
'                r.c003,',
'                l_paid_for_row,',
'                V(''APP_USER''),',
'                SYSDATE,',
'                l_outstanding_bal',
'            );',
'',
'        l_amount_paid := l_amount_paid - l_paid_for_row;',
'        :P77_AMOUNT_PAID := l_amount_paid;',
'    END LOOP;',
'',
'    FOR r IN (',
'        SELECT *',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''OUTSTANDING_GRID''',
'          AND c001 = ''N''',
'    ) LOOP',
'        SELECT outstanding_balance',
'        INTO l_outstanding_bal',
'        FROM NPT001',
'        WHERE invoice_id = r.c003;',
'',
'        l_amount_paid := l_amount_paid + r.n004;',
'        :P77_AMOUNT_PAID := l_amount_paid;',
'',
'        UPDATE NPT038',
'        SET',
'            amount_paid = 0,',
'            date_updated = SYSDATE,',
'            user_updated = V(''APP_USER'')',
'        WHERE collection_id = :P77_COLLECTION_ID_F',
'        AND invoice_id = r.c003;',
'    END LOOP;',
'END;'))
,p_attribute_05=>'N'
,p_attribute_06=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_only_for_changed_rows=>'N'
,p_internal_uid=>47420478632411434
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72830744382498316)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get DBA ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_customer_id NPT009.customer_id%TYPE;',
'BEGIN',
'    SELECT customer_id',
'    INTO v_customer_id',
'    FROM NPT009',
'    WHERE "DBA" = :P77_DBA;',
'',
'    :P77_DBA_ID := v_customer_id;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>72830744382498316
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50464171093444445)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- BEGIN',
'--     APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''OUTSTANDING_GRID'');',
'   ',
'--     FOR r IN (',
'--         SELECT ',
'--             CASE',
'--                 WHEN EXISTS (',
'--                     SELECT 1 ',
'--                     FROM NPT038 npt038',
'--                     WHERE npt038.invoice_id = npt001.invoice_id',
'--                     AND npt038.collection_id = :P77_COLLECTION_ID_F',
'--                 ) THEN ''Y''',
'--                 ELSE ''N''',
'--             END AS "TAG",',
'--             TO_CHAR(npt001.date_created, ''MM/DD/YYYY'') AS INVOICE_DATE,',
'--             npt001.invoice_id AS INVOICE_NUMBER,',
'--             npt001.outstanding_balance AS AMOUNT',
'--         FROM NPT001 npt001',
'--         WHERE npt001.customer_id = :P77_DBA_ID',
'--           AND npt001.outstanding_balance IS NOT NULL',
'--           AND npt001.outstanding_balance != 0',
'--         ORDER BY',
'--             npt001.invoice_id',
'--     ) LOOP',
'--         APEX_COLLECTION.ADD_MEMBER(',
'--             p_collection_name => ''OUTSTANDING_GRID'',',
'--             p_c001 => r."TAG",',
'--             p_c002 => r.INVOICE_DATE,',
'--             p_c003 => r.INVOICE_NUMBER,',
'--             p_n004 => r.AMOUNT',
'--         );',
'--     END LOOP;',
'-- END;',
'',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''OUTSTANDING_GRID'');',
'',
'    FOR r IN (',
'        WITH customer (customer_id, customer_code, account_type_id) AS (',
'            SELECT customer_id, customer_code, account_type_id',
'            FROM NPT009',
'            WHERE customer_id = :P77_DBA_ID',
'',
'            UNION ALL',
'',
'            SELECT n9.customer_id, n9.customer_code, n9.account_type_id',
'            FROM NPT009 n9',
'            JOIN customer ch ON n9.main_account_code = ch.customer_code',
'            WHERE EXISTS (',
'                SELECT 1 FROM NPT009 WHERE customer_id = :P77_DBA_ID AND account_type_id = 2',
'            )',
'        )',
'',
'        SELECT ',
'            CASE',
'                WHEN EXISTS (',
'                    SELECT 1 ',
'                    FROM NPT038 npt038',
'                    WHERE npt038.invoice_id = npt001.invoice_id',
'                    AND npt038.collection_id = :P77_COLLECTION_ID_F',
'                ) THEN ''Y''',
'                ELSE ''N''',
'            END AS "TAG",',
'            TO_CHAR(npt001.date_created, ''MM/DD/YYYY'') AS INVOICE_DATE,',
'            npt001.invoice_id AS INVOICE_NUMBER,',
'            npt001.outstanding_balance AS AMOUNT,',
'            CASE ch.account_type_id WHEN 2 THEN npm003.account_type_code',
'                                    WHEN 3 THEN npm003.account_type_code',
'                                    WHEN 4 THEN npm003.account_type_code',
'                                    WHEN 5 THEN npm003.account_type_code',
'                                    END AS ACCOUNT_TYPE',
'        FROM NPT001 npt001',
'        JOIN customer ch ON npt001.customer_id = ch.customer_id',
'        JOIN NPM003 npm003 ON ch.account_type_id = npm003.account_type_id',
'        WHERE npt001.outstanding_balance IS NOT NULL',
'          AND npt001.outstanding_balance != 0',
'        ORDER BY npt001.invoice_id',
'',
'    ) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''OUTSTANDING_GRID'',',
'            p_c001 => r."TAG",',
'            p_c002 => r.INVOICE_DATE,',
'            p_c003 => r.INVOICE_NUMBER,',
'            p_n004 => r.AMOUNT,',
'            p_c004 => r.ACCOUNT_TYPE',
'        );',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>50464171093444445
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44256468516146527)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_BANK_EXISTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_exists NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_exists',
'    FROM NPM007',
'    WHERE bank_code = apex_application.g_x01;',
'',
'    IF v_exists = 0 THEN',
'        HTP.P(''{"success": false}'');',
'    ELSE',
'        HTP.P(''{"success": true}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44256468516146527
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44256626902146529)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDATE_CMEMO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_exists NUMBER;',
'    v_customer_id NPT009.customer_id%TYPE;',
'    v_balance NUMBER;',
'    v_cm_status_id NUMBER;',
'    v_count NUMBER;',
'    v_parent_code NPT009.customer_code%TYPE;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_exists',
'    FROM NPT015',
'    WHERE credit_memo_id = apex_application.g_x01;',
'',
'    IF v_exists = 0 THEN',
'        HTP.P(''{"success":false, "errorMessage": "Credit Memo does not exist"}'');',
'        RETURN;',
'    END IF;',
'',
'    SELECT customer_id',
'    INTO v_customer_id',
'    FROM NPT015',
'    WHERE credit_memo_id = apex_application.g_x01;',
'',
'    SELECT customer_code',
'    INTO v_parent_code',
'    FROM NPT009',
'    WHERE customer_id = apex_application.g_x02;',
'',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM NPT009',
'    WHERE customer_id = v_customer_id',
'      AND (customer_id = apex_application.g_x02',
'           OR main_account_code = v_parent_code);',
'',
'    IF v_count = 0 THEN',
'        HTP.P(''{"success":false, "errorMessage": "Credit Memo is from a different customer"}'');',
'        RETURN;',
'    END IF;',
'',
'',
'    -- IF v_customer_id != apex_application.g_x02 THEN',
'    --     HTP.P(''{"success":false, "errorMessage": "Credit Memo is from a different customer"}'');',
'    --     RETURN;',
'    -- END IF;',
'',
'    SELECT cm_status_id',
'    INTO v_cm_status_id',
'    FROM NPT015',
'    WHERE credit_memo_id = apex_application.g_x01;',
'',
'    IF v_cm_status_id NOT IN (2, 3, 4) OR v_cm_status_id IS NULL THEN',
'        HTP.P(''{"success": false, "errorMessage": "Credit Memo not Posted or already Voided"}'');',
'        RETURN;',
'    END IF;',
'',
'    SELECT current_balance',
'    INTO v_balance',
'    FROM NPT015',
'    WHERE credit_memo_id = apex_application.g_x01;',
'',
'    IF v_balance = 0 THEN',
'        HTP.P(''{"success":false, "errorMessage": "Credit Memo has 0 balance"}'');',
'        RETURN;',
'    ELSIF v_balance < TO_NUMBER(REPLACE(apex_application.g_x03, '','', '''')) THEN',
'        HTP.P(''{"success": false, "errorMessage": "Invalid Amount"}'');',
'        RETURN;',
'    END IF;',
'',
'    HTP.P(''{"success": true}'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44256626902146529
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46855176320898204)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT_NPT005_NPT022'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_collection_id NUMBER;',
'    l_bank_id       NUMBER;',
'    l_check_digits  VARCHAR2(20);',
'    l_bank_code     VARCHAR2(20);',
'    l_check_no      VARCHAR2(20);',
'BEGIN',
'    l_check_no := :P77_CHECK_NO;',
'    IF REGEXP_LIKE(l_check_no, ''^CMEMO#\d+$'') THEN',
'        l_check_no := ''CMEMO#'' || TO_NUMBER(SUBSTR(l_check_no, 7));',
'    END IF;',
'    IF :P77_FROM = ''A'' THEN',
'        INSERT INTO NPT005 (collection_type_id, date_paid, amount, cashcheck, check_date, or_no, user_created, date_created, customer_id)',
'        VALUES (',
'            :P77_COLLECTION_TYPE,',
'            :P77_DATE_PAID,',
'            TO_NUMBER(REPLACE(:P77_AMOUNT_PAID,'','','''')),',
'            l_check_no,',
'            :P77_CHECK_DATE,',
'            :P77_OR_NO,',
'            V(''APP_USER''),',
'            SYSDATE,',
'            :P77_DBA_ID',
'        ) RETURNING collection_id INTO l_collection_id;',
'    ELSIF :P77_FROM = ''U'' THEN',
'        UPDATE ',
'            NPT005',
'        SET ',
'            collection_type_id = :P77_COLLECTION_TYPE,',
'            date_paid = :P77_DATE_PAID,',
'            amount = TO_NUMBER(REPLACE(:P77_AMOUNT_PAID,'','','''')),',
'            cashcheck = l_check_no,',
'            check_date = :P77_CHECK_DATE,',
'            or_no = :P77_OR_NO,',
'            user_update = V(''APP_USER''),',
'            date_updated = SYSDATE',
'        WHERE',
'            collection_id = :P77_COLLECTION_ID_F;',
'        ',
'        l_collection_id := :P77_COLLECTION_ID_F;',
'    END IF;',
'    HTP.P(''{"success":true, "collection_id":'' || l_collection_id || ''}'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>46855176320898204
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47418161181411411)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_DATE_EXISTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_exists NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO l_exists',
'    FROM NPT005',
'    WHERE COLLECTION_ID = :P77_COLLECTION_ID_F',
'    AND CHECK_DATE IS NOT NULL;',
'',
'    IF l_exists = 0 THEN',
'        HTP.P(''{"success":false}'');',
'    ELSE',
'        HTP.P(''{"success":true}'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>47418161181411411
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50463579876444439)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_FROM_NPT038'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM',
'    NPT038',
'WHERE',
'    collection_id = :P77_COLLECTION_ID_F;',
'',
'HTP.P(''{"success": true}'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>50463579876444439
);
wwv_flow_imp.component_end;
end;
/
