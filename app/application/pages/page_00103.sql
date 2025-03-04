prompt --application/pages/page_00103
begin
--   Manifest
--     PAGE: 00103
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
 p_id=>103
,p_name=>'Inquire Shipment Information'
,p_alias=>'INQUIRE-SHIPMENT-INFORMATION'
,p_step_title=>'Inquire Shipment Information'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p103KeyMap = {',
'    f2: (v) => {',
'        if ($("#to-line-items")) {',
'            $("#to-line-items").trigger("click");',
'        }',
'    },',
'    escape : (v) => {',
'        apex.navigation.redirect($("#P103_SRURL").val());',
'    }',
'}',
'',
'function mapP103Keys() {',
'    $(document).off(''keydown.p103keyevents'');',
'    $(document).on(''keydown.p103keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p103KeyMap[key]) {',
'            ev.preventDefault();',
'            p103KeyMap[key](ev);',
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
'    $("#P103_ETD_LABEL").appendTo(".dates-label");',
'    $(".t-Form-inputContainer:has(.t-Form-itemWrapper):has(#P103_ETD)").appendTo(".dates-fields");',
'    $(`<div class="dates-fields-separator">-</div>`).appendTo(".dates-fields");',
'    $(".t-Form-inputContainer:has(.t-Form-itemWrapper):has(#P103_ETA)").appendTo(".dates-fields");',
'    $(`<div class="dates-fields-separator">-</div>`).appendTo(".dates-fields");',
'    $(".t-Form-inputContainer:has(.t-Form-itemWrapper):has(#P103_ATA)").appendTo(".dates-fields");',
'    $(".dates-fields .t-Form-inputContainer").removeClass("col col-2");',
'    $(".shipment-dates .etd, .shipment-dates .eta, .shipment-dates .ata").remove();',
'}',
'',
'function initialize() {',
'    $("#P103_SVP1").addClass("svp");',
'    $("#P103_VENDOR_ID1").addClass("vendor-id required");',
'    $("#P103_VENDOR_REF_PO_ID1").addClass("vendor-ref-po-id required");',
'    $("#P103_VENDOR_ID1").attr("vendor-seq", "1");',
'    $("#P103_VENDOR_REF_PO_ID1").attr("vendor-seq", "1");',
'    $("input").prop("disabled", true);',
'',
'    $(''.dpicker'').each(function () {',
'        $(this).addClass(''apex_disabled'').next(''button'').addClass(''apex_disabled'');',
'    });',
'}',
'',
'function addNewVendor(data) {',
'    let vendorInputClone = $(".row.vendors-input:first").clone();',
'',
'    vendorInputClone.find("input, a-autocomplete, span.display_only.apex-item-display-only, div.t-Form-fieldContainer, span.a-Form-error, div.t-Form-error div").each(function(index, elem) { ',
'        let currentId = elem.id;',
'        let newId = "";',
'        if (currentId === "P103_VENDOR1") {',
'            newId = `P103_VENDOR${data?.vendorSeq || ""}`;',
'        } if (currentId === "P103_VENDOR_NAME1_input") {',
'            newId = `P103_VENDOR_NAME${data?.vendorSeq}_input`;',
'        } else if (currentId === "P103_VENDOR_NAME1") {',
'            newId = `P103_VENDOR_NAME${data?.vendorSeq}`;',
'            elem.value = data?.vendorName || "";',
'            elem.name = newId;',
'            elem.classList.remove("apex-page-item-error");',
'            elem.removeAttribute("aria-describedby");',
'            elem.removeAttribute("aria-invalid");',
'        } else if (currentId === "P103_VENDOR_ID1") {',
'            newId = `P103_VENDOR_ID${data?.vendorSeq}`;',
'            elem.value = data?.vendorId || "";',
'            elem.name = newId;',
'        } else if (currentId === "P103_VENDOR_REF_PO1") {',
'            newId = `P103_VENDOR_REF_PO${data?.vendorSeq}`;',
'            elem.value = data?.vendorRefPo || "";',
'        } else if (currentId === "P103_VENDOR_REF_PO_ID1") {',
'            newId = `P103_VENDOR_REF_PO_ID${data?.vendorSeq}`;',
'            elem.value = data?.vendorRefPo || "";',
'        } else if (currentId === "P103_VENDOR_INV_NO1") {',
'            newId = `P103_VENDOR_INV_NO${data?.vendorSeq}`;',
'            elem.value = data?.invoices || "";',
'        } else if (currentId === "P103_SVP1") {',
'            newId = `P103_SVP${data?.vendorSeq}`;',
'            elem.value = data?.svp || "";',
'            elem.name = newId;',
'        } else if (currentId === "P103_VENDOR_NAME1_CONTAINER") {',
'            newId = `P103_VENDOR_NAME${data?.vendorSeq}_CONTAINER`;',
'        } else if (currentId === "P103_VENDOR_NAME1_error_placeholder") {',
'            newId = `P103_VENDOR_NAME${data?.vendorSeq}_error_placeholder`;',
'        } else if (currentId === "P103_VENDOR_NAME1_error") {',
'            newId = `P103_VENDOR_NAME${data?.vendorSeq}_error`;',
'            elem.innerHTML = "";',
'        }',
'        ',
'        elem.setAttribute("vendor-seq", data?.vendorSeq);',
'        elem.id = newId;',
'    });',
'',
'    vendorInputClone.find(`#P103_VENDOR${data?.vendorSeq}`).text(`Vendor ${data?.vendorSeq}`);',
'',
'    vendorInputClone.find(`.t-Form-labelContainer`).remove();',
'',
'    vendorInputClone.insertAfter($(".row.vendors-input:last"));',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle(`Inquire Shipment`);',
'repositionDateFields();',
'mapP103Keys();',
'initialize();'))
,p_css_file_urls=>'#APP_FILES#css/cmn#MIN#.css'
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
'.p103-section {',
'    border-radius: 0.5rem;',
'}',
'',
'.p103-section label, .p103-section input, .t-Region-title, #P103_VENDOR_NAME1 {',
'    font-size: 1.125rem;',
'}',
'',
'.p103-label-req {',
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
'#P103_VENDOR_NAME_CONTAINER .t-Form-inputContainer,',
'#P103_VENDOR_INV_NO_CONTAINER .t-Form-inputContainer {',
'    max-width: 63%;',
'}',
'',
'.t-Form-labelContainer:has(#P103_VENDOR_NAME_LABEL),',
'.t-Form-labelContainer:has(#P103_VENDOR_INV_NO_LABEL) {',
'    max-width: 27%;',
'}',
'',
'#P103_SHIPMENT_NO1_CONTAINER:after,',
'#P103_SHIPMENT_YR_CONTAINER:after {',
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
'input:disabled {',
'    color: black;',
'    background-color: #d9d9d9;',
'    opacity: unset !important;',
'}',
'',
'.dpicker {',
'    opacity: unset !important;',
'}',
'',
'#P103_CONTAINER_TYPE_NO2_CONTAINER .t-Form-labelContainer {',
'    justify-content: center;',
'}',
'',
'#to-line-items {',
'    font-size: 1.125rem;',
'    color: white;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45956169631656535)
,p_plug_name=>'Vessel Information'
,p_region_name=>'vessel-info'
,p_region_css_classes=>'p103-section'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45956246758656536)
,p_plug_name=>'Cost Information'
,p_region_name=>'cost-info'
,p_region_css_classes=>'p103-section'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48817220188291512)
,p_plug_name=>'Basic Information'
,p_region_name=>'basic-info'
,p_region_css_classes=>'p103-section'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31309849085578730)
,p_button_sequence=>110
,p_button_name=>'GO_TO_LINE_ITEMS'
,p_button_static_id=>'to-line-items'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F2</u> - Line Item Details'
,p_button_redirect_url=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:104:P104_SHIPMENT_ID,P104_QSEARCH,P104_QSORT:&P103_SHIPMENT_ID.,&P103_QSEARCH.,&P103_QSORT.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47037883460224207)
,p_button_sequence=>120
,p_button_name=>'BACK_TO_SHIPMENT_LIST'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>Esc</u> - Shipment List'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::P100_SEARCH,P100_SORT:&P103_QSEARCH.,&P103_QSORT.'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42428074794064050)
,p_name=>'P103_QSORT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'PK for this shipment record'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45965763705656670)
,p_name=>'P103_VESSEL_NAME_BL1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45965811330656671)
,p_name=>'P103_VESSEL_NAME_BL2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45965887574656672)
,p_name=>'P103_BARGE_BL1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45966046624656673)
,p_name=>'P103_BARGE_BL2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45966130030656674)
,p_name=>'P103_CONTAINER_TYPE_NO1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45966263912656675)
,p_name=>'P103_CONTAINER_TYPE_NO2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45966378063656676)
,p_name=>'P103_ORIGIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45966436009656677)
,p_name=>'P103_ETD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
,p_prompt=>'ETD - ETA - ATA'
,p_placeholder=>'mm/dd/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'required dpicker'
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
 p_id=>wwv_flow_imp.id(45966502991656678)
,p_name=>'P103_ETA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
,p_prompt=>'ETA'
,p_placeholder=>'mm/dd/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'required dpicker'
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
 p_id=>wwv_flow_imp.id(45967958722656686)
,p_name=>'P103_SHIPMENT_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
,p_item_comment=>'PK for this shipment record'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45968008719656687)
,p_name=>'P103_LABEL'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'Label identifying if current task is Add or Update'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46550930153589616)
,p_name=>'P103_FREIGHT_COST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45956246758656536)
,p_prompt=>'Freight Cost'
,p_format_mask=>'999999999999990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46551053210589617)
,p_name=>'P103_INSURANCE_COST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45956246758656536)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46551073440589618)
,p_name=>'P103_HANDLING_COST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45956246758656536)
,p_prompt=>'Handling Cost'
,p_format_mask=>'999999999999990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46551192703589619)
,p_name=>'P103_DUTIES_AND_TAXES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45956246758656536)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46551347530589620)
,p_name=>'P103_MISC_EXPENSES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45956246758656536)
,p_prompt=>'Misc. Expenses'
,p_format_mask=>'999999999999990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46551376266589621)
,p_name=>'P103_VENDOR_CREDITS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45956246758656536)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46556538447589629)
,p_name=>'P103_ATA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(45956169631656535)
,p_prompt=>'ATA'
,p_placeholder=>'mm/dd/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'required dpicker'
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
 p_id=>wwv_flow_imp.id(46561410497589672)
,p_name=>'P103_SRURL'
,p_item_sequence=>100
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_PAGE.GET_URL(',
'    p_page => 100,',
'    p_items => ''P100_SEARCH,P100_SORT,P100_SELECTED_ID,P100_SMSG'',',
'    p_values => :P103_QSEARCH || '','' || :P103_QSORT || '','' || :P103_SHIPMENT_ID || '','',',
'    p_clear_cache => ''100''',
')'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'URL for when returning to main shipment screen'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47037245646224201)
,p_name=>'P103_QSEARCH'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'PK for this shipment record'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48822676077291629)
,p_name=>'P103_SHIPMENT_YR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48817220188291512)
,p_prompt=>'Shipment Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'center'
,p_attribute_04=>'decimal'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48822767244291630)
,p_name=>'P103_SHIPMENT_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48817220188291512)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_tag_css_classes=>'u-textCenter'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48822974204291632)
,p_name=>'P103_VENDOR1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48817220188291512)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48823083442291633)
,p_name=>'P103_VENDOR_NAME1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(48817220188291512)
,p_prompt=>'Vendor Name <span class="p103-label-req">*</span>'
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
 p_id=>wwv_flow_imp.id(48823231771291634)
,p_name=>'P103_VENDOR_REF_PO1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(48817220188291512)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48823295413291635)
,p_name=>'P103_VENDOR_INV_NO1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(48817220188291512)
,p_prompt=>'Vendor Invoice Number <span class="p103-label-req">*</span>'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48824184235291644)
,p_name=>'P103_VENDOR_ID1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(48817220188291512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48824351907291645)
,p_name=>'P103_VENDOR_REF_PO_ID1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(48817220188291512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48825100548291653)
,p_name=>'P103_SVP1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48817220188291512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(30906717691028759)
,p_computation_sequence=>10
,p_computation_item=>'P103_LABEL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'CASE WHEN :P103_SHIPMENT_ID IS NULL THEN ''Add'' ELSE ''Update'' END'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30912122388028775)
,p_name=>'Load Vendors'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30912655173028776)
,p_event_id=>wwv_flow_imp.id(30912122388028775)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let waitSpinner = apex.widget.waitPopup();',
'apex.server.process("GET_VENDORS", {',
'    x01: $v("P103_SHIPMENT_ID")',
'})',
'.done(data => {',
'    let vendors = data;',
'    vendors.sort((a, b) => a.vendorSeq - b.vendorSeq);',
'    ',
'    // get first vendor from vendors object',
'    const firstVendorIndex = vendors.findIndex(vendor => vendor.vendorSeq === 1);',
'    const firstVendor = vendors[firstVendorIndex];',
'',
'    // set first vendor to fields',
'    $("#P103_SVP1").val(firstVendor.svp);',
'    $("#P103_VENDOR_NAME1").val(firstVendor.vendorName);',
'    $("#P103_VENDOR_ID1").val(firstVendor.vendorId);',
'    $("#P103_VENDOR_REF_PO1").val(firstVendor.vendorRefPo);',
'    $("#P103_VENDOR_REF_PO_ID1").val(firstVendor.vendorRefPo);',
'    $("#P103_VENDOR_INV_NO1").val(firstVendor.invoices);',
'',
'    // remove first vendor from vendors object',
'    vendors.splice(firstVendorIndex, 1);',
'',
'    // set other vendors to field in order',
'    for (var i = 0; i < vendors.length; i++) {',
'        addNewVendor(vendors[i]);',
'    }',
'    waitSpinner.remove();',
'})',
'.fail((jqXHR, textStatus, errorThrown) => {',
'    // error: An error occurred while retrieving vendor information for this shipment',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30907089462028759)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select substr(shipment_number, 0, 4), substr(shipment_number, 6, 3),',
'           vessel_name, vessel_bl_no, barge, barge_bl_no, ',
'           container_type, container_no, origin,',
'           TO_CHAR(eta, ''MM/DD/YYYY''), ',
'           TO_CHAR(etd, ''MM/DD/YYYY''),',
'           TO_CHAR(ata, ''MM/DD/YYYY'')',
'      into :P103_SHIPMENT_YR, :P103_SHIPMENT_NO,',
'           :P103_VESSEL_NAME_BL1, :P103_VESSEL_NAME_BL2, :P103_BARGE_BL1, :P103_BARGE_BL2,',
'           :P103_CONTAINER_TYPE_NO1, :P103_CONTAINER_TYPE_NO2, :P103_ORIGIN,',
'           :P103_ETA,',
'           :P103_ETD,',
'           :P103_ATA',
'      from nit016',
'     where shipment_id = :P103_SHIPMENT_ID;',
'',
'    select freight_cost, insurance_cost, handling_cost,',
'           duties_and_taxes, misc_expenses, vendor_credits',
'      into :P103_FREIGHT_COST, :P103_INSURANCE_COST, :P103_HANDLING_COST,',
'           :P103_DUTIES_AND_TAXES, :P103_MISC_EXPENSES, :P103_VENDOR_CREDITS',
'      from nit017',
'     where shipment_id = :P103_SHIPMENT_ID; ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>30907089462028759
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30907445735028760)
,p_process_sequence=>10
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
,p_internal_uid=>30907445735028760
);
wwv_flow_imp.component_end;
end;
/
