prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_name=>'Add/Update Customer'
,p_alias=>'ADD-UPDATE-CUSTOMER'
,p_step_title=>'Add/Update Customer'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p58KeyMapAdd = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    enter : (v) => {',
'        $("#enter").trigger("click");',
'    }',
'}',
'',
'function mapP58KeysAdd() {',
'    $(document).off(''keydown.p58keyevents'');',
'    $(document).on(''keydown.p58keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p58KeyMapAdd[key]) {',
'            ev.preventDefault();',
'            p58KeyMapAdd[key]();',
'        }',
'    });',
'}',
'',
'const p58KeyMapAddMACFocused = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'function mapP58KeysAddMACFocused() {',
'    $(document).off(''keydown.p58keyevents'');',
'    $(document).on(''keydown.p58keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p58KeyMapAddMACFocused[key]) {',
'            ev.preventDefault();',
'            p58KeyMapAddMACFocused[key]();',
'        }',
'    });',
'}',
'',
'const p58KeyMapUpdate = {',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    d : (v) => {',
'        $("#d").trigger("click");',
'    },',
'    u : (v) => {',
'        $("#u").trigger("click");',
'    }',
'}',
'',
'function mapP58KeysUpdate() {',
'    $(document).off(''keydown.p58keyevents'');',
'    $(document).on(''keydown.p58keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p58KeyMapUpdate[key]) {',
'            ev.preventDefault();',
'            p58KeyMapUpdate[key]();',
'        }',
'    });',
'}',
'',
'const p58KeyMapUpdateOn = {',
'    f6 : (v) => {',
'        $("#f6").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    f8 : (v) => {',
'        $("#uc").trigger("click");',
'    }',
'}',
'',
'function mapP58KeysUpdateOn() {',
'    $(document).off(''keydown.p58keyevents'');',
'    $(document).on(''keydown.p58keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p58KeyMapUpdateOn[key]) {',
'            ev.preventDefault();',
'            p58KeyMapUpdateOn[key]();',
'        }',
'    });',
'}',
'',
'const p58KeyMapUpdateOnMACFocused = {',
'    f6 : (v) => {',
'        $("#f6").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'function mapP58KeysUpdateOnMACFocused() {',
'    $(document).off(''keydown.p58keyevents'');',
'    $(document).on(''keydown.p58keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p58KeyMapUpdateOnMACFocused[key]) {',
'            ev.preventDefault();',
'            p58KeyMapUpdateOnMACFocused[key]();',
'        }',
'    });',
'}',
'',
'const p58KeyMapUpdateDiscounts = {',
'    f6 : (v) => {',
'        $("#f6").trigger("click");',
'    },',
'    escape : (v) => {',
'        $("#esc").trigger("click");',
'    },',
'    f8 : (v) => {',
'        $("#f6").trigger("click");',
'        setTimeout(() => {',
'            $( document ).ready(function() {',
'                $("#uc").trigger("click");',
'            });',
'        }, 1000);',
'    }',
'}',
'',
'function mapP58KeysUpdateDiscounts() {',
'    $(document).off(''keydown.p58keyevents'');',
'    $(document).on(''keydown.p58keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p58KeyMapUpdateDiscounts[key]) {',
'            ev.preventDefault();',
'            p58KeyMapUpdateDiscounts[key]();',
'        }',
'    });',
'}',
'',
'const p58KeyMapUpdateDiscountsFocused = {',
'    f6 : (v) => {',
'        $("#f6").trigger("click");',
'    }',
'}',
'',
'function mapP58KeysUpdateDiscountsFocused() {',
'    $(document).off(''keydown.p58keyevents'');',
'    $(document).on(''keydown.p58keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p58KeyMapUpdateDiscountsFocused[key]) {',
'            ev.preventDefault();',
'            p58KeyMapUpdateDiscountsFocused[key]();',
'        }',
'    });',
'}',
'',
'function splitAddress(address){',
'    let arr = address.split("%");',
'    return arr;',
'}',
'',
'$(''#P58_CREDIT_LIMIT'').keydown(function (e) {',
'    var val = $(this).val().replaceAll(",","");',
'    var position = e.target.selectionStart;',
'    if(Number( [val.slice(0, position), e.key, val.slice(position)].join('''') ) <= 9999999.99){',
'        if(',
'            e.key == "1" || e.key == "2" || e.key == "3" || e.key == "4" ||',
'            e.key == "5" || e.key == "6" || e.key == "7" || e.key == "8" ||',
'            e.key == "9" || e.key == "0"',
'        ){',
'            return true;',
'        } else if(e.key == "." && val.indexOf(''.'') == -1){',
'            return true;',
'        } else {',
'            return false;',
'        }',
'    } else if(e.key == "Backspace"){',
'        if ( Number( [val.slice(0, (position - 1)), val.slice(position)].join('''')) <= 9999999.99 ){',
'            return true;',
'        } else {',
'            return false;',
'        }',
'    } else if ( e.key == "ArrowLeft" || e.key == "ArrowRight" || e.key == "Enter" || e.key == "F8" || e.key == "Tab" ){',
'        return true;',
'    } else {',
'        return false;',
'    }',
'});',
'',
'$(''#P58_STANDARD_DISCOUNT'').keydown(function (e) {',
'    var val = $(this).val();',
'    var position = e.target.selectionStart;',
'    if(Number( [val.slice(0, position), e.key, val.slice(position)].join('''') ) <= 99.99){',
'        if(',
'            e.key == "1" || e.key == "2" || e.key == "3" || e.key == "4" ||',
'            e.key == "5" || e.key == "6" || e.key == "7" || e.key == "8" ||',
'            e.key == "9" || e.key == "0"',
'        ){',
'            return true;',
'        } else if(e.key == "." && val.indexOf(''.'') == -1){',
'            return true;',
'        } else {',
'            return false;',
'        }',
'    } else if(e.key == "Backspace"){',
'        if ( Number( [val.slice(0, (position - 1)), val.slice(position)].join('''')) <= 99.99 ){',
'            return true;',
'        } else {',
'            return false;',
'        }',
'    } else if ( e.key == "ArrowLeft" || e.key == "ArrowRight" || e.key == "F6" || e.key == "F8" || e.key == "Tab" ){',
'        return true;',
'    } else {',
'        return false;',
'    }',
'});',
'',
'// $("#P58_BILLING_CONTACTA, #P58_BILLING_CONTACTB, #P58_SHIPPING_CONTACTA, #P58_SHIPPING_CONTACTB, #P58_BILLING_FAX, #P58_SHIPPING_FAX")',
'//     .keypress(function(e){',
'//         if(',
'//             e.key == "1" || e.key == "2" ||',
'//             e.key == "3" || e.key == "4" ||',
'//             e.key == "5" || e.key == "6" ||',
'//             e.key == "7" || e.key == "8" ||',
'//             e.key == "9" || e.key == "0" ||',
'//             e.key == "-" || e.key == "+"',
'//         ){',
'//             return true;',
'//         } else {',
'//             return false;',
'//         }',
'// });',
'',
'$("#P58_BILLING_PA, #P58_SHIPPING_PA")',
'    .keypress(function(e){',
'        if(',
'            e.key == "1" || e.key == "2" ||',
'            e.key == "3" || e.key == "4" ||',
'            e.key == "5" || e.key == "6" ||',
'            e.key == "7" || e.key == "8" ||',
'            e.key == "9" || e.key == "0"',
'        ){',
'            return false;',
'        } else {',
'            return true;',
'        }',
'});',
'',
'$("#P58_BILLING_BUILDING_AND_STREET, #P58_BILLING_CITY, #P58_BILLING_ZIPCODE, #P58_SHIPPING_BUILDING_AND_STREET, #P58_SHIPPING_CITY, #P58_SHIPPING_ZIPCODE")',
'    .keypress(function(event){',
'        return restrictAddress(event);',
'});',
'function restrictAddress(event){',
'    var key = event.key?.toLowerCase();',
'    if (key == ''%'') {',
'       return false;',
'    }',
'    return true;',
'}',
'',
'function changeRequiredRegular(){',
'    $("#P58_PAYMENT_TERMS_ID_LABEL > .required").removeClass("hide");',
'    $("#P58_CREDIT_LIMIT_LABEL > .required").removeClass("hide");',
'    $("#P58_BILLING_BUILDING_AND_STREET_LABEL > .required").removeClass("hide");',
'    $("#P58_BILLING_CITY_LABEL > .required").removeClass("hide");',
'    $("#P58_BILLING_CONTACTA_LABEL > .required").removeClass("hide");',
'    $("#P58_SHIPPING_BUILDING_AND_STREET_LABEL > .required").removeClass("hide");',
'    $("#P58_SHIPPING_CITY_LABEL > .required").removeClass("hide");',
'    $("#P58_SHIPPING_CONTACTA_LABEL > .required").addClass("hide");',
'    $("#P58_MAIN_ACCOUNT_CODE_LABEL > .required").addClass("hide");',
'    $("#P58_MAIN_ACCOUNT_CODE").addClass("apex_disabled");',
'    $("#P58_DEPARTMENT_ACCOUNT_CODE_LABEL > .required").addClass("hide");',
'    $("#P58_DEPARTMENT_ACCOUNT_CODE").addClass("apex_disabled");',
'    $("#P58_MAIN_ACCOUNT_CODE_input").removeAttr("readonly tabindex");',
'}',
'',
'function changeRequired(accountType){',
'    $(".apex-item-text").removeClass("apex-page-item-error");',
'    $(".apex-item-select").removeClass("apex-page-item-error");',
'    $(".a-Form-error").addClass("u-hidden");',
'    switch(accountType) {',
'        case 1:',
'            // If Acccount Type id R (Regular)',
'            changeRequiredRegular();',
'            break;',
'        case 2:',
'            // When Main Company',
'            $("#P58_PAYMENT_TERMS_ID_LABEL > .required").addClass("hide");',
'            $("#P58_CREDIT_LIMIT_LABEL > .required").addClass("hide");',
'            $("#P58_BILLING_BUILDING_AND_STREET_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_CITY_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_CONTACTA_LABEL > .required").removeClass("hide");',
'            $("#P58_SHIPPING_BUILDING_AND_STREET_LABEL > .required").addClass("hide");',
'            $("#P58_SHIPPING_CITY_LABEL > .required").addClass("hide");',
'            $("#P58_SHIPPING_CONTACTA_LABEL > .required").addClass("hide");',
'            $("#P58_MAIN_ACCOUNT_CODE_LABEL > .required").addClass("hide apex_disabled");',
'            $("#P58_MAIN_ACCOUNT_CODE").addClass("apex_disabled");',
'            $("#P58_DEPARTMENT_ACCOUNT_CODE_LABEL > .required").addClass("hide");',
'            $("#P58_DEPARTMENT_ACCOUNT_CODE").addClass("apex_disabled");',
'            $("#P58_MAIN_ACCOUNT_CODE_input").removeAttr("readonly tabindex");',
'            break;',
'        case 3:',
'            // When Department',
'            $("#P58_PAYMENT_TERMS_ID_LABEL > .required").removeClass("hide");',
'            $("#P58_CREDIT_LIMIT_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_BUILDING_AND_STREET_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_CITY_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_CONTACTA_LABEL > .required").removeClass("hide");',
'            $("#P58_SHIPPING_BUILDING_AND_STREET_LABEL > .required").removeClass("hide");',
'            $("#P58_SHIPPING_CITY_LABEL > .required").removeClass("hide");',
'            $("#P58_SHIPPING_CONTACTA_LABEL > .required").addClass("hide");',
'            $("#P58_MAIN_ACCOUNT_CODE_LABEL > .required").removeClass("hide apex_disabled");',
'            $("#P58_MAIN_ACCOUNT_CODE").removeClass("apex_disabled");',
'            $("#P58_DEPARTMENT_ACCOUNT_CODE_LABEL > .required").addClass("hide");',
'            $("#P58_DEPARTMENT_ACCOUNT_CODE").addClass("apex_disabled");',
'            $("#P58_MAIN_ACCOUNT_CODE_input").removeAttr("readonly tabindex");',
'            break;',
'        case 4:',
'            // When Department w/ Sec',
'            $("#P58_PAYMENT_TERMS_ID_LABEL > .required").removeClass("hide");',
'            $("#P58_CREDIT_LIMIT_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_BUILDING_AND_STREET_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_CITY_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_CONTACTA_LABEL > .required").removeClass("hide");',
'            $("#P58_SHIPPING_BUILDING_AND_STREET_LABEL > .required").addClass("hide");',
'            $("#P58_SHIPPING_CITY_LABEL > .required").addClass("hide");',
'            $("#P58_SHIPPING_CONTACTA_LABEL > .required").addClass("hide");',
'            $("#P58_MAIN_ACCOUNT_CODE_LABEL > .required").removeClass("hide apex_disabled");',
'            $("#P58_MAIN_ACCOUNT_CODE").removeClass("apex_disabled");',
'            $("#P58_DEPARTMENT_ACCOUNT_CODE_LABEL > .required").addClass("hide");',
'            $("#P58_DEPARTMENT_ACCOUNT_CODE").addClass("apex_disabled");',
'            $("#P58_MAIN_ACCOUNT_CODE_input").removeAttr("readonly tabindex");',
'            break;',
'        case 5:',
'            // When Section',
'            $("#P58_PAYMENT_TERMS_ID_LABEL > .required").removeClass("hide");',
'            $("#P58_CREDIT_LIMIT_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_BUILDING_AND_STREET_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_CITY_LABEL > .required").removeClass("hide");',
'            $("#P58_BILLING_CONTACTA_LABEL > .required").removeClass("hide");',
'            $("#P58_SHIPPING_BUILDING_AND_STREET_LABEL > .required").removeClass("hide");',
'            $("#P58_SHIPPING_CITY_LABEL > .required").removeClass("hide");',
'            $("#P58_SHIPPING_CONTACTA_LABEL > .required").removeClass("hide");',
'            $("#P58_MAIN_ACCOUNT_CODE_LABEL > .required").addClass("hide");',
'            $("#P58_MAIN_ACCOUNT_CODE").addClass("apex_disabled");',
'            $("#P58_DEPARTMENT_ACCOUNT_CODE_LABEL > .required").removeClass("hide apex_disabled");',
'            $("#P58_DEPARTMENT_ACCOUNT_CODE").removeClass("apex_disabled");',
'            $("#P58_MAIN_ACCOUNT_CODE_input").attr({',
'                readonly:"",',
'                tabindex:"-1"',
'            })',
'            break;',
'        default:',
'            // Similar to R',
'            changeRequiredRegular();',
'    } ',
'}',
'',
'function checkValidations(accountType){',
'    let isValid = true;',
'    // P58_CUSTOMER_CODE',
'    if($v("P58_CUSTOMER_CODE").length <= 0){',
'        $("#P58_CUSTOMER_CODE").addClass("apex-page-item-error");',
'        $("#P58_CUSTOMER_CODE_error_placeholder").removeClass("u-hidden");',
'        $("#P58_CUSTOMER_CODE_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else if( Number( $v("P58_IS_CUSTOMER_CODE_DUPLICATE") ) == 1 ){',
'        $("#P58_CUSTOMER_CODE").addClass("apex-page-item-error");',
'        $("#P58_CUSTOMER_CODE_error_placeholder").removeClass("u-hidden");',
'        $("#P58_CUSTOMER_CODE_error_placeholder").html("Customer Code already exists.");',
'        isValid = false;',
'    } else{',
'        $("#P58_CUSTOMER_CODE").removeClass("apex-page-item-error");',
'        $("#P58_CUSTOMER_CODE_error_placeholder").addClass("u-hidden");',
'    }',
'    // P58_LEGAL_NAME',
'    if($v("P58_LEGAL_NAME").length <= 0){',
'        $("#P58_LEGAL_NAME").addClass("apex-page-item-error");',
'        $("#P58_LEGAL_NAME_error_placeholder").removeClass("u-hidden");',
'        $("#P58_LEGAL_NAME_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else{',
'        $("#P58_LEGAL_NAME").removeClass("apex-page-item-error");',
'        $("#P58_LEGAL_NAME_error_placeholder").addClass("u-hidden");',
'    }',
'    // P58_DBA',
'    if($v("P58_DBA").length <= 0){',
'        $("#P58_DBA").addClass("apex-page-item-error");',
'        $("#P58_DBA_error_placeholder").removeClass("u-hidden");',
'        $("#P58_DBA_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else if( Number( $v("P58_DBA_EXISTS") ) == 1 ){',
'        $("#P58_DBA").addClass("apex-page-item-error");',
'        $("#P58_DBA_error_placeholder").removeClass("u-hidden");',
'        $("#P58_DBA_error_placeholder").html("DBA already exists.");',
'        isValid = false;',
'    } else{',
'        $("#P58_DBA").removeClass("apex-page-item-error");',
'        $("#P58_DBA_error_placeholder").addClass("u-hidden");',
'    }',
'    // P58_ACCOUNT_TYPE_ID',
'    if($v("P58_ACCOUNT_TYPE_ID").length <= 0){',
'        $("#P58_ACCOUNT_TYPE_ID").addClass("apex-page-item-error");',
'        $("#P58_ACCOUNT_TYPE_ID_error_placeholder").removeClass("u-hidden");',
'        $("#P58_ACCOUNT_TYPE_ID_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else{',
'        $("#P58_ACCOUNT_TYPE_ID").removeClass("apex-page-item-error");',
'        $("#P58_ACCOUNT_TYPE_ID_error_placeholder").addClass("u-hidden");',
'    }',
'    // P58_CONTACT_PERSON',
'    if($v("P58_CONTACT_PERSON").length <= 0){',
'        $("#P58_CONTACT_PERSON").addClass("apex-page-item-error");',
'        $("#P58_CONTACT_PERSON_error_placeholder").removeClass("u-hidden");',
'        $("#P58_CONTACT_PERSON_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else{',
'        $("#P58_CONTACT_PERSON").removeClass("apex-page-item-error");',
'        $("#P58_CONTACT_PERSON_error_placeholder").addClass("u-hidden");',
'    }',
'    // P58_ORGANIZATION_TYPE_ID',
'    if($v("P58_ORGANIZATION_TYPE_ID").length <= 0){',
'        $("#P58_ORGANIZATION_TYPE_ID").addClass("apex-page-item-error");',
'        $("#P58_ORGANIZATION_TYPE_ID_error_placeholder").removeClass("u-hidden");',
'        $("#P58_ORGANIZATION_TYPE_ID_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else{',
'        $("#P58_ORGANIZATION_TYPE_ID").removeClass("apex-page-item-error");',
'        $("#P58_ORGANIZATION_TYPE_ID_error_placeholder").addClass("u-hidden");',
'    }',
'    if($v("P58_BILLING_BUILDING_AND_STREET").length <= 0){',
'        $("#P58_BILLING_BUILDING_AND_STREET").addClass("apex-page-item-error");',
'        $("#P58_BILLING_BUILDING_AND_STREET_error_placeholder").removeClass("u-hidden");',
'        $("#P58_BILLING_BUILDING_AND_STREET_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else{',
'        $("#P58_BILLING_BUILDING_AND_STREET").removeClass("apex-page-item-error");',
'        $("#P58_BILLING_BUILDING_AND_STREET_error_placeholder").addClass("u-hidden");',
'    }',
'    // P58_BILLING_CITY',
'    if($v("P58_BILLING_CITY").length <= 0){',
'        $("#P58_BILLING_CITY").addClass("apex-page-item-error");',
'        $("#P58_BILLING_CITY_error_placeholder").removeClass("u-hidden");',
'        $("#P58_BILLING_CITY_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else{',
'        $("#P58_BILLING_CITY").removeClass("apex-page-item-error");',
'        $("#P58_BILLING_CITY_error_placeholder").addClass("u-hidden");',
'    }',
'    // P58_BILLING_CONTACTA',
'    if($v("P58_BILLING_CONTACTA").length <= 0){',
'        $("#P58_BILLING_CONTACTA").addClass("apex-page-item-error");',
'        $("#P58_BILLING_CONTACTA_error_placeholder").removeClass("u-hidden");',
'        $("#P58_BILLING_CONTACTA_error_placeholder").html("Must have some value.");',
'        isValid = false;',
'    } else{',
'        $("#P58_BILLING_CONTACTA").removeClass("apex-page-item-error");',
'        $("#P58_BILLING_CONTACTA_error_placeholder").addClass("u-hidden");',
'    }',
'    // Emails',
unistr('    if( ($v("P58_BILLING_EMAIL").length >= 1) && !(/^[a-zA-Z0-9_.\00B1]+@[a-zA-Z0-9-]+\005C.[a-zA-Z0-9-.]+$/.test($v("P58_BILLING_EMAIL"))) ){'),
'        $("#P58_BILLING_EMAIL").addClass("apex-page-item-error");',
'        $("#P58_BILLING_EMAIL_error_placeholder").removeClass("u-hidden");',
'        $("#P58_BILLING_EMAIL_error_placeholder").html("Email must be Valid Ex. Example@email.com");',
'        isValid = false;',
'    } else{',
'        $("#P58_BILLING_EMAIL").removeClass("apex-page-item-error");',
'        $("#P58_BILLING_EMAIL_error_placeholder").addClass("u-hidden");',
'    }',
unistr('    if( ($v("P58_SHIPPING_EMAIL").length >= 1) && !(/^[a-zA-Z0-9_.\00B1]+@[a-zA-Z0-9-]+\005C.[a-zA-Z0-9-.]+$/.test($v("P58_SHIPPING_EMAIL"))) ){'),
'        $("#P58_SHIPPING_EMAIL").addClass("apex-page-item-error");',
'        $("#P58_SHIPPING_EMAIL_error_placeholder").removeClass("u-hidden");',
'        $("#P58_SHIPPING_EMAIL_error_placeholder").html("Email must be Valid Ex. Example@email.com");',
'        isValid = false;',
'    } else{',
'        $("#P58_SHIPPING_EMAIL").removeClass("apex-page-item-error");',
'        $("#P58_SHIPPING_EMAIL_error_placeholder").addClass("u-hidden");',
'    }',
'',
'    switch(accountType){',
'        case 1:',
'            if($v("P58_PAYMENT_TERMS_ID").length <= 0){',
'                $("#P58_PAYMENT_TERMS_ID").addClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").removeClass("u-hidden");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_PAYMENT_TERMS_ID").removeClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_CREDIT_LIMIT").length <= 0){',
'                $("#P58_CREDIT_LIMIT").addClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").removeClass("u-hidden");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_CREDIT_LIMIT").removeClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_SHIPPING_BUILDING_AND_STREET").length <= 0){',
'                $("#P58_SHIPPING_BUILDING_AND_STREET").addClass("apex-page-item-error");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").removeClass("u-hidden");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_SHIPPING_BUILDING_AND_STREET").removeClass("apex-page-item-error");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_SHIPPING_CITY").length <= 0){',
'                $("#P58_SHIPPING_CITY").addClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CITY_error_placeholder").removeClass("u-hidden");',
'                $("#P58_SHIPPING_CITY_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_SHIPPING_CITY").removeClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CITY_error_placeholder").addClass("u-hidden");',
'            }',
'            break;',
'        case 2:',
'            break;',
'        case 3:',
'            if($v("P58_MAIN_ACCOUNT_CODE").length <= 0){',
'                $("#P58_MAIN_ACCOUNT_CODE_input").addClass("apex-page-item-error");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").removeClass("u-hidden");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else if(Number( $v("P58_IS_MAIN_ACCOUNT_CODE_EXIST") ) == 1 ){',
'                $("#P58_MAIN_ACCOUNT_CODE_input").removeClass("apex-page-item-error");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").addClass("u-hidden");',
'            } else{',
'                $("#P58_MAIN_ACCOUNT_CODE_input").addClass("apex-page-item-error");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").removeClass("u-hidden");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").html("Customer Code of type M does not exists.");',
'                isValid = false;',
'            }',
'            if($v("P58_PAYMENT_TERMS_ID").length <= 0){',
'                $("#P58_PAYMENT_TERMS_ID").addClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").removeClass("u-hidden");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_PAYMENT_TERMS_ID").removeClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_CREDIT_LIMIT").length <= 0){',
'                $("#P58_CREDIT_LIMIT").addClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").removeClass("u-hidden");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_CREDIT_LIMIT").removeClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_SHIPPING_BUILDING_AND_STREET").length <= 0){',
'                $("#P58_SHIPPING_BUILDING_AND_STREET").addClass("apex-page-item-error");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").removeClass("u-hidden");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_SHIPPING_BUILDING_AND_STREET").removeClass("apex-page-item-error");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_SHIPPING_CITY").length <= 0){',
'                $("#P58_SHIPPING_CITY").addClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CITY_error_placeholder").removeClass("u-hidden");',
'                $("#P58_SHIPPING_CITY_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_SHIPPING_CITY").removeClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CITY_error_placeholder").addClass("u-hidden");',
'            }',
'            break;',
'        case 4:',
'            if($v("P58_MAIN_ACCOUNT_CODE").length <= 0){',
'                $("#P58_MAIN_ACCOUNT_CODE_input").addClass("apex-page-item-error");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").removeClass("u-hidden");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else if(Number( $v("P58_IS_MAIN_ACCOUNT_CODE_EXIST") ) == 1 ){',
'                $("#P58_MAIN_ACCOUNT_CODE_input").removeClass("apex-page-item-error");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").addClass("u-hidden");',
'            } else{',
'                $("#P58_MAIN_ACCOUNT_CODE_input").addClass("apex-page-item-error");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").removeClass("u-hidden");',
'                $("#P58_MAIN_ACCOUNT_CODE_error_placeholder").html("Customer Code of type M does not exists.");',
'                isValid = false;',
'            }',
'            if($v("P58_PAYMENT_TERMS_ID").length <= 0){',
'                $("#P58_PAYMENT_TERMS_ID").addClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").removeClass("u-hidden");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_PAYMENT_TERMS_ID").removeClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_CREDIT_LIMIT").length <= 0){',
'                $("#P58_CREDIT_LIMIT").addClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").removeClass("u-hidden");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_CREDIT_LIMIT").removeClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").addClass("u-hidden");',
'            }',
'            break;',
'        case 5:',
'            if($v("P58_DEPARTMENT_ACCOUNT_CODE").length <= 0){',
'                $("#P58_DEPARTMENT_ACCOUNT_CODE_input").addClass("apex-page-item-error");',
'                $("#P58_DEPARTMENT_ACCOUNT_CODE_error_placeholder").removeClass("u-hidden");',
'                $("#P58_DEPARTMENT_ACCOUNT_CODE_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else if(Number( $v("P58_IS_DEPARTMENT_ACCOUNT_CODE_EXIST") ) == 1 ){',
'                $("#P58_DEPARTMENT_ACCOUNT_CODE_input").removeClass("apex-page-item-error");',
'                $("#P58_DEPARTMENT_ACCOUNT_CODE_error_placeholder").addClass("u-hidden");',
'            } else{',
'                $("#P58_DEPARTMENT_ACCOUNT_CODE_input").addClass("apex-page-item-error");',
'                $("#P58_DEPARTMENT_ACCOUNT_CODE_error_placeholder").removeClass("u-hidden");',
'                $("#P58_DEPARTMENT_ACCOUNT_CODE_error_placeholder").html("Customer Code of type DS does not exists.");',
'                isValid = false;',
'            }',
'            if($v("P58_PAYMENT_TERMS_ID").length <= 0){',
'                $("#P58_PAYMENT_TERMS_ID").addClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").removeClass("u-hidden");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_PAYMENT_TERMS_ID").removeClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_CREDIT_LIMIT").length <= 0){',
'                $("#P58_CREDIT_LIMIT").addClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").removeClass("u-hidden");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_CREDIT_LIMIT").removeClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_SHIPPING_BUILDING_AND_STREET").length <= 0){',
'                $("#P58_SHIPPING_BUILDING_AND_STREET").addClass("apex-page-item-error");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").removeClass("u-hidden");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_SHIPPING_BUILDING_AND_STREET").removeClass("apex-page-item-error");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_SHIPPING_CITY").length <= 0){',
'                $("#P58_SHIPPING_CITY").addClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CITY_error_placeholder").removeClass("u-hidden");',
'                $("#P58_SHIPPING_CITY_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_SHIPPING_CITY").removeClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CITY_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_SHIPPING_CONTACTA").length <= 0){',
'                $("#P58_SHIPPING_CONTACTA").addClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CONTACTA_error_placeholder").removeClass("u-hidden");',
'                $("#P58_SHIPPING_CONTACTA_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_SHIPPING_CONTACTA").removeClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CONTACTA_error_placeholder").addClass("u-hidden");',
'            }',
'            break;',
'        default:',
'            if($v("P58_PAYMENT_TERMS_ID").length <= 0){',
'                $("#P58_PAYMENT_TERMS_ID").addClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").removeClass("u-hidden");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_PAYMENT_TERMS_ID").removeClass("apex-page-item-error");',
'                $("#P58_PAYMENT_TERMS_ID_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_CREDIT_LIMIT").length <= 0){',
'                $("#P58_CREDIT_LIMIT").addClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").removeClass("u-hidden");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_CREDIT_LIMIT").removeClass("apex-page-item-error");',
'                $("#P58_CREDIT_LIMIT_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_SHIPPING_BUILDING_AND_STREET").length <= 0){',
'                $("#P58_SHIPPING_BUILDING_AND_STREET").addClass("apex-page-item-error");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").removeClass("u-hidden");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_SHIPPING_BUILDING_AND_STREET").removeClass("apex-page-item-error");',
'                $("#P58_SHIPPING_BUILDING_AND_STREET_error_placeholder").addClass("u-hidden");',
'            }',
'            if($v("P58_SHIPPING_CITY").length <= 0){',
'                $("#P58_SHIPPING_CITY").addClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CITY_error_placeholder").removeClass("u-hidden");',
'                $("#P58_SHIPPING_CITY_error_placeholder").html("Must have some value.");',
'                isValid = false;',
'            } else{',
'                $("#P58_SHIPPING_CITY").removeClass("apex-page-item-error");',
'                $("#P58_SHIPPING_CITY_error_placeholder").addClass("u-hidden");',
'            }',
'    }',
'    return isValid;',
'}',
'',
'$("#P58_CUSTOMER_CODE, #P58_LEGAL_NAME").on("focus", function () {',
'   $(this).select();',
'});',
'',
'$(".a-GV-cell input").keydown(function (e) {if ( e.key == "Enter" ){return false;} else {return true;}});'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.actions.shortcutSupport("off");',
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $(".t-Button--closeAlert").trigger("click");',
'    });',
'}, "5000");',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'.title-header{',
'    margin: 0;',
'    color: white;',
'}',
'',
'#esc, #enter{',
'    display: none;',
'}',
'',
'.form-fields{',
'    background-color: white;',
'    margin-bottom: 0;',
'}',
'.form-fields .t-Region-body{',
'    padding: 0rem 0.8rem 0rem 0.8rem;',
'}',
'',
'#P58_MAIN_ACCOUNT_CODE_input, #P58_DEPARTMENT_ACCOUNT_CODE_input {',
'    text-transform:uppercase;',
'}',
'',
'#customer-form label, ',
'#customer-form input, ',
'#customer-form select {',
'    font-size: 1.125rem;',
'}',
'#customer-form select {',
'    padding-top: 0.438rem;',
'    padding-bottom: 0.438rem;',
'}',
'',
'#customer-form, #addresses-form, #collumn-2{',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.required {',
'    color: red;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'#discountGrid table,',
'#discountGrid tr,',
'#discountGrid td,',
'#discountGrid th {',
'    font-size: 1.125rem;',
'}',
'',
'#discountGrid_ig{',
'    border: 0.0625rem solid rgb(30, 58, 138);',
'}',
'',
'.a-GV-table .a-GV-cell, th.a-GV-header {',
'    border-color: rgb(30, 58, 138);',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#P58_OUTSTANDING_BALANCE_VIEW_LABEL, ',
'#P58_OUTSTANDING_BALANCE_VIEW, ',
'#P58_CREDIT_MEMO_BALANCE_VIEW_LABEL, ',
'#P58_CREDIT_MEMO_BALANCE_VIEW {',
'    font-size: 1.25rem;',
'}',
'',
'.t-Form-labelContainer:has(> #P58_OUTSTANDING_BALANCE_VIEW_LABEL),',
'.t-Form-labelContainer:has(> #P58_CREDIT_MEMO_BALANCE_VIEW_LABEL),',
'.t-Form-labelContainer:has(> #P58_STANDARD_DISCOUNT_LABEL) {',
'    text-align: start;    ',
'}',
'',
'.t-Form-error, .a-Form-error{',
'    font-weight: bold;',
'}',
'',
'#P58_MAIN_ACCOUNT_CODE_input:disabled, #P58_DEPARTMENT_ACCOUNT_CODE_input:disabled, #P58_ACCOUNT_OPENED:disabled, #P58_STANDARD_DISCOUNT:disabled,',
'#P58_ACCOUNT_TYPE_ID:disabled, #P58_ORGANIZATION_TYPE_ID:disabled, #P58_PAYMENT_TERMS_ID:disabled {',
'    color: black;',
'    background-color: #d9d9d9;',
'    opacity: unset;',
'}',
'.is-disabled{',
'    opacity: unset;',
'}',
'',
'.mac-s-value {',
'    opacity: unset;',
'}',
'',
'.mac-s-value input {',
'    color: black;',
'    background-color: #d9d9d9;',
'}',
'',
'.is-selected td{',
'    background-color: #F5DC1C !important;',
'}',
'',
'.is-focused {',
'    box-shadow: 0 0 0 1px black inset !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13859340946632510)
,p_plug_name=>'Buttons'
,p_plug_display_sequence=>70
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13912731848873017)
,p_plug_name=>'Add/Update Customer'
,p_region_name=>'customer-form'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>60
,p_plug_display_column=>1
,p_query_type=>'TABLE'
,p_query_table=>'NPT009'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13861471392632531)
,p_plug_name=>'Billing Header'
,p_parent_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_location=>null
,p_plug_source=>'<h3 class="title-header">Billing Address</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17192766322817131)
,p_plug_name=>'Collumn 2'
,p_region_name=>'collumn-2'
,p_parent_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P58_CUSTOMER_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17192802938817132)
,p_plug_name=>'Balances'
,p_region_name=>'balances'
,p_parent_plug_id=>wwv_flow_imp.id(17192766322817131)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P58_CUSTOMER_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39842997303908925)
,p_plug_name=>'Discounts'
,p_parent_plug_id=>wwv_flow_imp.id(17192766322817131)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15146524195750643)
,p_plug_name=>'Customer Discounts'
,p_region_name=>'discountGrid'
,p_parent_plug_id=>wwv_flow_imp.id(39842997303908925)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    seq_id,',
'    n001,',
'    c001,',
'    c002,',
'    c003,',
'    c004',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DISCOUNTS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P58_CUSTOMER_ID'
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
 p_id=>wwv_flow_imp.id(41302789312763408)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41302859281763409)
,p_name=>'N001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'N001'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41302989437763410)
,p_name=>'C001'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C001'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_AUTO_COMPLETE'
,p_heading=>'Discount Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    DISCOUNT_CODE',
'FROM NPT008'))
,p_lov_display_extra=>true
,p_enable_filter=>false
,p_filter_is_required=>false
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41303057100763411)
,p_name=>'C002'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C002'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
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
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(51459007042420337)
,p_name=>'C003'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C003'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Category'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(73914038927335801)
,p_name=>'C004'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'C004'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15146655034750644)
,p_internal_uid=>15146655034750644
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
,p_fixed_header_max_height=>137
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
 p_id=>wwv_flow_imp.id(15404005397303879)
,p_interactive_grid_id=>wwv_flow_imp.id(15146655034750644)
,p_static_id=>'154041'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(15404256898303881)
,p_report_id=>wwv_flow_imp.id(15404005397303879)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41903039283943423)
,p_view_id=>wwv_flow_imp.id(15404256898303881)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(41302789312763408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41904075184943431)
,p_view_id=>wwv_flow_imp.id(15404256898303881)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(41302859281763409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41905045193943439)
,p_view_id=>wwv_flow_imp.id(15404256898303881)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(41302989437763410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41906056635943446)
,p_view_id=>wwv_flow_imp.id(15404256898303881)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(41303057100763411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(51891814280104204)
,p_view_id=>wwv_flow_imp.id(15404256898303881)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(51459007042420337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(73920656970341771)
,p_view_id=>wwv_flow_imp.id(15404256898303881)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(73914038927335801)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39843446930908930)
,p_plug_name=>'Discount Header'
,p_parent_plug_id=>wwv_flow_imp.id(39842997303908925)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>'<h3 class="title-header" style="color:black">Special/Seasonal Discount</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17194269734817146)
,p_plug_name=>'Addresses'
,p_region_name=>'addresses-form'
,p_parent_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>8
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13860122394632518)
,p_plug_name=>'Billing'
,p_region_name=>'billing'
,p_parent_plug_id=>wwv_flow_imp.id(17194269734817146)
,p_region_css_classes=>'form-fields'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13860278621632519)
,p_plug_name=>'Shipping'
,p_region_name=>'shipping'
,p_parent_plug_id=>wwv_flow_imp.id(17194269734817146)
,p_region_css_classes=>'form-fields'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13861586160632532)
,p_plug_name=>'Shipping Header'
,p_parent_plug_id=>wwv_flow_imp.id(17194269734817146)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>'<h3 style="margin:0;color:white">Shipping Address</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17194385927817147)
,p_plug_name=>'Customer Information'
,p_region_name=>'customer-information'
,p_parent_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_region_css_classes=>'form-fields'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18080433231113209)
,p_plug_name=>'Billing Header'
,p_parent_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<h3 class="title-header">Customer Information</h3>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39843040546908926)
,p_plug_name=>'Discount Header'
,p_parent_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>'<h3 class="title-header">Discount</h3>'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P58_CUSTOMER_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15143408290750612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13859340946632510)
,p_button_name=>'Discount_Inquiry'
,p_button_static_id=>'d'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>D</u> - Discount Inquiry'
,p_button_redirect_url=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::P82_CUSTOMER_ID,P82_INQUIRE_TOGGLE:&P58_CUSTOMER_ID.,&P58_INQUIRE_TOGGLE.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL ',
'WHERE :P58_CUSTOMER_ID IS NOT NULL'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15143743496750615)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13859340946632510)
,p_button_name=>'Update_Customer_Toggle'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>U</u> - Update Customer'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL ',
'WHERE :P58_CUSTOMER_ID IS NOT NULL AND :P58_INQUIRE_TOGGLE IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13859426056632511)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13859340946632510)
,p_button_name=>'Add_Customer'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Enter</u> - Add Customer'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL ',
'WHERE :P58_CUSTOMER_ID IS NULL AND :P58_INQUIRE_TOGGLE IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39843781606908933)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(13859340946632510)
,p_button_name=>'Update_Add_Discount'
,p_button_static_id=>'f6'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F6</u> - Navigate'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P58_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15143889441750616)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(13859340946632510)
,p_button_name=>'Update_Customer'
,p_button_static_id=>'uc'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8</u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM DUAL ',
'WHERE :P58_CUSTOMER_ID IS NOT NULL AND :P58_INQUIRE_TOGGLE IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13859577106632512)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(13859340946632510)
,p_button_name=>'To_Exit'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - To Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_SEARCH_CUSTOMER_CODE,P57_SEARCH_DBA,P57_SEARCH_LEGAL_NAME,P57_SELECTED_VAL_PREV:&P58_SEARCH_CUSTOMER_CODE_PREV.,&P58_SEARCH_DBA_PREV.,&P58_SEARCH_LEGAL_NAME_PREV.,&P58_SELECTED_VAL_PREV.'
,p_button_css_classes=>'btns'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13930109972873098)
,p_branch_name=>'Go To Page 57 Add'
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_ADD_POPUP,P57_SEARCH_CUSTOMER_CODE,P57_SEARCH_DBA,P57_SEARCH_LEGAL_NAME:&P58_CUSTOMER_CODE.,&P58_SEARCH_CUSTOMER_CODE_PREV.,&P58_SEARCH_DBA_PREV.,&P58_SEARCH_LEGAL_NAME_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P58_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(48530686829075703)
,p_branch_name=>'Go To Page 57 Update'
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_UPDATE_POPUP,P57_SEARCH_CUSTOMER_CODE,P57_SEARCH_DBA,P57_SEARCH_LEGAL_NAME,P57_SELECTED_VAL_PREV:&P58_CUSTOMER_CODE.,&P58_SEARCH_CUSTOMER_CODE_PREV.,&P58_SEARCH_DBA_PREV.,&P58_SEARCH_LEGAL_NAME_PREV.,&P58_SELECTED_VAL_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P58_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13859985619632516)
,p_name=>'P58_ACCOUNT_OPENED'
,p_source_data_type=>'DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Account Opened'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13860084553632517)
,p_name=>'P58_PAYMENT_TERMS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Payment Terms <span class="hide required">*</span>'
,p_source=>'PAYMENT_TERMS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NPM006.PAYMENT_NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13860358287632520)
,p_name=>'P58_BILLING_BUILDING_AND_STREET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13860122394632518)
,p_prompt=>'Building And Street <span class="hide required">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>68
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13860416638632521)
,p_name=>'P58_BILLING_CITY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13860122394632518)
,p_prompt=>'City <span class="hide required">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>25
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13860501771632522)
,p_name=>'P58_BILLING_ZIPCODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13860122394632518)
,p_prompt=>'Zipcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13860608680632523)
,p_name=>'P58_SHIPPING_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_source=>'SHIPPING_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13860799671632524)
,p_name=>'P58_SHIPPING_BUILDING_AND_STREET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_prompt=>'Building And Street <span class="hide required">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>68
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13860817848632525)
,p_name=>'P58_SHIPPING_CITY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_prompt=>'City <span class="hide required">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>25
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13860903884632526)
,p_name=>'P58_SHIPPING_ZIPCODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_prompt=>'Zipcode <span class="hide required">*</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13861065245632527)
,p_name=>'P58_BILLING_CONTACTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13860122394632518)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Contact # <span class="hide required">*</span>'
,p_source=>'BILLING_CONTACTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13861179787632528)
,p_name=>'P58_BILLING_CONTACTB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13860122394632518)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Second Contact #'
,p_source=>'BILLING_CONTACTB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13861213176632529)
,p_name=>'P58_BILLING_FAX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13860122394632518)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Fax #'
,p_source=>'BILLING_FAX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13861304293632530)
,p_name=>'P58_BILLING_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13860122394632518)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Email Address'
,p_source=>'BILLING_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13861810856632535)
,p_name=>'P58_CUSTOMER_CODE_INITIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_source=>'CUSTOMER_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13913170684873023)
,p_name=>'P58_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13913582580873029)
,p_name=>'P58_LEGAL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Legal Name <span class="required">*</span>'
,p_source=>'LEGAL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13915564920873039)
,p_name=>'P58_PAYMENT_INSTRUCTIONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Payment Terms Instructions'
,p_source=>'PAYMENT_INSTRUCTIONS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13915998206873040)
,p_name=>'P58_BILLING_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13860122394632518)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_source=>'BILLING_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13916308434873040)
,p_name=>'P58_SHIPPING_CONTACTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Contact # <span class="hide required">*</span>'
,p_source=>'SHIPPING_CONTACTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13916782954873040)
,p_name=>'P58_SHIPPING_CONTACTB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Second Contact #'
,p_source=>'SHIPPING_CONTACTB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13917109421873042)
,p_name=>'P58_SHIPPING_FAX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Fax #'
,p_source=>'SHIPPING_FAX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13917564015873042)
,p_name=>'P58_SHIPPING_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Email Address'
,p_source=>'SHIPPING_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13917986095873042)
,p_name=>'P58_SHIPPING_INSTRUCTIONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Special Instructions'
,p_source=>'SHIPPING_INSTRUCTIONS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13918352531873043)
,p_name=>'P58_OUTSTANDING_BALANCE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_source=>'OUTSTANDING_BALANCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13918795568873043)
,p_name=>'P58_MAIN_ACCOUNT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Main Account Code <span class="hide required">*</span>'
,p_source=>'MAIN_ACCOUNT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CUSTOMER_CODE',
'FROM NPT009',
'WHERE ACCOUNT_TYPE_ID = 2'))
,p_cSize=>32
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13919127659873045)
,p_name=>'P58_CUSTOMER_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Customer Code <span class="required">*</span>'
,p_source=>'CUSTOMER_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13919530156873045)
,p_name=>'P58_DBA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'DBA <span class="required">*</span>'
,p_source=>'DBA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13919923046873045)
,p_name=>'P58_CONTACT_PERSON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Contact Person <span class="required">*</span>'
,p_source=>'CONTACT_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13920308447873048)
,p_name=>'P58_ORGANIZATION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Organization Type <span class="required">*</span>'
,p_source=>'ORGANIZATION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NPM010.ORGANIZATION_TYPE_NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13921099541873081)
,p_name=>'P58_CREDIT_LIMIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Credit Limit <span class="hide required">*</span>'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13921457981873081)
,p_name=>'P58_ACCOUNT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Type <span class="required">*</span>'
,p_source=>'ACCOUNT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NPM003.ACCOUNT_TYPE_CODE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14304212607089713)
,p_name=>'P58_IS_CUSTOMER_CODE_DUPLICATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17192662989817130)
,p_name=>'P58_INQUIRE_TOGGLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17192989212817133)
,p_name=>'P58_OUTSTANDING_BALANCE_VIEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17192802938817132)
,p_prompt=>'Outstanding Balance: '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17193095866817134)
,p_name=>'P58_CREDIT_MEMO_BALANCE_VIEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17192802938817132)
,p_prompt=>'Credit Memo Balance: '
,p_source=>'0.00'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>5
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18082729835113232)
,p_name=>'P58_IS_MAIN_ACCOUNT_CODE_EXIST'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39843320388908929)
,p_name=>'P58_STANDARD_DISCOUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39842997303908925)
,p_prompt=>'Standard Discount:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39845327945908949)
,p_name=>'P58_DISCOUNT_ID_TEMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(39842997303908925)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39845421118908950)
,p_name=>'P58_DISCOUNT_DATE_TO_TEMP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(39842997303908925)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41023595716027315)
,p_name=>'P58_EDIT_MODE'
,p_item_sequence=>10
,p_item_default=>'Details'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41302274416763403)
,p_name=>'P58_STANDARD_DISCOUNT_VALUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_source=>'STANDARD_DISCOUNT_VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48021304691143035)
,p_name=>'P58_SELECTED_VAL_PREV'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48021496531143036)
,p_name=>'P58_SEARCH_CUSTOMER_CODE_PREV'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48021553896143037)
,p_name=>'P58_SEARCH_LEGAL_NAME_PREV'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48021690005143038)
,p_name=>'P58_SEARCH_DBA_PREV'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51458996056420336)
,p_name=>'P58_DISCOUNT_CATEGORY_TEMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(39842997303908925)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52041731284047032)
,p_name=>'P58_DBA_EXISTS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52042647142047041)
,p_name=>'P58_PERC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39842997303908925)
,p_item_default=>'%'
,p_prompt=>'Perc'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58835172882496510)
,p_name=>'P58_IS_DEPARTMENT_ACCOUNT_CODE_EXIST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58835278469496511)
,p_name=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_prompt=>'Department Account Code <span class="hide required">*</span>'
,p_source=>'DEPARTMENT_ACCOUNT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CUSTOMER_CODE',
'FROM NPT009',
'WHERE ACCOUNT_TYPE_ID = 4'))
,p_cSize=>32
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58837521540496534)
,p_name=>'P58_BILLING_PA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13860122394632518)
,p_prompt=>'State'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58837678245496535)
,p_name=>'P58_SHIPPING_PA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13860278621632519)
,p_prompt=>'State'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73914261024335803)
,p_name=>'P58_STANDARD_DISCOUNT_VALUE_INITIAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(17194385927817147)
,p_item_source_plug_id=>wwv_flow_imp.id(13912731848873017)
,p_source=>'STANDARD_DISCOUNT_VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(13862908938632546)
,p_computation_sequence=>10
,p_computation_item=>'P58_ACCOUNT_OPENED'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT TO_CHAR(SYSDATE, ''MM/DD/YYYY'') FROM DUAL'
,p_compute_when=>'P58_CUSTOMER_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(57587831497995833)
,p_computation_sequence=>30
,p_computation_item=>'P58_OUTSTANDING_BALANCE_VIEW'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- SELECT TO_CHAR( NVL(:P58_OUTSTANDING_BALANCE, 0),''999G999G990D99'' ) FROM DUAL',
'SELECT',
'    TO_CHAR( NVL( SUM(OUTSTANDING_BALANCE), 0 ),''999G999G990D99'' )',
'FROM',
'    NPT001',
'WHERE',
'    CUSTOMER_ID = (SELECT CUSTOMER_ID FROM NPT009 WHERE UPPER(DBA) = UPPER(:P58_DBA)) AND',
'    OUTSTANDING_BALANCE > 0'))
,p_compute_when=>'P58_CUSTOMER_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(41302573683763406)
,p_computation_sequence=>50
,p_computation_item=>'P58_STANDARD_DISCOUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'SELECT :P58_STANDARD_DISCOUNT_VALUE FROM DUAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13863209495632549)
,p_name=>'Check Dynamic Validations'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13859426056632511)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18082868797113233)
,p_event_id=>wwv_flow_imp.id(13863209495632549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Check if Main Account Code Exist'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_customer_code_existing NUMBER;',
'BEGIN',
'    SELECT DISTINCT COUNT(1)',
'        INTO l_customer_code_existing',
'        FROM NPT009',
'        WHERE CUSTOMER_CODE = :P58_MAIN_ACCOUNT_CODE;',
'',
'    :P58_IS_MAIN_ACCOUNT_CODE_EXIST := l_customer_code_existing;',
'END;'))
,p_attribute_02=>'P58_MAIN_ACCOUNT_CODE'
,p_attribute_03=>'P58_IS_MAIN_ACCOUNT_CODE_EXIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'3,4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58835489923496513)
,p_event_id=>wwv_flow_imp.id(13863209495632549)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Check if Department Account Code Exist'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_customer_code_existing NUMBER;',
'BEGIN',
'    SELECT DISTINCT COUNT(1)',
'        INTO l_customer_code_existing',
'        FROM NPT009',
'        WHERE CUSTOMER_CODE = :P58_DEPARTMENT_ACCOUNT_CODE AND',
'        ACCOUNT_TYPE_ID = 4;',
'',
'    :P58_IS_DEPARTMENT_ACCOUNT_CODE_EXIST := l_customer_code_existing;',
'END;'))
,p_attribute_02=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_attribute_03=>'P58_IS_DEPARTMENT_ACCOUNT_CODE_EXIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52041920294047034)
,p_event_id=>wwv_flow_imp.id(13863209495632549)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Check if DBA Exist'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_dba_existing NUMBER;',
'BEGIN',
'    SELECT DISTINCT COUNT(1)',
'        INTO l_dba_existing',
'        FROM NPT009',
'        WHERE UPPER(DBA) = UPPER(:P58_DBA);',
'',
'    :P58_DBA_EXISTS := l_dba_existing;',
'END;'))
,p_attribute_02=>'P58_CUSTOMER_ID,P58_DBA'
,p_attribute_03=>'P58_DBA_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14304110265089712)
,p_event_id=>wwv_flow_imp.id(13863209495632549)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_customer_code_existing NUMBER;',
'BEGIN',
'    IF :P58_CUSTOMER_ID IS NULL THEN',
'        SELECT DISTINCT COUNT(1)',
'        INTO l_customer_code_existing',
'        FROM NPT009',
'        WHERE CUSTOMER_CODE = :P58_CUSTOMER_CODE;',
'    ELSIF :P58_CUSTOMER_CODE_INITIAL = :P58_CUSTOMER_CODE THEN',
'            l_customer_code_existing := 0;',
'        ELSE',
'        SELECT DISTINCT COUNT(1)',
'            INTO l_customer_code_existing',
'            FROM NPT009',
'            WHERE CUSTOMER_CODE = :P58_CUSTOMER_CODE AND CUSTOMER_CODE != :P58_CUSTOMER_CODE_INITIAL;',
'    END IF;',
'    :P58_IS_CUSTOMER_CODE_DUPLICATE := l_customer_code_existing;',
'END;'))
,p_attribute_02=>'P58_CUSTOMER_CODE_INITIAL,P58_CUSTOMER_CODE,P58_CUSTOMER_ID'
,p_attribute_03=>'P58_IS_CUSTOMER_CODE_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13863305000632550)
,p_event_id=>wwv_flow_imp.id(13863209495632549)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let isValid = checkValidations( Number( $v("P58_ACCOUNT_TYPE_ID") ) );',
'if(isValid){',
'    apex.page.submit( "SUBMIT" );',
'} else {',
'    $(".apex-page-item-error").first().focus();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14303065400089701)
,p_name=>'Change Required Fields'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_ACCOUNT_TYPE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14303104637089702)
,p_event_id=>wwv_flow_imp.id(14303065400089701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'changeRequired( Number( $v("P58_ACCOUNT_TYPE_ID") ) );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58837397740496532)
,p_event_id=>wwv_flow_imp.id(14303065400089701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P58_MAIN_ACCOUNT_CODE").addClass("mac-s-value");'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58837410840496533)
,p_event_id=>wwv_flow_imp.id(14303065400089701)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P58_MAIN_ACCOUNT_CODE").removeClass("mac-s-value");'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17193205236817136)
,p_event_id=>wwv_flow_imp.id(14303065400089701)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58836312140496522)
,p_event_id=>wwv_flow_imp.id(14303065400089701)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_DEPARTMENT_ACCOUNT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14303621639089707)
,p_event_id=>wwv_flow_imp.id(14303065400089701)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'3,4,5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58836833657496527)
,p_event_id=>wwv_flow_imp.id(14303065400089701)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58836905562496528)
,p_event_id=>wwv_flow_imp.id(14303065400089701)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
,p_client_condition_type=>'NOT_IN_LIST'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'3,4,5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14303874012089709)
,p_event_id=>wwv_flow_imp.id(14303065400089701)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18082082632113225)
,p_name=>'Set Title'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18082160779113226)
,p_event_id=>wwv_flow_imp.id(18082082632113225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTitle("Add Customer");'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P58_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18082363490113228)
,p_event_id=>wwv_flow_imp.id(18082082632113225)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTitle("Update Customer");'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P58_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30858445651955713)
,p_event_id=>wwv_flow_imp.id(18082082632113225)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setTitle("Inquire Customer");'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P58_INQUIRE_TOGGLE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15143919499750617)
,p_name=>'On load Update'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15144936205750627)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Unselectable Text Fields'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".apex-item-text, .apex-item-select").attr({',
'    readonly:"",',
'    tabindex:"-1"',
'})',
'$(".required").addClass("hide");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15145880848750636)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Disable Update Customer Button'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15143889441750616)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15146361516750641)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Disable Main Account Code'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58836637463496525)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Disable Department Account Code'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_DEPARTMENT_ACCOUNT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39844222629908938)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39843781606908933)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58838380472496542)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15143889441750616)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41022591059027305)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Disable Standard Discount On Load'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_STANDARD_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41023277628027312)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Disable Seasonal Discount On load'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#discountGrid'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57585657289995811)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'Disable Account Type'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_ACCOUNT_TYPE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57585755982995812)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'Disable Organization Type'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_ORGANIZATION_TYPE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57587690230995831)
,p_event_id=>wwv_flow_imp.id(15143919499750617)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>'Disable Payment Terms'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_PAYMENT_TERMS_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15143260684750610)
,p_name=>'Populate Addresses'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15143311583750611)
,p_event_id=>wwv_flow_imp.id(15143260684750610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let billingAddress = splitAddress($v("P58_BILLING_ADDRESS"));',
'',
'apex.item("P58_BILLING_BUILDING_AND_STREET").setValue(billingAddress[0]);',
'apex.item("P58_BILLING_CITY").setValue(billingAddress[1]);',
'',
'if(billingAddress[2] != "undefined") {',
'    apex.item("P58_BILLING_PA").setValue(billingAddress[2]);',
'}',
'',
'if(billingAddress[3] != "undefined") {',
'    apex.item("P58_BILLING_ZIPCODE").setValue(billingAddress[3]);',
'}',
'',
'let shippingAddress = splitAddress($v("P58_SHIPPING_ADDRESS"));',
'',
'if(shippingAddress[0] != "undefined"){',
'    apex.item("P58_SHIPPING_BUILDING_AND_STREET").setValue(shippingAddress[0]);',
'}',
'',
'if(shippingAddress[1] != "undefined") {',
'    apex.item("P58_SHIPPING_CITY").setValue(shippingAddress[1]);',
'}',
'',
'if(shippingAddress[2] != "undefined") {',
'    apex.item("P58_SHIPPING_PA").setValue(shippingAddress[2]);',
'}',
'',
'if(shippingAddress[3] != "undefined") {',
'    apex.item("P58_SHIPPING_ZIPCODE").setValue(shippingAddress[3]);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15144186439750619)
,p_name=>'Enable Fields'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15143743496750615)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15145023729750628)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".apex-item-text, .apex-item-select").removeAttr("readonly tabindex");',
'$x(''P58_CUSTOMER_CODE'').focus();',
'mapP58KeysUpdateOn();',
'',
'$("#P58_CUSTOMER_CODE_LABEL > .required").removeClass("hide");',
'$("#P58_LEGAL_NAME_LABEL > .required").removeClass("hide");',
'$("#P58_DBA_LABEL > .required").removeClass("hide");',
'$("#P58_ACCOUNT_TYPE_ID_LABEL > .required").removeClass("hide");',
'$("#P58_CONTACT_PERSON_LABEL > .required").removeClass("hide");',
'$("#P58_ORGANIZATION_TYPE_ID_LABEL > .required").removeClass("hide");',
'$("#P58_PAYMENT_INSTRUCTIONS_LABEL > .required").removeClass("hide");',
'changeRequired( Number( $v("P58_ACCOUNT_TYPE_ID") ) );'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15144333920750621)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
,p_server_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_server_condition_expr1=>'P58_ACCOUNT_TYPE_ID'
,p_server_condition_expr2=>'3:4:5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58836740992496526)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P58_ACCOUNT_TYPE_ID'
,p_server_condition_expr2=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15145532453750633)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15143889441750616)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57585884487995813)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_ORGANIZATION_TYPE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57585975086995814)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_ACCOUNT_TYPE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57587764224995832)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_PAYMENT_TERMS_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15145377335750631)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15143743496750615)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15145640432750634)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15143743496750615)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15145496914750632)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15143408290750612)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15145703370750635)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15143408290750612)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39844374220908939)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39843781606908933)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58838497348496543)
,p_event_id=>wwv_flow_imp.id(15144186439750619)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(15143889441750616)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15144489385750622)
,p_name=>'On load Add'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15144584708750623)
,p_event_id=>wwv_flow_imp.id(15144489385750622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP58KeysAdd();',
'$x(''P58_CUSTOMER_CODE'').focus();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15146423929750642)
,p_event_id=>wwv_flow_imp.id(15144489385750622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58836540558496524)
,p_event_id=>wwv_flow_imp.id(15144489385750622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_DEPARTMENT_ACCOUNT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39844184610908937)
,p_event_id=>wwv_flow_imp.id(15144489385750622)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39843781606908933)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15144606307750624)
,p_name=>'Map Update keys'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15144721257750625)
,p_event_id=>wwv_flow_imp.id(15144606307750624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysUpdate();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15146004974750638)
,p_name=>'Check Dynamic Actions'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15143889441750616)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18083482275113239)
,p_event_id=>wwv_flow_imp.id(15146004974750638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Check if Main Account Code Exist'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_customer_code_existing NUMBER;',
'BEGIN',
'    SELECT DISTINCT COUNT(1)',
'        INTO l_customer_code_existing',
'        FROM NPT009',
'        WHERE CUSTOMER_CODE = :P58_MAIN_ACCOUNT_CODE AND',
'        ACCOUNT_TYPE_ID = 2;',
'',
'    :P58_IS_MAIN_ACCOUNT_CODE_EXIST := l_customer_code_existing;',
'END;'))
,p_attribute_02=>'P58_MAIN_ACCOUNT_CODE'
,p_attribute_03=>'P58_IS_MAIN_ACCOUNT_CODE_EXIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'3,4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58835367532496512)
,p_event_id=>wwv_flow_imp.id(15146004974750638)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Check if Department Account Code Exist'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_customer_code_existing NUMBER;',
'BEGIN',
'    SELECT DISTINCT COUNT(1)',
'        INTO l_customer_code_existing',
'        FROM NPT009',
'        WHERE CUSTOMER_CODE = :P58_DEPARTMENT_ACCOUNT_CODE AND',
'        ACCOUNT_TYPE_ID = 4;',
'',
'    :P58_IS_DEPARTMENT_ACCOUNT_CODE_EXIST := l_customer_code_existing;',
'END;'))
,p_attribute_02=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_attribute_03=>'P58_IS_DEPARTMENT_ACCOUNT_CODE_EXIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52041802071047033)
,p_event_id=>wwv_flow_imp.id(15146004974750638)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Check if DBA Exist'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_dba_existing NUMBER;',
'BEGIN',
'    SELECT DISTINCT COUNT(1)',
'        INTO l_dba_existing',
'        FROM NPT009',
'        WHERE UPPER(DBA) = UPPER(:P58_DBA)',
'        AND CUSTOMER_ID != :P58_CUSTOMER_ID;',
'',
'    :P58_DBA_EXISTS := l_dba_existing;',
'END;'))
,p_attribute_02=>'P58_DBA,P58_CUSTOMER_ID'
,p_attribute_03=>'P58_DBA_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15146157181750639)
,p_event_id=>wwv_flow_imp.id(15146004974750638)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_customer_code_existing NUMBER;',
'BEGIN',
'    IF :P58_CUSTOMER_ID IS NULL THEN',
'        SELECT DISTINCT COUNT(1)',
'        INTO l_customer_code_existing',
'        FROM NPT009',
'        WHERE CUSTOMER_CODE = :P58_CUSTOMER_CODE;',
'    ELSIF :P58_CUSTOMER_CODE_INITIAL = :P58_CUSTOMER_CODE THEN',
'            l_customer_code_existing := 0;',
'        ELSE',
'        SELECT DISTINCT COUNT(1)',
'            INTO l_customer_code_existing',
'            FROM NPT009',
'            WHERE CUSTOMER_CODE = :P58_CUSTOMER_CODE AND CUSTOMER_CODE != :P58_CUSTOMER_CODE_INITIAL;',
'    END IF;',
'    :P58_IS_CUSTOMER_CODE_DUPLICATE := l_customer_code_existing;',
'END;'))
,p_attribute_02=>'P58_CUSTOMER_CODE_INITIAL,P58_CUSTOMER_CODE,P58_CUSTOMER_ID'
,p_attribute_03=>'P58_IS_CUSTOMER_CODE_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15146236265750640)
,p_event_id=>wwv_flow_imp.id(15146004974750638)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let isValid = checkValidations( Number( $v("P58_ACCOUNT_TYPE_ID") ) );',
'if(isValid){',
'    var region = apex.region(''discountGrid'');',
'    var views = region.widget().interactiveGrid(''getViews'');',
'    views.grid.model.clearChanges();',
'    apex.page.submit( "SUBMIT" );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39842386515908919)
,p_name=>'Create Collection'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39842463800908920)
,p_event_id=>wwv_flow_imp.id(39842386515908919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_collection_name varchar2(20) := ''DISCOUNTS'';',
'    v_initial_discounts varchar2(30) := ''INITIAL_DISCOUNTS'';',
'    cnt NUMBER;',
'    v_id NPT032.DISCOUNT_ID%TYPE;',
'    v_code NPT008.DISCOUNT_CODE%TYPE;',
'    v_end_date VARCHAR2(12 CHAR);',
'    v_category NPT008.CATEGORY%TYPE;',
'    v_position NPT032.POSITION%TYPE;',
'    v_position_loop VARCHAR2(1 CHAR);',
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_collection_name);',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(v_initial_discounts);',
'    -- FOR d IN (',
'    --     SELECT a.DISCOUNT_ID ID, a.POSITION, b.DISCOUNT_CODE CODE, TO_CHAR(b.DATE_TO, ''MM/DD/YYYY'') END_DATE, b.CATEGORY CAT',
'    --         FROM NPT032 a, NPT008 b',
'    --     WHERE a.CUSTOMER_ID = :P58_CUSTOMER_ID AND a.ACTIVE = ''y'' AND a.DISCOUNT_ID = b.DISCOUNT_ID',
'    --     ORDER BY a.POSITION',
'    -- ) LOOP',
'    --     apex_collection.add_member (p_collection_name => v_collection_name,',
'    --         p_n001 => d.ID,',
'    --         p_c001 => d.CODE,',
'    --         p_c002 => d.END_DATE,',
'    --         p_c003 => d.CAT,',
'    --         p_c004 => d.POSITION',
'    --     ); ',
'    -- END LOOP;',
'',
'    FOR i IN 1..3 LOOP',
'        IF (i = 1) THEN',
'            v_position_loop := ''A'';',
'        ELSIF (i = 2) THEN',
'            v_position_loop := ''B'';',
'        ELSE',
'            v_position_loop := ''C'';',
'        END IF;',
'',
'        SELECT COUNT(1)',
'        INTO cnt',
'        FROM NPT032',
'        WHERE CUSTOMER_ID = :P58_CUSTOMER_ID AND ACTIVE = ''y'' AND POSITION = v_position_loop;',
'',
'        IF (cnt >= 1) THEN',
'            SELECT a.DISCOUNT_ID, a.POSITION, b.DISCOUNT_CODE, TO_CHAR(b.DATE_TO, ''MM/DD/YYYY''), b.CATEGORY',
'            INTO v_id, v_position, v_code, v_end_date, v_category',
'            FROM NPT032 a, NPT008 b',
'            WHERE a.CUSTOMER_ID = :P58_CUSTOMER_ID AND a.ACTIVE = ''y'' AND a.DISCOUNT_ID = b.DISCOUNT_ID AND POSITION = v_position_loop;',
'',
'            apex_collection.add_member (p_collection_name => v_collection_name,',
'                p_n001 => v_id,',
'                p_c001 => v_code,',
'                p_c002 => v_end_date,',
'                p_c003 => v_category,',
'                p_c004 => v_position',
'            ); ',
'        ELSE',
'            apex_collection.add_member (p_collection_name => v_collection_name,',
'                p_n001 => '''',',
'                p_c001 => '''',',
'                p_c004 => v_position_loop',
'            ); ',
'        END IF;',
'    END LOOP;',
'',
'    FOR c IN (',
'        SELECT N001, C004',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = v_collection_name',
'    ) LOOP',
'        apex_collection.add_member (p_collection_name => v_initial_discounts,',
'            p_n001 => c.N001,',
'            p_c001 => c.C004',
'        ); ',
'    END LOOP;',
'    -- IF (cnt = 0) THEN',
'    --     FOR i IN 1..3 LOOP',
'    --         apex_collection.add_member (p_collection_name => v_collection_name,',
'    --             p_n001 => '''',',
'    --             p_c001 => ''''',
'    --         ); ',
'    --     END LOOP;',
'    -- ELSIF (cnt = 1) THEN ',
'    --     FOR i IN 1..2 LOOP',
'    --         apex_collection.add_member (p_collection_name => v_collection_name,',
'    --             p_n001 => '''',',
'    --             p_c001 => ''''',
'    --         ); ',
'    --     END LOOP;',
'    -- ELSIF (cnt = 2) THEN ',
'    --     apex_collection.add_member (p_collection_name => v_collection_name,',
'    --         p_n001 => '''',',
'    --         p_c001 => ''''',
'    --     ); ',
'    -- END IF;',
'',
'    -- EXCEPTION WHEN others THEN',
'    --     raise_application_error(-2000,DBMS_UTILITY.format_error_backtrace);',
'END;'))
,p_attribute_02=>'P58_CUSTOMER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39845046051908946)
,p_event_id=>wwv_flow_imp.id(39842386515908919)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15146524195750643)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39844701901908943)
,p_name=>'Value Change'
,p_event_sequence=>150
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15146524195750643)
,p_triggering_element=>'C001'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39844818207908944)
,p_event_id=>wwv_flow_imp.id(39844701901908943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'cnt NUMBER;',
'd_id NUMBER;',
'd_end_date VARCHAR2(20 CHAR);',
'd_category VARCHAR2(20 CHAR);',
'BEGIN',
'    IF (:C001 IS NOT NULL) THEN',
'        SELECT ',
'            COUNT(DISCOUNT_ID)',
'        INTO',
'            cnt',
'        FROM NPT008',
'        WHERE DISCOUNT_CODE = :C001;',
'',
'        IF (cnt != 0) THEN',
'            SELECT ',
'            DISCOUNT_ID, TO_CHAR(DATE_TO, ''MM/DD/YYYY''), CATEGORY',
'            INTO',
'                d_id, d_end_date, d_category',
'            FROM NPT008',
'            WHERE DISCOUNT_CODE = :C001;',
'            APEX_COLLECTION.UPDATE_MEMBER (',
'                p_collection_name => ''DISCOUNTS'',',
'                p_seq => :SEQ_ID,',
'                p_n001 => d_id,',
'                p_c002 => d_end_date,',
'                p_c003 => d_category,',
'                p_c004 => :C004',
'            );',
'            :P58_DISCOUNT_ID_TEMP := d_id;',
'            :P58_DISCOUNT_DATE_TO_TEMP := d_end_date;',
'            :P58_DISCOUNT_CATEGORY_TEMP := d_category;',
'        ELSE',
'            APEX_COLLECTION.UPDATE_MEMBER (',
'                p_collection_name => ''DISCOUNTS'',',
'                p_seq => :SEQ_ID,',
'                p_n001 => NULL,',
'                p_c002 => NULL,',
'                p_c003 => NULL,',
'                p_c004 => :C004',
'            );',
'            :P58_DISCOUNT_ID_TEMP := null;',
'            :P58_DISCOUNT_DATE_TO_TEMP := null;',
'            :P58_DISCOUNT_CATEGORY_TEMP := null;',
'        END IF;',
'    ELSE',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'            p_collection_name => ''DISCOUNTS'',',
'            p_seq => :SEQ_ID,',
'            p_n001 => NULL,',
'            p_c002 => NULL,',
'            p_c003 => NULL,',
'            p_c004 => :C004',
'        );',
'        :P58_DISCOUNT_ID_TEMP := null;',
'        :P58_DISCOUNT_DATE_TO_TEMP := null;',
'        :P58_DISCOUNT_CATEGORY_TEMP := null;',
'    END IF;',
'    APEX_COLLECTION.RESEQUENCE_COLLECTION (''DISCOUNTS'');',
'END;'))
,p_attribute_02=>'SEQ_ID,C001,C004'
,p_attribute_03=>'P58_DISCOUNT_ID_TEMP,P58_DISCOUNT_DATE_TO_TEMP,P58_DISCOUNT_CATEGORY_TEMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41022350414027303)
,p_event_id=>wwv_flow_imp.id(39844701901908943)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region(''discountGrid'').widget().interactiveGrid(''getViews'',''grid'');',
'var model = grid.model;',
'var record = grid.getSelectedRecords();',
'',
'record.forEach(function(object, index){',
'    rec = record[index];',
'    model.setValue(rec,''N001'',apex.item( "P58_DISCOUNT_ID_TEMP" ).getValue());',
'    model.setValue(rec,''C002'',apex.item( "P58_DISCOUNT_DATE_TO_TEMP" ).getValue());',
'    model.setValue(rec,''C003'',apex.item( "P58_DISCOUNT_CATEGORY_TEMP" ).getValue());',
'})',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41023348799027313)
,p_name=>'Discount Edit'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39843781606908933)
,p_condition_element=>'P58_EDIT_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Details'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41023488787027314)
,p_event_id=>wwv_flow_imp.id(41023348799027313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Enable Standard Discount'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_STANDARD_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41023674150027316)
,p_event_id=>wwv_flow_imp.id(41023348799027313)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Enable Seasonal Discount'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#discountGrid'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41024577784027325)
,p_event_id=>wwv_flow_imp.id(41023348799027313)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Disable Details'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(''#customer-information input, #customer-information select, #billing input, #shipping input'')',
'//     .attr(''disabled'',''disabled'');',
'',
'$(''#P58_CUSTOMER_CODE, #P58_LEGAL_NAME, #P58_DBA, #P58_CREDIT_LIMIT, #P58_PAYMENT_INSTRUCTIONS, #customer-information select, #billing input, #shipping input'')',
'    .attr(''disabled'',''disabled'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41024797142027327)
,p_event_id=>wwv_flow_imp.id(41023348799027313)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Disable Main Account Code'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41025266625027332)
,p_event_id=>wwv_flow_imp.id(41023348799027313)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_STANDARD_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41023765803027317)
,p_name=>'Details Edit'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39843781606908933)
,p_condition_element=>'P58_EDIT_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Discounts'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41023808854027318)
,p_event_id=>wwv_flow_imp.id(41023765803027317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Disable Standard Discount'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_STANDARD_DISCOUNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41024075837027320)
,p_event_id=>wwv_flow_imp.id(41023765803027317)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Disable Standard Discount'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#discountGrid'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41024609554027326)
,p_event_id=>wwv_flow_imp.id(41023765803027317)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Enable Details'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(''#customer-information input, #customer-information select, #billing input, #shipping input'')',
'//     .removeAttr(''disabled'');',
'',
'$(''#P58_CUSTOMER_CODE, #P58_LEGAL_NAME, #P58_DBA, #P58_CREDIT_LIMIT, #P58_PAYMENT_INSTRUCTIONS, #customer-information select, #billing input, #shipping input'')',
'    .removeAttr(''disabled'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41024871582027328)
,p_event_id=>wwv_flow_imp.id(41023765803027317)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Disable Main Account Code'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'1,2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41024996590027329)
,p_event_id=>wwv_flow_imp.id(41023765803027317)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Enable Main Account Code'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'3,4,5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65479640115001903)
,p_event_id=>wwv_flow_imp.id(41023765803027317)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Disable Department Account Code'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'1,2,3,4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65479852005001905)
,p_event_id=>wwv_flow_imp.id(41023765803027317)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Enable Department Account Code'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41025329029027333)
,p_event_id=>wwv_flow_imp.id(41023765803027317)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Set Focus'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $( document ).ready(function() {',
'        $x(''P58_CUSTOMER_CODE'').focus();',
'    });',
'}, 100);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41026427469027344)
,p_event_id=>wwv_flow_imp.id(41023765803027317)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Reset Key Mapping'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysUpdateOn();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41024310423027323)
,p_name=>'Set Mode'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39843781606908933)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41024425581027324)
,p_event_id=>wwv_flow_imp.id(41024310423027323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $("#P58_EDIT_MODE").val() == "Details" ){',
'    $("#P58_EDIT_MODE").val("Discounts");',
'} else {',
'    $("#P58_EDIT_MODE").val("Details");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41025497590027334)
,p_name=>'Lose Focus'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_STANDARD_DISCOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41025589139027335)
,p_event_id=>wwv_flow_imp.id(41025497590027334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".a-GV-cell").trigger("dblclick");'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P58_EDIT_MODE'
,p_client_condition_expression=>'Discounts'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41026959646027349)
,p_name=>'C001 Get Focus'
,p_event_sequence=>200
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15146524195750643)
,p_triggering_element=>'C001'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41027081631027350)
,p_event_id=>wwv_flow_imp.id(41026959646027349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".a-GV-cell input").keydown(function (e) {if ( e.key == "Enter" ){return false;} else {return true;}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41302353504763404)
,p_name=>'Change Standard Discount Value'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_STANDARD_DISCOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41302482044763405)
,p_event_id=>wwv_flow_imp.id(41302353504763404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_STANDARD_DISCOUNT_VALUE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT :P58_STANDARD_DISCOUNT FROM DUAL'
,p_attribute_07=>'P58_STANDARD_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41303107952763412)
,p_name=>'C003 Get Focus'
,p_event_sequence=>230
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(15146524195750643)
,p_triggering_element=>'C003'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41303279854763413)
,p_event_id=>wwv_flow_imp.id(41303107952763412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysUpdateDiscounts();'
,p_build_option_id=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41305103940763432)
,p_name=>'Get Focus'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_STANDARD_DISCOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41305267955763433)
,p_event_id=>wwv_flow_imp.id(41305103940763432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysUpdateDiscounts();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57586051496995815)
,p_name=>'Get Focus Add MAC'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_MAIN_ACCOUNT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57586185465995816)
,p_event_id=>wwv_flow_imp.id(57586051496995815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysAddMACFocused();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58835546009496514)
,p_name=>'Get Focus Add DAC'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58835690334496515)
,p_event_id=>wwv_flow_imp.id(58835546009496514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysAddMACFocused();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57586209091995817)
,p_name=>'Lose Focus Add MAC'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_MAIN_ACCOUNT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57586387002995818)
,p_event_id=>wwv_flow_imp.id(57586209091995817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysAdd();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58835747757496516)
,p_name=>'Lose Focus Add DAC'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58835879458496517)
,p_event_id=>wwv_flow_imp.id(58835747757496516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysAdd();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57586460264995819)
,p_name=>'Get Focus Update MAC'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_MAIN_ACCOUNT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57586534278995820)
,p_event_id=>wwv_flow_imp.id(57586460264995819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysUpdateOnMACFocused();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58835901975496518)
,p_name=>'Get Focus Update DAC'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58836066638496519)
,p_event_id=>wwv_flow_imp.id(58835901975496518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysUpdateOnMACFocused();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57586686881995821)
,p_name=>'Lose Focus Update MAC'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_MAIN_ACCOUNT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(57586781093995822)
,p_event_id=>wwv_flow_imp.id(57586686881995821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysUpdateOn();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58836194215496520)
,p_name=>'Lose Focus Update DAC'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P58_CUSTOMER_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58836225450496521)
,p_event_id=>wwv_flow_imp.id(58836194215496520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP58KeysUpdateOn();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58837079597496529)
,p_name=>'Department Account Code Change'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_condition_element=>'P58_ACCOUNT_TYPE_ID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58837102788496530)
,p_event_id=>wwv_flow_imp.id(58837079597496529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_MAIN_ACCOUNT_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAIN_ACCOUNT_CODE',
'FROM NPT009',
'WHERE UPPER(CUSTOMER_CODE) = UPPER(:P58_DEPARTMENT_ACCOUNT_CODE)',
'    AND ACCOUNT_TYPE_ID = 4'))
,p_attribute_07=>'P58_DEPARTMENT_ACCOUNT_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13931092546873101)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form Update Customer'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_billing_address NPT009.BILLING_ADDRESS%type;',
'    l_shipping_address NPT009.SHIPPING_ADDRESS%type;',
'    temp NUMBER;',
'    v_discount_id NPT032.DISCOUNT_ID%TYPE;',
'    v_initial_discount_id NPT032.DISCOUNT_ID%TYPE;',
'    v_position NPT032.POSITION%TYPE;',
'    v_position_loop NPT032.POSITION%TYPE;',
'',
'    v_department_discount_id NPT032.DISCOUNT_ID%TYPE;',
'    v_department_discount_active NPT032.ACTIVE%TYPE;',
'    v_department_discount_position NPT032.POSITION%TYPE;',
'BEGIN',
'    l_billing_address := :P58_BILLING_BUILDING_AND_STREET || ''%'' || :P58_BILLING_CITY || ''%'' || :P58_BILLING_PA || ''%'' || :P58_BILLING_ZIPCODE;',
'    l_shipping_address := :P58_SHIPPING_BUILDING_AND_STREET || ''%'' || :P58_SHIPPING_CITY || ''%'' || :P58_SHIPPING_PA || ''%'' || :P58_SHIPPING_ZIPCODE;',
'',
'    UPDATE NPT009',
'    SET',
'        CUSTOMER_CODE = :P58_CUSTOMER_CODE,',
'        LEGAL_NAME = :P58_LEGAL_NAME,',
'        DBA = :P58_DBA,',
'        ACCOUNT_TYPE_ID = :P58_ACCOUNT_TYPE_ID,',
'        MAIN_ACCOUNT_CODE = UPPER(:P58_MAIN_ACCOUNT_CODE),',
'        CONTACT_PERSON = :P58_CONTACT_PERSON,',
'        ORGANIZATION_TYPE_ID = :P58_ORGANIZATION_TYPE_ID,',
'        PAYMENT_TERMS_ID = :P58_PAYMENT_TERMS_ID,',
'        CREDIT_LIMIT = TO_NUMBER(REPLACE(:P58_CREDIT_LIMIT, '','', '''')),',
'        PAYMENT_INSTRUCTIONS = :P58_PAYMENT_INSTRUCTIONS,',
'        BILLING_ADDRESS = l_billing_address,',
'        BILLING_CONTACTA = :P58_BILLING_CONTACTA,',
'        BILLING_CONTACTB = :P58_BILLING_CONTACTB,',
'        BILLING_FAX = :P58_BILLING_FAX,',
'        BILLING_EMAIL = :P58_BILLING_EMAIL,',
'        SHIPPING_ADDRESS = l_shipping_address,',
'        SHIPPING_CONTACTA = :P58_SHIPPING_CONTACTA,',
'        SHIPPING_CONTACTB =:P58_SHIPPING_CONTACTB,',
'        SHIPPING_FAX = :P58_SHIPPING_FAX,',
'        SHIPPING_EMAIL = :P58_BILLING_EMAIL,',
'        SHIPPING_INSTRUCTIONS = :P58_SHIPPING_INSTRUCTIONS,',
'        STANDARD_DISCOUNT_VALUE = :P58_STANDARD_DISCOUNT_VALUE,',
'        USER_UPDATE = v(''APP_USER''),',
'        DATE_UPDATED = SYSDATE',
'    WHERE CUSTOMER_ID = :P58_CUSTOMER_ID;',
'',
'    -- IF ( :P58_ACCOUNT_TYPE_ID = 1 OR :P58_ACCOUNT_TYPE_ID = 2 ) THEN',
'    --     FOR d IN (',
'    --         SELECT DISCOUNT_ID',
'    --             FROM NPT032',
'    --         WHERE CUSTOMER_ID = :P58_CUSTOMER_ID AND ACTIVE = ''y''',
'    --     ) LOOP',
'    --         SELECT COUNT(1)',
'    --         INTO temp',
'    --         FROM APEX_COLLECTIONS',
'    --         WHERE COLLECTION_NAME = ''DISCOUNTS'' AND N001 = d.DISCOUNT_ID;',
'    --         IF (temp <= 0) THEN',
'    --             UPDATE NPT032',
'    --             SET ACTIVE = ''n'',',
'    --                 USER_UPDATE = v(''APP_USER''),',
'    --                 DATE_UPDATED = SYSDATE',
'    --             WHERE DISCOUNT_ID = d.DISCOUNT_ID AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'    --         END IF;',
'    --     END LOOP;',
'',
'    --     FOR d IN (',
'    --         SELECT DISCOUNT_ID',
'    --             FROM NPT032',
'    --         WHERE CUSTOMER_ID = :P58_CUSTOMER_ID AND ACTIVE = ''n''',
'    --     ) LOOP',
'    --         SELECT COUNT(1)',
'    --         INTO temp',
'    --         FROM APEX_COLLECTIONS',
'    --         WHERE COLLECTION_NAME = ''DISCOUNTS'' AND N001 = d.DISCOUNT_ID;',
'    --         IF (temp >= 1) THEN',
'    --             SELECT NVL(C004, ''N'')',
'    --             INTO v_position',
'    --             FROM APEX_COLLECTIONS',
'    --             WHERE COLLECTION_NAME = ''DISCOUNTS'' AND N001 = d.DISCOUNT_ID;',
'    --             UPDATE NPT032',
'    --             SET ACTIVE = ''y'',',
'    --                 POSITION = v_position,',
'    --                 USER_UPDATE = v(''APP_USER''),',
'    --                 DATE_UPDATED = SYSDATE',
'    --             WHERE DISCOUNT_ID = d.DISCOUNT_ID AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'    --         END IF;',
'    --     END LOOP;',
'',
'    --     FOR d IN (',
'    --         SELECT N001, C004',
'    --         FROM APEX_COLLECTIONS',
'    --         WHERE COLLECTION_NAME = ''DISCOUNTS''',
'    --     ) LOOP',
'    --         SELECT COUNT(1)',
'    --         INTO temp',
'    --         FROM NPT032',
'    --         WHERE CUSTOMER_ID = :P58_CUSTOMER_ID AND DISCOUNT_ID = d.N001;',
'    --         IF (temp <= 0 AND d.N001 IS NOT NULL) THEN',
'    --             INSERT INTO NPT032 ( CUSTOMER_ID, DISCOUNT_ID, POSITION, ACTIVE, USER_CREATED, DATE_CREATED )',
'    --             VALUES ( :P58_CUSTOMER_ID, d.N001, d.C004, ''y'', v(''APP_USER''), SYSDATE );',
'    --         END IF;',
'    --     END LOOP;',
'    -- END IF;',
'',
'    FOR i IN 1..3 LOOP',
'        IF (i = 1) THEN',
'            v_position_loop := ''A'';',
'        ELSIF (i = 2) THEN',
'            v_position_loop := ''B'';',
'        ELSE',
'            v_position_loop := ''C'';',
'        END IF;',
'',
'        SELECT NVL(TO_NUMBER(N001), 0)',
'        INTO v_discount_id',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''DISCOUNTS'' AND C004 = v_position_loop;',
'        SELECT NVL(TO_NUMBER(N001), 0)',
'        INTO v_initial_discount_id',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''INITIAL_DISCOUNTS'' AND C001 = v_position_loop;',
'',
'        IF ( v_discount_id != v_initial_discount_id ) THEN',
'            SELECT COUNT(1)',
'            INTO temp',
'            FROM NPT032',
'            WHERE DISCOUNT_ID = v_discount_id AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'',
'            IF ( temp >= 1 ) THEN',
'                SELECT COUNT(1)',
'                INTO temp',
'                FROM NPT032',
'                WHERE ACTIVE = ''y'' AND POSITION = v_position_loop AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'',
'                IF ( temp >= 1 ) THEN',
'                    UPDATE NPT032',
'                    SET ACTIVE = ''n'',',
'                        USER_UPDATE = v(''APP_USER''),',
'                        DATE_UPDATED = SYSDATE',
'                    WHERE POSITION = v_position_loop AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'                END IF;',
'',
'                SELECT DISCOUNT_ID, ACTIVE, NVL(POSITION, ''N'')',
'                INTO v_department_discount_id, v_department_discount_active, v_department_discount_position',
'                FROM NPT032',
'                WHERE DISCOUNT_ID = v_discount_id AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'',
'                IF ( v_department_discount_active = ''n'' ) THEN',
'                    UPDATE NPT032',
'                    SET ACTIVE = ''y'',',
'                        POSITION = v_position_loop,',
'                        USER_UPDATE = v(''APP_USER''),',
'                        DATE_UPDATED = SYSDATE',
'                    WHERE DISCOUNT_ID = v_discount_id AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'                ELSIF ( v_department_discount_active = ''y'' AND v_department_discount_position != v_position_loop ) THEN',
'                    UPDATE NPT032',
'                    SET POSITION = v_position_loop,',
'                        USER_UPDATE = v(''APP_USER''),',
'                        DATE_UPDATED = SYSDATE',
'                    WHERE DISCOUNT_ID = v_discount_id AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'                END IF;',
'            ELSE',
'                SELECT COUNT(1)',
'                INTO temp',
'                FROM NPT032',
'                WHERE ACTIVE = ''y'' AND POSITION = v_position_loop AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'',
'                IF ( temp >= 1 ) THEN',
'                    UPDATE NPT032',
'                    SET ACTIVE = ''n'',',
'                        USER_UPDATE = v(''APP_USER''),',
'                        DATE_UPDATED = SYSDATE',
'                    WHERE POSITION = v_position_loop AND CUSTOMER_ID = :P58_CUSTOMER_ID;',
'                END IF;',
'                IF ( v_discount_id >= 1 ) THEN',
'                    INSERT INTO NPT032 ( CUSTOMER_ID, DISCOUNT_ID, POSITION, ACTIVE, USER_CREATED, DATE_CREATED )',
'                    VALUES ( :P58_CUSTOMER_ID, v_discount_id, v_position_loop, ''y'', v(''APP_USER''), SYSDATE );',
'                END IF;',
'            END IF;',
'        END IF;',
'    END LOOP;',
'',
'    IF ( :P58_ACCOUNT_TYPE_ID = 2 ) THEN',
'        IF (:P58_STANDARD_DISCOUNT_VALUE != :P58_STANDARD_DISCOUNT_VALUE_INITIAL) THEN',
'            UPDATE NPT009',
'            SET STANDARD_DISCOUNT_VALUE = :P58_STANDARD_DISCOUNT_VALUE',
'            WHERE UPPER(MAIN_ACCOUNT_CODE) = UPPER(:P58_CUSTOMER_CODE);',
'        END IF;',
'',
'        FOR i IN 1..3 LOOP',
'            IF (i = 1) THEN',
'                v_position_loop := ''A'';',
'            ELSIF (i = 2) THEN',
'                v_position_loop := ''B'';',
'            ELSE',
'                v_position_loop := ''C'';',
'            END IF;',
'',
'            SELECT NVL(TO_NUMBER(N001), 0)',
'            INTO v_discount_id',
'            FROM APEX_COLLECTIONS',
'            WHERE COLLECTION_NAME = ''DISCOUNTS'' AND C004 = v_position_loop;',
'            SELECT NVL(TO_NUMBER(N001), 0)',
'            INTO v_initial_discount_id',
'            FROM APEX_COLLECTIONS',
'            WHERE COLLECTION_NAME = ''INITIAL_DISCOUNTS'' AND C001 = v_position_loop;',
'',
'            IF ( v_discount_id != v_initial_discount_id ) THEN',
'                FOR k IN (',
'                    SELECT CUSTOMER_ID',
'                    FROM NPT009',
'                    WHERE UPPER(MAIN_ACCOUNT_CODE) = UPPER(:P58_CUSTOMER_CODE)',
'                ) LOOP',
'                    SELECT COUNT(1)',
'                    INTO temp',
'                    FROM NPT032',
'                    WHERE DISCOUNT_ID = v_discount_id AND CUSTOMER_ID = k.CUSTOMER_ID;',
'',
'                    IF ( temp >= 1 ) THEN',
'                        SELECT COUNT(1)',
'                        INTO temp',
'                        FROM NPT032',
'                        WHERE ACTIVE = ''y'' AND POSITION = v_position_loop AND CUSTOMER_ID = k.CUSTOMER_ID;',
'',
'                        IF ( temp >= 1 ) THEN',
'                            UPDATE NPT032',
'                            SET ACTIVE = ''n'',',
'                                USER_UPDATE = v(''APP_USER''),',
'                                DATE_UPDATED = SYSDATE',
'                            WHERE POSITION = v_position_loop AND CUSTOMER_ID = k.CUSTOMER_ID;',
'                        END IF;',
'                        ',
'                        SELECT DISCOUNT_ID, ACTIVE, NVL(POSITION, ''N'')',
'                        INTO v_department_discount_id, v_department_discount_active, v_department_discount_position',
'                        FROM NPT032',
'                        WHERE DISCOUNT_ID = v_discount_id AND CUSTOMER_ID = k.CUSTOMER_ID;',
'',
'                        IF ( v_department_discount_active = ''n'' ) THEN',
'                            UPDATE NPT032',
'                            SET ACTIVE = ''y'',',
'                                POSITION = v_position_loop,',
'                                USER_UPDATE = v(''APP_USER''),',
'                                DATE_UPDATED = SYSDATE',
'                            WHERE DISCOUNT_ID = v_discount_id AND CUSTOMER_ID = k.CUSTOMER_ID;',
'                        ELSIF ( v_department_discount_active = ''y'' AND v_department_discount_position != v_position_loop ) THEN',
'                            UPDATE NPT032',
'                            SET POSITION = v_position_loop,',
'                                USER_UPDATE = v(''APP_USER''),',
'                                DATE_UPDATED = SYSDATE',
'                            WHERE DISCOUNT_ID = v_discount_id AND CUSTOMER_ID = k.CUSTOMER_ID;',
'                        END IF;',
'                    ELSE',
'                        -- SELECT COUNT(1)',
'                        -- INTO temp',
'                        -- FROM NPT032',
'                        -- WHERE ACTIVE = ''y'' AND POSITION = v_position_loop AND CUSTOMER_ID = k.CUSTOMER_ID;',
'',
'                        -- IF ( temp >= 1 ) THEN',
'                        --     UPDATE NPT032',
'                        --     SET ACTIVE = ''n'',',
'                        --         USER_UPDATE = v(''APP_USER''),',
'                        --         DATE_UPDATED = SYSDATE',
'                        --     WHERE POSITION = v_position_loop AND CUSTOMER_ID = k.CUSTOMER_ID;',
'                        -- END IF;',
'                        IF( v_discount_id >= 1 ) THEN',
'                            INSERT INTO NPT032 ( CUSTOMER_ID, DISCOUNT_ID, POSITION, ACTIVE, USER_CREATED, DATE_CREATED )',
'                            VALUES ( k.CUSTOMER_ID, v_discount_id, v_position_loop, ''y'', v(''APP_USER''), SYSDATE );',
'                        END IF;',
'                    END IF;',
'                END LOOP;',
'            END IF;',
'        END LOOP;',
'',
'        ',
'',
'        -- FOR k IN (',
'        --     SELECT CUSTOMER_ID',
'        --     FROM NPT009',
'        --     WHERE UPPER(MAIN_ACCOUNT_CODE) = UPPER(:P58_CUSTOMER_CODE)',
'        -- ) LOOP',
'        --     UPDATE NPT009',
'        --     SET STANDARD_DISCOUNT_VALUE = :P58_STANDARD_DISCOUNT_VALUE',
'        --     WHERE CUSTOMER_ID = k.CUSTOMER_ID;',
'',
'',
'            ',
'            -- FOR d IN (',
'            --     SELECT DISCOUNT_ID',
'            --         FROM NPT032',
'            --     WHERE CUSTOMER_ID = k.CUSTOMER_ID AND ACTIVE = ''y''',
'            -- ) LOOP',
'            --     SELECT COUNT(1)',
'            --     INTO temp',
'            --     FROM APEX_COLLECTIONS',
'            --     WHERE COLLECTION_NAME = ''DISCOUNTS'' AND N001 = d.DISCOUNT_ID;',
'            --     IF (temp <= 0) THEN',
'            --         UPDATE NPT032',
'            --         SET ACTIVE = ''n'',',
'            --             USER_UPDATE = v(''APP_USER''),',
'            --             DATE_UPDATED = SYSDATE',
'            --         WHERE DISCOUNT_ID = d.DISCOUNT_ID AND CUSTOMER_ID = k.CUSTOMER_ID;',
'            --     END IF;',
'            -- END LOOP;',
'',
'            -- FOR d IN (',
'            --     SELECT DISCOUNT_ID',
'            --         FROM NPT032',
'            --     WHERE CUSTOMER_ID = k.CUSTOMER_ID AND ACTIVE = ''n''',
'            -- ) LOOP',
'            --     SELECT COUNT(1)',
'            --     INTO temp',
'            --     FROM APEX_COLLECTIONS',
'            --     WHERE COLLECTION_NAME = ''DISCOUNTS'' AND N001 = d.DISCOUNT_ID;',
'            --     IF (temp >= 1) THEN',
'            --         UPDATE NPT032',
'            --         SET ACTIVE = ''y'',',
'            --             USER_UPDATE = v(''APP_USER''),',
'            --             DATE_UPDATED = SYSDATE',
'            --         WHERE DISCOUNT_ID = d.DISCOUNT_ID AND CUSTOMER_ID = k.CUSTOMER_ID;',
'            --     END IF;',
'            -- END LOOP;',
'',
'            -- FOR d IN (',
'            --     SELECT N001',
'            --     FROM APEX_COLLECTIONS',
'            --     WHERE COLLECTION_NAME = ''DISCOUNTS''',
'            -- ) LOOP',
'            --     SELECT COUNT(1)',
'            --     INTO temp',
'            --     FROM NPT032',
'            --     WHERE CUSTOMER_ID = k.CUSTOMER_ID AND DISCOUNT_ID = d.N001;',
'            --     IF (temp <= 0 AND d.N001 IS NOT NULL) THEN',
'            --         INSERT INTO NPT032 ( CUSTOMER_ID, DISCOUNT_ID, ACTIVE, USER_CREATED, DATE_CREATED )',
'            --         VALUES ( k.CUSTOMER_ID, d.N001, ''y'', v(''APP_USER''), SYSDATE );',
'            --     END IF;',
'            -- END LOOP;',
'        -- END LOOP;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Something went wrong, please try again.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P58_CUSTOMER_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>13931092546873101
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14304357720089714)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Form Add Customer'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_cust_id NPT009.CUSTOMER_ID%TYPE;',
'    v_main_cust_id NPT009.CUSTOMER_ID%TYPE;',
'    v_main_standard_discount NPT009.STANDARD_DISCOUNT_VALUE%TYPE;',
'BEGIN',
'    INSERT INTO NPT009(',
'        CUSTOMER_CODE,',
'        LEGAL_NAME,',
'        DBA,',
'        ACCOUNT_TYPE_ID,',
'        MAIN_ACCOUNT_CODE,',
'        DEPARTMENT_ACCOUNT_CODE,',
'        CONTACT_PERSON,',
'        ORGANIZATION_TYPE_ID,',
'        PAYMENT_TERMS_ID,',
'        CREDIT_LIMIT,',
'        PAYMENT_INSTRUCTIONS,',
'        BILLING_ADDRESS,',
'        BILLING_CONTACTA,',
'        BILLING_CONTACTB,',
'        BILLING_FAX,',
'        BILLING_EMAIL,',
'        SHIPPING_ADDRESS,',
'        SHIPPING_CONTACTA,',
'        SHIPPING_CONTACTB,',
'        SHIPPING_FAX,',
'        SHIPPING_EMAIL,',
'        SHIPPING_INSTRUCTIONS,',
'        STANDARD_DISCOUNT_VALUE,',
'        CLASS_ID,',
'        USER_CREATED,',
'        DATE_CREATED',
'    )',
'    VALUES(',
'        :P58_CUSTOMER_CODE,',
'        :P58_LEGAL_NAME,',
'        :P58_DBA,',
'        :P58_ACCOUNT_TYPE_ID,',
'        UPPER(:P58_MAIN_ACCOUNT_CODE),',
'        UPPER(:P58_DEPARTMENT_ACCOUNT_CODE),',
'        :P58_CONTACT_PERSON,',
'        :P58_ORGANIZATION_TYPE_ID,',
'        :P58_PAYMENT_TERMS_ID,',
'        TO_NUMBER(REPLACE(:P58_CREDIT_LIMIT, '','', '''')),',
'        :P58_PAYMENT_INSTRUCTIONS,',
'        :P58_BILLING_BUILDING_AND_STREET || ''%'' || :P58_BILLING_CITY || ''%'' || :P58_BILLING_PA || ''%'' || :P58_BILLING_ZIPCODE,',
'        :P58_BILLING_CONTACTA,',
'        :P58_BILLING_CONTACTB,',
'        :P58_BILLING_FAX,',
'        :P58_BILLING_EMAIL,',
'        :P58_SHIPPING_BUILDING_AND_STREET || ''%'' || :P58_SHIPPING_CITY || ''%'' || :P58_SHIPPING_PA || ''%'' || :P58_SHIPPING_ZIPCODE,',
'        :P58_SHIPPING_CONTACTA,',
'        :P58_SHIPPING_CONTACTB,',
'        :P58_SHIPPING_FAX,',
'        :P58_SHIPPING_EMAIL,',
'        :P58_SHIPPING_INSTRUCTIONS,',
'        :P58_STANDARD_DISCOUNT,',
'        1,',
'        v(''APP_USER''),',
'        SYSDATE',
'    )',
'    RETURNING CUSTOMER_ID INTO v_cust_id;',
'',
'    IF ( :P58_ACCOUNT_TYPE_ID = 3 OR :P58_ACCOUNT_TYPE_ID = 4 OR :P58_ACCOUNT_TYPE_ID = 5 ) THEN',
'        SELECT CUSTOMER_ID, STANDARD_DISCOUNT_VALUE',
'        INTO v_main_cust_id, v_main_standard_discount',
'        FROM NPT009',
'        WHERE UPPER(CUSTOMER_CODE) = UPPER(:P58_MAIN_ACCOUNT_CODE);',
'',
'        UPDATE NPT009',
'        SET STANDARD_DISCOUNT_VALUE = v_main_standard_discount',
'        WHERE CUSTOMER_ID = v_cust_id;',
'',
'        FOR c IN (',
'            SELECT DISCOUNT_ID, POSITION',
'            FROM NPT032',
'            WHERE CUSTOMER_ID = v_main_cust_id AND ACTIVE = ''y''',
'        ) LOOP',
'            INSERT INTO NPT032 ( CUSTOMER_ID, DISCOUNT_ID, POSITION, ACTIVE, USER_CREATED, DATE_CREATED ) ',
'            VALUES ( v_cust_id, c.DISCOUNT_ID, c.POSITION, ''y'', v(''APP_USER''), SYSDATE );',
'        END LOOP;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Something went wrong, please try again.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P58_CUSTOMER_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>14304357720089714
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13930604023873100)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13912731848873017)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add/Update Customer'
,p_internal_uid=>13930604023873100
);
wwv_flow_imp.component_end;
end;
/
