prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_name=>'Add/Update Purchase Order'
,p_alias=>'ADD-UPDATE-PURCHASE-ORDER'
,p_step_title=>'Add/Update Purchase Order'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#js/cmn#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p8KeyMap = {',
'    escape: (v) => {',
'        if($("#add-notes").is(":visible")) {',
'            $("#close").trigger("click");',
'        } else if($("#add-notes-two").is(":visible")) {',
'            $("#close-two").trigger("click");',
'        } else {',
'            $("#exit").trigger("click");',
'        }',
'    }',
'}',
'',
'function mapP8Keys() {',
'    $(document).off(''keydown.p8keyevents'');',
'    $(document).on(''keydown.p8keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p8KeyMap[key]) {',
'            ev.preventDefault();',
'            p8KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function highlightValue() {',
'    const inputFieldIds = ["P46_VESSEL_NAME", "P46_ETD", "P46_ETA", "P46_ADDED_COST_2", "P46_REMARKS",',
'                           "P46_IMPORTANT", "P46_SUBJECT", "P46_LESS", "P46_ADD"];',
'',
'    inputFieldIds.forEach((fieldId) => {',
'        $(`#${fieldId}`).on("focus", function() {',
'            $(this).select();',
'        });',
'    })',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP8Keys();',
'// autoClearInputValue();',
'highlightValue();',
'',
'const dateFields = [''P46_ETD'', ''P46_ETA''];',
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
'    $("#P46_SIGNATURE_DETAIL").on("keydown", function(event) {',
'        if($v("P46_PROCESS") === ''A'') {',
'            if($("#add-notes-two").is(":visible")) {',
'                if (event.key === "Enter" || event.keyCode === 13) {',
'                    if(!event.shiftKey) {',
'                        $.event.trigger(''addnotestwo'');',
'                        event.preventDefault();',
'                    }',
'                }',
'            }',
'        }',
'    });',
'',
'    $(document).on("keydown", function(event) {',
'        if (event.key === "Enter" || event.keyCode === 13) {',
'            if(!$("#add-notes").is(":visible") && !$("#add-notes-two").is(":visible")) {',
'                if($v("P46_FROM") === "C" || $v("P46_FROM") === "U") {',
'                    $.event.trigger(''RedirectToLineItems'');',
'                } else if ($v("P46_FROM") === "A" || $v("P46_FROM") === "R") {',
'                    if($v("P46_LAST_ITEM") === "Y") {',
'                        $.event.trigger(''RedirectToLineItems'');',
'                    }',
'                }',
'            } else {',
'                if($v("P46_PROCESS") === ''U'') {',
'                    if($("#add-notes").is(":visible")) {',
'                        $.event.trigger(''updatenotes'');',
'                    } else if($("#add-notes-two").is(":visible")) {',
'                        $.event.trigger(''addnotestwo'');',
'                    }',
'                    event.preventDefault();',
'                }',
'            }',
'        }',
'    });',
'',
'    $(document).on("keydown", function(event) {',
'        if(event.key === "F7") {',
'            if($("#add-notes").is(":visible")) {',
'                $.event.trigger(''addnotes'');',
'                event.preventDefault();',
'            } else if($("#add-notes-two").is(":visible")) {',
'                event.preventDefault();',
'            } else {',
'                $("#notes").trigger("click");',
'                event.preventDefault();',
'            }',
'        }',
'    });',
'});',
'',
'var fromValue = $v("P46_FROM");',
'',
'setTitle(`${fromValue === "A" ? "Add Purchase Order" :',
'            fromValue === "U" ? "Update Purchase Order" :',
'            fromValue === "C" ? "Create Child PO" :',
'            "Add New PO using an Existing PO"}`);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-text, .apex-item-text.apex-item-popup-lov, .apex-item-select {',
'    background-color: white;',
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
'div.container:first-of-type {',
'    padding: 1rem 2rem 2rem 2rem !important;',
'    margin: 0 !important;',
'}',
'',
'.form-container label,',
'.form-container input,',
'.t-Region-title {',
'    font-size: 1.125rem;',
'}',
'',
'.t-Form-labelContainer {',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: start;',
'}',
'',
'.t-Form-labelContainer .t-Form-label::before {',
'    content: "" !important;',
'}',
'',
'.t-Region-body {',
'    padding: .5rem 2rem .5rem 1rem !important;',
'    border: var(--ut-region-border-color,var(--ut-component-border-color));',
'    border-radius: 0.5rem;',
'    border-style: solid;',
'    border-width: var(--ut-region-border-width,var(--ut-component-border-width,1px));',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.t-Region-header {',
'    background-color: rgb(30, 58, 138);',
'    color: white;',
'}',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'.text-left {',
'    text-align: left;',
'}',
'',
'.text-right {',
'    text-align: right;',
'}',
'',
'.t-margin {',
'    margin-top: 3.5rem;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.ui-dialog {',
'    background-color: #056AC8;',
'    color: white;',
'    width: 70rem !important;',
'    height: auto !important;',
'}',
'',
'#add-notes .container,',
'#add-notes-two .container {',
'    padding-left: 2rem;',
'}',
'',
'#add-notes label,',
'#add-notes-two label {',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.t-DialogRegion-bodyWrapperOut {',
'    overflow: hidden !important;',
'}',
'',
'#P46_REMARKS_LABEL.t-Form-label::after,',
'#P46_NOTE_LABEL.t-Form-label::after,',
'#P46_SUBJECT_LABEL.t-Form-label::after,',
'#P46_OPENING_EMAIL_LABEL.t-Form-label::after,',
'#P46_CLOSING_EMAIL_LABEL.t-Form-label::after,',
'#P46_SIGNATURE_LABEL.t-Form-label::after {',
'    content: " *" !important;',
'    color: red;',
'}',
'',
'#add-notes .t-Form-error,',
'#add-notes-two .t-Form-error {',
'    color: #FFD700 !important;',
'    margin-bottom: 0;',
'}',
'',
'.t-Form-error {',
'    font-weight: 700;',
'}',
'',
'#add-notes .t-Form-inputContainer,',
'#add-notes-two .t-Form-inputContainer {',
'    padding-block-end: var(--ut-field-padding-y, 0) !important;',
'}',
'',
'.r-margin {',
'    margin-right: 1rem;',
'}',
'',
'.a-PopupLOV-results {',
'    color: black;',
'    background-color: white;',
'}',
'',
'.ui-dialog.ui-front {',
'    z-index: 1000 !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11738085220394646)
,p_plug_name=>'Vendor Info - A'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'form-container'
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_FROM'
,p_plug_display_when_cond2=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11738457717394650)
,p_plug_name=>'Vessel Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>120
,p_plug_grid_column_css_classes=>'form-container'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16245118495344104)
,p_plug_name=>'Cost Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>130
,p_plug_grid_column_css_classes=>'form-container'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24534290785263040)
,p_plug_name=>'Vendor Info - C'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>80
,p_plug_grid_column_css_classes=>'form-container'
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_FROM'
,p_plug_display_when_cond2=>'C'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24649241343650404)
,p_plug_name=>'Vendor Info - U'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>110
,p_plug_grid_column_css_classes=>'form-container'
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_FROM'
,p_plug_display_when_cond2=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24650126430650413)
,p_plug_name=>'Vendor Info - R'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>90
,p_plug_grid_column_css_classes=>'form-container'
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_FROM'
,p_plug_display_when_cond2=>'R'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33626330564196829)
,p_plug_name=>'Add Notes'
,p_region_name=>'add-notes'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>'<div style="font-size: 1.5rem; margin: .25rem 0 0 1rem">Add Notes</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37832847550283602)
,p_plug_name=>'Add Notes - Page 2'
,p_region_name=>'add-notes-two'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_header=>'<div style="font-size: 1.5rem; margin: .25rem 0 0 1rem">Add Notes</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33626639176196832)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_button_name=>'Close'
,p_button_static_id=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33628235807196848)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_button_name=>'Next'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F7</u> - Next'
,p_button_css_classes=>'btns text-right'
,p_grid_new_row=>'Y'
,p_grid_row_css_classes=>'r-margin'
,p_grid_column_span=>2
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37833896030283612)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(37832847550283602)
,p_button_name=>'Close-Two'
,p_button_static_id=>'close-two'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close-two'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16246192723344114)
,p_button_sequence=>140
,p_button_name=>'Exit'
,p_button_static_id=>'exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Exit'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33626208059196828)
,p_button_sequence=>150
,p_button_name=>'ADD_NOTES'
,p_button_static_id=>'notes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F7</u> - Add Notes'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P46_FROM'
,p_button_condition2=>'U'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'btns text-left t-margin'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11738286070394648)
,p_name=>'P46_PUR_ORDER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11738085220394646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purchase Order No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11738376414394649)
,p_name=>'P46_VENDOR_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11738085220394646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    VENDOR_NAME, VENDOR_ID',
'FROM',
'    NIT006'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16244805577344101)
,p_name=>'P46_VESSEL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11738457717394650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vessel Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16244924274344102)
,p_name=>'P46_ETD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11738457717394650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ETD'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16245010401344103)
,p_name=>'P46_ETA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11738457717394650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ETA'
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16245206127344105)
,p_name=>'P46_PRICING_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16245118495344104)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pricing Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    PRICING_TYPE_DESCRIPTION, PRICING_TYPE_ID',
'FROM',
'    NIM032'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16245384828344106)
,p_name=>'P46_ADDED_COST_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16245118495344104)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Added Cost'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:+,x'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16245433444344107)
,p_name=>'P46_ADDED_COST_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16245118495344104)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(15621067564319309)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16245555501344108)
,p_name=>'P46_PO_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20869173901453215)
,p_name=>'P46_LAST_ITEM'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20871112235453235)
,p_name=>'P46_URL'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24533508777263033)
,p_name=>'P46_FROM'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24534300159263041)
,p_name=>'P46_MOTHER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24534290785263040)
,p_prompt=>'Mother PO No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24534411413263042)
,p_name=>'P46_CHILD_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24534290785263040)
,p_prompt=>'Child PO No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24534519534263043)
,p_name=>'P46_VENDOR_NAME_C'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24534290785263040)
,p_prompt=>'Vendor Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24648986571650401)
,p_name=>'P46_VENDOR_ID_C'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P46_FROM'
,p_display_when2=>'A'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24649372017650405)
,p_name=>'P46_PUR_ORDER_NO_U'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24649241343650404)
,p_prompt=>'Purchase Order No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24649495278650406)
,p_name=>'P46_VENDOR_NAME_U'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24649241343650404)
,p_prompt=>'Vendor Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24650287711650414)
,p_name=>'P46_REFERENCE_PO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24650126430650413)
,p_prompt=>'Reference PO No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24650379354650415)
,p_name=>'P46_PUR_ORDER_NO_R'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24650126430650413)
,p_prompt=>'Purchase Order No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24650446612650416)
,p_name=>'P46_VENDOR_NAME_R'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24650126430650413)
,p_prompt=>'Vendor Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33626904763196835)
,p_name=>'P46_ACCOUNT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_prompt=>'Account No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-top-sm:margin-bottom-none:margin-right-sm'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33627021604196836)
,p_name=>'P46_REMARKS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REMARKS as d, REMARKS_ID as r',
'FROM NIM038'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-none:margin-right-md'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33627733142196843)
,p_name=>'P46_NOTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_prompt=>'Note'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOTE as d, NOTE_ID as r',
'FROM NIM030'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-md'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33627874067196844)
,p_name=>'P46_IMPORTANT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_prompt=>'Important'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT important AS d, important_id AS r',
'FROM NIM031'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-md'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33627981762196845)
,p_name=>'P46_SUBJECT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm:margin-right-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33628123176196847)
,p_name=>'P46_NOTE_DETAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm:margin-right-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37833026631283604)
,p_name=>'P46_OPENING_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37832847550283602)
,p_prompt=>'Opening Email'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OPENING_EMAIL as d, OPENING_EMAIL_ID as r',
'FROM NIM033'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-md'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37833207202283606)
,p_name=>'P46_OPENING_EMAIL_DETAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37832847550283602)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm:margin-right-md'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37833311998283607)
,p_name=>'P46_CLOSING_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(37832847550283602)
,p_prompt=>'Closing Email'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CLOSING_EMAIL as d, CLOSING_EMAIL_ID as r',
'FROM NIM034'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-md'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37833497994283608)
,p_name=>'P46_CLOSING_EMAIL_DETAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(37832847550283602)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-md:margin-right-md'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37833525392283609)
,p_name=>'P46_LESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(37832847550283602)
,p_prompt=>'Less'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37833678167283610)
,p_name=>'P46_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(37832847550283602)
,p_prompt=>'Add'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-md'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37835295933283626)
,p_name=>'P46_PROCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62109741453066919)
,p_name=>'P46_IMPORTANT_DETAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm:margin-right-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65874093396340906)
,p_name=>'P46_REMARKS_DETAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33626330564196829)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-sm:margin-right-md'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65874969789340915)
,p_name=>'P46_SIGNATURE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(37832847550283602)
,p_prompt=>'Signature'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SIGNATURE as d, SIGNATURE_ID as r',
'FROM NIM044'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-right-md'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65875009737340916)
,p_name=>'P46_SIGNATURE_DETAIL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(37832847550283602)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>12
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-bottom-md:margin-right-md'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20868361769453207)
,p_name=>'Get Vendor Code'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_VENDOR_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20868461860453208)
,p_event_id=>wwv_flow_imp.id(20868361769453207)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_vendor_code VARCHAR2(20);',
'    v_current_year VARCHAR2(2);',
'    v_sequence VARCHAR2(3);',
'    v_prefix VARCHAR2(30);',
'BEGIN',
'    SELECT vendor_code',
'    INTO v_vendor_code',
'    FROM NIT006',
'    WHERE vendor_id = :P46_VENDOR_NAME;',
'',
'    v_current_year := TO_CHAR(SYSDATE, ''YY'');',
'',
'    v_prefix := ''SPN-'' || v_vendor_code || ''-'' || v_current_year;',
'',
'    SELECT LPAD(NVL(MAX(TO_NUMBER(SUBSTR(po_id, LENGTH(v_prefix) + 2, 3))), 0) + 1, 3, ''0'')',
'    INTO v_sequence',
'    FROM NIT012',
'    WHERE SUBSTR(po_id, 1, LENGTH(v_prefix)) = v_prefix;',
'',
'    :P46_PUR_ORDER_NO := v_prefix || ''-'' || v_sequence;',
'END;'))
,p_attribute_02=>'P46_VENDOR_NAME'
,p_attribute_03=>'P46_PUR_ORDER_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20869253333453216)
,p_name=>'Focused at Last Field'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_ADDED_COST_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20869342935453217)
,p_event_id=>wwv_flow_imp.id(20869253333453216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_LAST_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20869409341453218)
,p_name=>'Not Focused on Last Field'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_ADDED_COST_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20869519214453219)
,p_event_id=>wwv_flow_imp.id(20869409341453218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_LAST_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20869967715453223)
,p_name=>'To Line Items'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'RedirectToLineItems'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20870910157453233)
,p_event_id=>wwv_flow_imp.id(20869967715453223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vendorName = $v(''P46_VENDOR_NAME'');',
'var vesselName = $v(''P46_VESSEL_NAME'');',
'var etd = $v(''P46_ETD'');',
'var eta = $v(''P46_ETA'');',
'var pricingType = $v(''P46_PRICING_TYPE'');',
'var operator = $v(''P46_ADDED_COST_1'');',
'var amount = $v(''P46_ADDED_COST_2'');',
'var mode = $v(''P46_FROM'');',
'',
'apex.message.clearErrors();',
'',
'var hasErrors = false;',
'',
'function isDateValid(dateString) {',
'    var datePattern = /^(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}$/;',
'',
'    if (!dateString.match(datePattern)) {',
'        return false;',
'    }',
'',
'    var parts = dateString.split("/");',
'    var month = parseInt(parts[0], 10);',
'    var day = parseInt(parts[1], 10);',
'    var year = parseInt(parts[2], 10);',
'',
'    var date = new Date(year, month - 1, day);',
'    return (date.getFullYear() === year && date.getMonth() === (month - 1) && date.getDate() === day);',
'}',
'',
'function isValidAmount(amount) {',
'    var numberPattern = /^\d{1,6}(\.\d{1,3})?$/;',
'    var parsedAmount = parseFloat(amount)',
'    return numberPattern.test(amount) && parsedAmount <= 999.999;',
'}',
'',
'if(mode === "A") {',
'    if (vendorName == "") {',
'        apex.message.showErrors([{',
'            type: "error",location: ["inline"],',
'            pageItem: "P46_VENDOR_NAME",',
'            message: "Vendor Name is required",',
'            unsafe: false',
'        }])',
'        hasErrors = true;',
'    }',
'}',
'',
'if (vesselName == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_VESSEL_NAME",',
'        message: "Vessel Name is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (vesselName.length > 50) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_VESSEL_NAME",',
'        message: "Vessel Name cannot exceed 50 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (etd == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_ETD",',
'        message: "ETD is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (!isDateValid(etd)) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_ETD",',
'        message: "Please Enter a valid date",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (eta == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_ETA",',
'        message: "ETA is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (!isDateValid(eta)) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_ETA",',
'        message: "Please Enter a valid date",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (pricingType == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_PRICING_TYPE",',
'        message: "Pricing Type is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (operator == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_ADDED_COST_1",',
'        message: "Operator is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (amount == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_ADDED_COST_2",',
'        message: "Amount is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (!isValidAmount(amount)) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_ADDED_COST_2",',
'        message: "Must be a valid amount (Max: 999.999)",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (hasErrors) {',
'    return false;',
'}',
'',
'apex.message.clearErrors();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20870050171453224)
,p_event_id=>wwv_flow_imp.id(20869967715453223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P46_FROM = ''A'' THEN',
'        INSERT INTO',
'        NIT012 (PO_ID, VENDOR_ID, IN_PO_VALUE, VESSEL_NAME, ETD_DATE, ',
'                ETA_DATE, CREATE_USER, CREATE_DATE, PRICING_TYPE_ID, ',
'                ADDED_COST_OPERATOR, ADDED_COST_AMOUNT)',
'        VALUES ',
'                (:P46_PUR_ORDER_NO, :P46_VENDOR_NAME, 0, :P46_VESSEL_NAME, ',
'                 :P46_ETD, :P46_ETA, V(''APP_USER''), SYSDATE, :P46_PRICING_TYPE, ',
'                 :P46_ADDED_COST_1, :P46_ADDED_COST_2);',
'    :P46_URL := apex_page.get_url(',
'       p_page   => 18,',
'       p_items  => ''P18_PO_NO,P18_VENDOR_ID,P18_FROM'',',
'       p_values => :P46_PUR_ORDER_NO || '','' || :P46_VENDOR_NAME || '','' || :P46_FROM',
'    );',
'    ELSIF :P46_FROM = ''C'' THEN',
'        INSERT INTO',
'        NIT012 (PARENT_PO_ID, PO_ID, VENDOR_ID, IN_PO_VALUE, VESSEL_NAME, ',
'                ETD_DATE, ETA_DATE, CREATE_USER, CREATE_DATE, PRICING_TYPE_ID, ',
'                ADDED_COST_OPERATOR, ADDED_COST_AMOUNT)',
'        VALUES ',
'                (:P46_MOTHER_NO, :P46_CHILD_NO, :P46_VENDOR_ID_C, 0, ',
'                 :P46_VESSEL_NAME, :P46_ETD, :P46_ETA, V(''APP_USER''), SYSDATE, ',
'                 :P46_PRICING_TYPE, :P46_ADDED_COST_1, :P46_ADDED_COST_2);',
'        INSERT INTO ',
'        NIT013 (PO_ID, ITEM_ID, QTY, CREATE_USER, CREATE_DATE, VENDOR_PRICE, ',
'                INTERNAL_UOM_ID, INTERNAL_PRICE, VENDOR_ID)',
'        SELECT ',
'                :P46_CHILD_NO, ITEM_ID, QTY, V(''APP_USER''), SYSDATE, VENDOR_PRICE, ',
'                INTERNAL_UOM_ID, INTERNAL_PRICE, VENDOR_ID',
'        FROM ',
'                NIT013',
'        WHERE ',
'                PO_ID = :P46_MOTHER_NO;',
'    :P46_URL := apex_page.get_url(',
'       p_page   => 18,',
'       p_items  => ''P18_PO_NO,P18_VENDOR_ID,P18_FROM'',',
'       p_values => :P46_CHILD_NO || '','' || :P46_VENDOR_ID_C || '','' || :P46_FROM',
'    );',
'    ELSIF :P46_FROM = ''R'' THEN',
'        INSERT INTO',
'        NIT012 (REFERENCE_PO_ID, PO_ID, VENDOR_ID, IN_PO_VALUE, VESSEL_NAME, ',
'                ETD_DATE, ETA_DATE, CREATE_USER, CREATE_DATE, PRICING_TYPE_ID, ',
'                ADDED_COST_OPERATOR, ADDED_COST_AMOUNT)',
'        VALUES ',
'                (:P46_REFERENCE_PO, :P46_PUR_ORDER_NO_R, :P46_VENDOR_ID_C, 0,',
'                 :P46_VESSEL_NAME, :P46_ETD, :P46_ETA, V(''APP_USER''), SYSDATE, ',
'                 :P46_PRICING_TYPE, :P46_ADDED_COST_1, :P46_ADDED_COST_2);',
'        INSERT INTO ',
'        NIT013 (PO_ID, ITEM_ID, QTY, CREATE_USER, CREATE_DATE, VENDOR_PRICE, ',
'                INTERNAL_UOM_ID, INTERNAL_PRICE, VENDOR_ID)',
'        SELECT ',
'                :P46_PUR_ORDER_NO_R, ITEM_ID, QTY,V(''APP_USER''), SYSDATE,',
'                VENDOR_PRICE, INTERNAL_UOM_ID, INTERNAL_PRICE, VENDOR_ID',
'        FROM ',
'                NIT013',
'        WHERE ',
'                PO_ID = :P46_REFERENCE_PO;',
'    ',
'    :P46_URL := apex_page.get_url(',
'       p_page   => 18,',
'       p_items  => ''P18_PO_NO,P18_VENDOR_ID,P18_FROM'',',
'       p_values => :P46_PUR_ORDER_NO_R || '','' || :P46_VENDOR_ID_C || '','' || :P46_FROM',
'    );',
'',
'    ELSIF :P46_FROM = ''U'' THEN',
'        UPDATE NIT012',
'        SET ',
'            VESSEL_NAME = :P46_VESSEL_NAME, ',
'            ETD_DATE = :P46_ETD, ',
'            ETA_DATE = :P46_ETA, ',
'            UPDATE_USER = V(''APP_USER''), ',
'            UPDATE_DATE = SYSDATE, ',
'            PRICING_TYPE_ID = :P46_PRICING_TYPE, ',
'            ADDED_COST_OPERATOR = :P46_ADDED_COST_1, ',
'            ADDED_COST_AMOUNT = :P46_ADDED_COST_2',
'        WHERE ',
'            PO_ID = :P46_PUR_ORDER_NO_U;',
'    ',
'    :P46_URL := apex_page.get_url(',
'       p_page   => 18,',
'       p_items  => ''P18_PO_NO,P18_VENDOR_ID'',',
'       p_values => :P46_PUR_ORDER_NO_U || '','' || :P46_VENDOR_ID_C',
'    );',
'',
'    END IF;',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P46_PUR_ORDER_NO,P46_VENDOR_NAME_C,P46_VESSEL_NAME,P46_ETD,P46_ETA,P46_PRICING_TYPE,P46_ADDED_COST_1,P46_ADDED_COST_2,P46_CHILD_NO,P46_VENDOR_ID_C,P46_FROM'
,p_attribute_03=>'P46_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20871255272453236)
,p_event_id=>wwv_flow_imp.id(20869967715453223)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_PUR_ORDER_NO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P46_URL");',
'apex.navigation.redirect(url);',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24535049624263048)
,p_name=>'Set Child PO Values'
,p_event_sequence=>50
,p_condition_element=>'P46_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'C'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24535124161263049)
,p_event_id=>wwv_flow_imp.id(24535049624263048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_max_suffix CHAR(1);',
'    v_mother_po_no VARCHAR2(50) := :P46_MOTHER_NO;',
'    v_next_suffix CHAR(1);',
'    v_vendor_name VARCHAR(50);',
'    v_vessel_name VARCHAR(50);',
'    v_etd VARCHAR(20);',
'    v_eta VARCHAR(20);',
'    v_pricing_type_id NUMBER;',
'    v_cost_operator CHAR(1);',
'    v_cost_amount NUMBER;',
'BEGIN',
'    SELECT MAX(SUBSTR(po_id, LENGTH(v_mother_po_no) + 1, 1))',
'    INTO v_max_suffix',
'    FROM NIT012',
'    WHERE SUBSTR(po_id, 1, LENGTH(v_mother_po_no)) = v_mother_po_no',
'    AND REGEXP_LIKE(SUBSTR(po_id, LENGTH(v_mother_po_no) + 1, 1), ''^[a-zA-Z]$'')',
'    AND LENGTH(po_id) = LENGTH(v_mother_po_no) + 1;',
'',
'    IF v_max_suffix IS NOT NULL THEN',
'        v_next_suffix := CHR(ASCII(v_max_suffix) + 1);',
'    ELSE',
'        v_next_suffix := ''a'';',
'    END IF;',
'',
'    :P46_CHILD_NO := v_mother_po_no || v_next_suffix;',
'',
'    SELECT VENDOR_NAME',
'    INTO v_vendor_name',
'    FROM NIT006',
'    WHERE VENDOR_ID = :P46_VENDOR_ID_C;',
'',
'    :P46_VENDOR_NAME_C := v_vendor_name;',
'',
'    SELECT VESSEL_NAME, TO_CHAR(ETD_DATE, ''MM/DD/YYYY''), TO_CHAR(ETA_DATE, ''MM/DD/YYYY''), PRICING_TYPE_ID, ADDED_COST_OPERATOR, ADDED_COST_AMOUNT',
'    INTO v_vessel_name, v_etd, v_eta, v_pricing_type_id, v_cost_operator, v_cost_amount',
'    FROM NIT012',
'    WHERE PO_ID = v_mother_po_no;',
'',
'    :P46_VESSEL_NAME := v_vessel_name;',
'    :P46_ETD := v_etd;',
'    :P46_ETA := v_eta;',
'    :P46_PRICING_TYPE := v_pricing_type_id;',
'    :P46_ADDED_COST_1 := v_cost_operator;',
'    :P46_ADDED_COST_2 := v_cost_amount;',
'END;'))
,p_attribute_02=>'P46_MOTHER_NO,P46_VENDOR_ID_C'
,p_attribute_03=>'P46_CHILD_NO,P46_VENDOR_NAME_C,P46_VESSEL_NAME,P46_ETD,P46_ETA,P46_PRICING_TYPE,P46_ADDED_COST_1,P46_ADDED_COST_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24649553075650407)
,p_name=>'Set Update Values'
,p_event_sequence=>60
,p_condition_element=>'P46_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'U'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24649693082650408)
,p_event_id=>wwv_flow_imp.id(24649553075650407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_po_no VARCHAR(15) := :P46_PUR_ORDER_NO_U;',
'    v_vendor_name VARCHAR(50);',
'    v_vessel_name VARCHAR(50);',
'    v_etd VARCHAR(20);',
'    v_eta VARCHAR(20);',
'    v_pricing_type_id NUMBER;',
'    v_cost_operator CHAR(1);',
'    v_cost_amount NUMBER;',
'BEGIN',
'    SELECT VENDOR_NAME',
'    INTO v_vendor_name',
'    FROM NIT006',
'    WHERE VENDOR_ID = :P46_VENDOR_ID_C;',
'',
'    :P46_VENDOR_NAME_U := v_vendor_name;',
'',
'    SELECT VESSEL_NAME, TO_CHAR(ETD_DATE, ''MM/DD/YYYY''), TO_CHAR(ETA_DATE, ''MM/DD/YYYY''), PRICING_TYPE_ID, ADDED_COST_OPERATOR, ADDED_COST_AMOUNT',
'    INTO v_vessel_name, v_etd, v_eta, v_pricing_type_id, v_cost_operator, v_cost_amount',
'    FROM NIT012',
'    WHERE PO_ID = v_po_no;',
'',
'    :P46_VESSEL_NAME := v_vessel_name;',
'    :P46_ETD := v_etd;',
'    :P46_ETA := v_eta;',
'    :P46_PRICING_TYPE := v_pricing_type_id;',
'    :P46_ADDED_COST_1 := v_cost_operator;',
'    :P46_ADDED_COST_2 := v_cost_amount;',
'END;'))
,p_attribute_02=>'P46_VENDOR_ID_C,P46_PUR_ORDER_NO_U'
,p_attribute_03=>'P46_VENDOR_NAME_U,P46_VESSEL_NAME,P46_ETD,P46_ETA,P46_PRICING_TYPE,P46_ADDED_COST_1,P46_ADDED_COST_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24650850081650420)
,p_name=>'Set Reference PO Values'
,p_event_sequence=>70
,p_condition_element=>'P46_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'R'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24650980150650421)
,p_event_id=>wwv_flow_imp.id(24650850081650420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_reference_po   VARCHAR2(20) := :P46_REFERENCE_PO;',
'    v_po_prefix      VARCHAR2(20);',
'    v_po_suffix      VARCHAR2(5);',
'    v_next_po_suffix NUMBER;',
'    v_next_po_no     VARCHAR2(20);',
'    v_vendor_name    VARCHAR2(50);',
'    po_exists        NUMBER := 1;',
'BEGIN',
'    v_po_suffix := REGEXP_SUBSTR(v_reference_po, ''\d{3}'');',
'    ',
'    v_po_prefix := SUBSTR(v_reference_po, 1, INSTR(v_reference_po, v_po_suffix) - 1);',
'    ',
'    v_next_po_suffix := TO_NUMBER(v_po_suffix) + 1;',
'    ',
'    WHILE po_exists = 1 LOOP',
'        v_next_po_no := v_po_prefix || LPAD(v_next_po_suffix, 3, ''0'');',
'        ',
'        BEGIN',
'            SELECT 1 INTO po_exists',
'            FROM NIT012',
'            WHERE po_id = v_next_po_no;',
'            ',
'            v_next_po_suffix := v_next_po_suffix + 1;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                po_exists := 0;',
'        END;',
'    END LOOP;',
'',
'    :P46_PUR_ORDER_NO_R := v_next_po_no;',
'',
'    SELECT VENDOR_NAME',
'    INTO v_vendor_name',
'    FROM NIT006',
'    WHERE VENDOR_ID = :P46_VENDOR_ID_C;',
'',
'    :P46_VENDOR_NAME_R := v_vendor_name;',
'END;'))
,p_attribute_02=>'P46_REFERENCE_PO,P46_VENDOR_ID_C'
,p_attribute_03=>'P46_PUR_ORDER_NO_R,P46_VENDOR_NAME_R'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33626416514196830)
,p_name=>'Open Add Notes Modal'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33626208059196828)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33626546239196831)
,p_event_id=>wwv_flow_imp.id(33626416514196830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33626330564196829)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37835087452283624)
,p_event_id=>wwv_flow_imp.id(33626416514196830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- l_accNo NIT014.account_no%TYPE;',
'    l_remarks NIT014.remarks_id%TYPE;',
'    l_remarksDetail NIT014.remarks%TYPE;',
'    l_note NIT014.note_id%TYPE;',
'    l_noteDetail NIT014.note%TYPE;',
'    l_important NIT014.important_id%TYPE;',
'    l_importantDetail NIT014.important%TYPE;',
'    l_subject NIT014.subject%TYPE;',
'    l_opening NIT014.opening_email_id%TYPE;',
'    l_openingDetail NIT014.opening_email%TYPE;',
'    l_less NIT014."LESS"%TYPE;',
'    l_add NIT014."ADD"%TYPE;',
'    l_close NIT014.closing_email_id%TYPE;',
'    l_closeDetail NIT014.closing_email%TYPE;',
'    l_signature NIT014.signature_id%TYPE;',
'    l_signatureDetail NIT014.signature%TYPE;',
'BEGIN',
'    SELECT remarks_id,remarks,note_id,note,important_id,important,subject,opening_email_id,opening_email,',
'           "LESS","ADD",closing_email_id,closing_email,signature_id,signature',
'    INTO l_remarks,l_remarksDetail,l_note,l_noteDetail,l_important,l_importantDetail,l_subject,l_opening,l_openingDetail,',
'           l_less,l_add,l_close,l_closeDetail,l_signature,l_signatureDetail',
'    FROM NIT014',
'    WHERE PO_ID = :P46_PUR_ORDER_NO_U;',
'',
'    -- :P46_ACCOUNT_NO := l_accNo;',
'    :P46_REMARKS := l_remarks;',
'    :P46_REMARKS_DETAIL := l_remarksDetail;',
'    :P46_NOTE := l_note;',
'    :P46_NOTE_DETAIL := l_noteDetail;',
'    :P46_IMPORTANT := l_important;',
'    :P46_IMPORTANT_DETAIL := l_importantDetail;',
'    :P46_SUBJECT := l_subject;',
'    :P46_OPENING_EMAIL := l_opening;',
'    :P46_OPENING_EMAIL_DETAIL := l_openingDetail;',
'    :P46_LESS := l_less;',
'    :P46_ADD := l_add;',
'    :P46_CLOSING_EMAIL := l_close;',
'    :P46_CLOSING_EMAIL_DETAIL := l_closeDetail;',
'    :P46_SIGNATURE := l_signature;',
'    :P46_SIGNATURE_DETAIL := l_signatureDetail;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'    -- :P46_ACCOUNT_NO := NULL;',
'    :P46_REMARKS := NULL;',
'    :P46_REMARKS_DETAIL := NULL;',
'    :P46_NOTE := NULL;',
'    :P46_NOTE_DETAIL := NULL;',
'    :P46_IMPORTANT := NULL;',
'    :P46_IMPORTANT_DETAIL := NULL;',
'    :P46_SUBJECT := NULL;',
'    :P46_OPENING_EMAIL := NULL;',
'    :P46_OPENING_EMAIL_DETAIL := NULL;',
'    :P46_LESS := NULL;',
'    :P46_ADD := NULL;',
'    :P46_CLOSING_EMAIL := NULL;',
'    :P46_CLOSING_EMAIL_DETAIL := NULL;',
'    :P46_SIGNATURE := NULL;',
'    :P46_SIGNATURE_DETAIL := NULL;',
'END;'))
,p_attribute_02=>'P46_PUR_ORDER_NO_U'
,p_attribute_03=>'P46_SIGNATURE,P46_REMARKS,P46_NOTE,P46_NOTE_DETAIL,P46_IMPORTANT,P46_SUBJECT,P46_OPENING_EMAIL,P46_OPENING_EMAIL_DETAIL,P46_LESS,P46_ADD,P46_CLOSING_EMAIL,P46_CLOSING_EMAIL_DETAIL,P46_IMPORTANT_DETAIL,P46_REMARKS_DETAIL,P46_SIGNATURE_DETAIL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37835185003283625)
,p_event_id=>wwv_flow_imp.id(33626416514196830)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var remarks = $v("P46_REMARKS");',
'',
'if(remarks === "") {',
'    apex.item("P46_PROCESS").setValue("A");',
'} else {',
'    apex.item("P46_PROCESS").setValue("U");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33626753357196833)
,p_name=>'Close Add Notes Modal'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33626639176196832)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33626895231196834)
,p_event_id=>wwv_flow_imp.id(33626753357196833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33626330564196829)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33627111895196837)
,p_name=>'Add Notes'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'addnotes'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33627264228196838)
,p_event_id=>wwv_flow_imp.id(33627111895196837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// var accNo = $v(''P46_ACCOUNT_NO'');',
'var remarks = $v(''P46_REMARKS'');',
'var remarksDetail = $v(''P46_REMARKS_DETAIL'');',
'var note = $v(''P46_NOTE'');',
'var noteDetail = $v(''P46_NOTE_DETAIL'');',
'var importantDetail = $v(''P46_IMPORTANT_DETAIL'');',
'var subject = $v(''P46_SUBJECT'');',
'',
'apex.message.clearErrors();',
'',
'var hasErrors = false;',
'',
'// if (accNo == "") {',
'//     apex.message.showErrors([{',
'//         type: "error",location: ["inline"],',
'//         pageItem: "P46_ACCOUNT_NO",',
'//         message: "Account No is required",',
'//         unsafe: false',
'//     }])',
'//     hasErrors = true;',
'// } else if (accNo.length > 15) {',
'//     apex.message.showErrors([{',
'//         type: "error",location: ["inline"],',
'//         pageItem: "P46_ACCOUNT_NO",',
'//         message: "Account No must not exceed 15 characters",',
'//         unsafe: false',
'//     }])',
'//     hasErrors = true;',
'// }',
'',
'if (remarks == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_REMARKS",',
'        message: "Remarks is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (remarksDetail == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_REMARKS_DETAIL",',
'        message: "Remarks is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (remarksDetail.length > 100) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_REMARKS_DETAIL",',
'        message: "Remarks must not exceed 100 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (note == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_NOTE",',
'        message: "Note is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (noteDetail == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_NOTE_DETAIL",',
'        message: "Note is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (noteDetail.length > 350) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_NOTE_DETAIL",',
'        message: "Note must not exceed 350 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'// if (noteDetail == "") {',
'//     apex.message.showErrors([{',
'//         type: "error",location: ["inline"],',
'//         pageItem: "P46_NOTE_DETAIL",',
'//         message: "Note is required",',
'//         unsafe: false',
'//     }])',
'//     hasErrors = true;',
'// } else if (noteDetail.length > 1000) {',
'//     apex.message.showErrors([{',
'//         type: "error",location: ["inline"],',
'//         pageItem: "P46_NOTE_DETAIL",',
'//         message: "noteDetail must not exceed 1000 characters",',
'//         unsafe: false',
'//     }])',
'//     hasErrors = true;',
'// }',
'',
'if (importantDetail && importantDetail.length > 100) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_IMPORTANT_DETAIL",',
'        message: "Important must not exceed 100 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (subject == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_SUBJECT",',
'        message: "Subject is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (subject.length > 150) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_SUBJECT",',
'        message: "Subject must not exceed 150 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (hasErrors) {',
'    return false;',
'}',
'',
'apex.message.clearErrors();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33627353976196839)
,p_event_id=>wwv_flow_imp.id(33627111895196837)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33626330564196829)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37832947467283603)
,p_event_id=>wwv_flow_imp.id(33627111895196837)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37832847550283602)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33628339273196849)
,p_name=>'Set Note Details - U'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_NOTE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37836245728283636)
,p_event_id=>wwv_flow_imp.id(33628339273196849)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_NOTE_DETAIL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_note_detail VARCHAR2(4000);',
'BEGIN',
'    SELECT CASE',
'             WHEN EXISTS (',
'                 SELECT 1',
'                 FROM NIT014',
'                 WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                   AND NOTE_ID = :P46_NOTE',
'             )',
'             THEN',
'                 (SELECT NOTE',
'                  FROM NIT014',
'                  WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                    AND NOTE_ID = :P46_NOTE)',
'             ELSE',
'                 (SELECT NOTE',
'                  FROM NIM030',
'                  WHERE NOTE_ID = :P46_NOTE)',
'           END',
'    INTO v_note_detail',
'    FROM DUAL;',
'',
'    RETURN v_note_detail;',
'END;'))
,p_attribute_07=>'P46_PUR_ORDER_NO_U,P46_NOTE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37833930090283613)
,p_name=>'Close Page Two'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37833896030283612)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37834066219283614)
,p_event_id=>wwv_flow_imp.id(37833930090283613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37832847550283602)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37834108757283615)
,p_name=>'Add Notes Two'
,p_event_sequence=>130
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'addnotestwo'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37834276561283616)
,p_event_id=>wwv_flow_imp.id(37834108757283615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var openingEmail = $v(''P46_OPENING_EMAIL'');',
'var openingEmailDetail = $v(''P46_OPENING_EMAIL_DETAIL'');',
'var less = $v(''P46_LESS'');',
'var add = $v(''P46_ADD'');',
'var closingEmail = $v(''P46_CLOSING_EMAIL'');',
'var closingEmailDetail = $v(''P46_CLOSING_EMAIL_DETAIL'');',
'var signature = $v("P46_SIGNATURE");',
'var signatureDetail = $v("P46_SIGNATURE_DETAIL");',
'var process = $v(''P46_PROCESS'');',
'',
'apex.message.clearErrors();',
'',
'var hasErrors = false;',
'',
'if (openingEmail == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_OPENING_EMAIL",',
'        message: "Opening Email No is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (openingEmailDetail == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_OPENING_EMAIL_DETAIL",',
'        message: "Opening Email is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (openingEmailDetail.length > 800) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_OPENING_EMAIL_DETAIL",',
'        message: "Opening Email must not exceed 800 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (less.length > 30) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_LESS",',
'        message: "Less must not exceed 30 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (add.length > 50) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_ADD",',
'        message: "Add must not exceed 50 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (closingEmail == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_CLOSING_EMAIL",',
'        message: "Closing Email No is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (closingEmailDetail == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_CLOSING_EMAIL_DETAIL",',
'        message: "Closing Email is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (closingEmailDetail.length > 600) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_CLOSING_EMAIL_DETAIL",',
'        message: "Closing Email must not exceed 600 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (signature == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_SIGNATURE",',
'        message: "Signature is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (signatureDetail == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_SIGNATURE_DETAIL",',
'        message: "Signature is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (hasErrors) {',
'    return false;',
'}',
'',
'apex.message.clearErrors();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37834911686283623)
,p_event_id=>wwv_flow_imp.id(37834108757283615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P46_PROCESS = ''A'' THEN ',
'        INSERT INTO ',
'            NIT014 (remarks_id, remarks, note_id, important_id, important, subject, opening_email_id, "LESS", "ADD",',
'                    closing_email_id, create_user, create_date, update_user, update_date, note, opening_email,',
'                    closing_email, signature_id, signature, po_id)',
'        VALUES ',
'            (:P46_REMARKS, :P46_REMARKS_DETAIL, :P46_NOTE, :P46_IMPORTANT, :P46_IMPORTANT_DETAIL, :P46_SUBJECT,',
'             :P46_OPENING_EMAIL, :P46_LESS, :P46_ADD, :P46_CLOSING_EMAIL, V(''APP_USER''), SYSDATE,',
'             NULL, NULL, :P46_NOTE_DETAIL, :P46_OPENING_EMAIL_DETAIL, :P46_CLOSING_EMAIL_DETAIL, ',
'             :P46_SIGNATURE, :P46_SIGNATURE_DETAIL, :P46_PUR_ORDER_NO_U);',
'    ELSIF :P46_PROCESS = ''U'' THEN',
'        UPDATE',
'            NIT014',
'        SET',
'            -- account_no = :P46_ACCOUNT_NO,',
'            remarks_id = :P46_REMARKS,',
'            remarks = :P46_REMARKS_DETAIL,',
'            note_id = :P46_NOTE,',
'            important_id = :P46_IMPORTANT,',
'            important = :P46_IMPORTANT_DETAIL,',
'            subject = :P46_SUBJECT,',
'            opening_email_id = :P46_OPENING_EMAIL,',
'            "LESS" = :P46_LESS,',
'            "ADD" = :P46_ADD,',
'            closing_email_id = :P46_CLOSING_EMAIL,',
'            update_user = V(''APP_USER''),',
'            update_date = SYSDATE,',
'            note = :P46_NOTE_DETAIL,',
'            opening_email = :P46_OPENING_EMAIL_DETAIL,',
'            closing_email = :P46_CLOSING_EMAIL_DETAIL,',
'            signature_id = :P46_SIGNATURE,',
'            signature = :P46_SIGNATURE_DETAIL',
'        WHERE po_id = :P46_PUR_ORDER_NO_U;',
'    END IF;',
'END;',
''))
,p_attribute_02=>'P46_PUR_ORDER_NO_U,P46_PROCESS,P46_REMARKS,P46_IMPORTANT,P46_NOTE,P46_NOTE_DETAIL,P46_SUBJECT,P46_OPENING_EMAIL,P46_OPENING_EMAIL_DETAIL,P46_LESS,P46_ADD,P46_CLOSING_EMAIL,P46_CLOSING_EMAIL_DETAIL,P46_IMPORTANT_DETAIL,P46_REMARKS_DETAIL,P46_SIGNATURE'
||',P46_SIGNATURE_DETAIL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37835414041283628)
,p_event_id=>wwv_flow_imp.id(37834108757283615)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37832847550283602)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37834398684283617)
,p_name=>'Set Opening Email Details'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_OPENING_EMAIL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37834847928283622)
,p_event_id=>wwv_flow_imp.id(37834398684283617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_OPENING_EMAIL_DETAIL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_opening_email_detail VARCHAR2(4000);',
'BEGIN',
'    SELECT CASE',
'             WHEN EXISTS (',
'                 SELECT 1',
'                 FROM NIT014',
'                 WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                   AND OPENING_EMAIL_ID = :P46_OPENING_EMAIL',
'             )',
'             THEN',
'                 (SELECT OPENING_EMAIL',
'                  FROM NIT014',
'                  WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                    AND OPENING_EMAIL_ID = :P46_OPENING_EMAIL)',
'             ELSE',
'                 (SELECT OPENING_EMAIL',
'                  FROM NIM033',
'                  WHERE OPENING_EMAIL_ID = :P46_OPENING_EMAIL)',
'           END',
'    INTO v_opening_email_detail',
'    FROM DUAL;',
'',
'    RETURN v_opening_email_detail;',
'END;'))
,p_attribute_07=>'P46_PUR_ORDER_NO,P46_OPENING_EMAIL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37834570602283619)
,p_name=>'Set Closing Email Details'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_CLOSING_EMAIL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37834661991283620)
,p_event_id=>wwv_flow_imp.id(37834570602283619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_CLOSING_EMAIL_DETAIL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_closing_email_detail VARCHAR2(4000);',
'BEGIN',
'    SELECT CASE',
'             WHEN EXISTS (',
'                 SELECT 1',
'                 FROM NIT014',
'                 WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                   AND CLOSING_EMAIL_ID = :P46_CLOSING_EMAIL',
'             )',
'             THEN',
'                 (SELECT CLOSING_EMAIL',
'                  FROM NIT014',
'                  WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                    AND CLOSING_EMAIL_ID = :P46_CLOSING_EMAIL)',
'             ELSE',
'                 (SELECT CLOSING_EMAIL',
'                  FROM NIM034',
'                  WHERE CLOSING_EMAIL_ID = :P46_CLOSING_EMAIL)',
'           END',
'    INTO v_closing_email_detail',
'    FROM DUAL;',
'',
'    RETURN v_closing_email_detail;',
'END;'))
,p_attribute_07=>'P46_PUR_ORDER_NO,P46_CLOSING_EMAIL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37836855224283642)
,p_name=>'Update Notes'
,p_event_sequence=>160
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'updatenotes'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37837005020283644)
,p_event_id=>wwv_flow_imp.id(37836855224283642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// var accNo = $v(''P46_ACCOUNT_NO'');',
'var remarks = $v(''P46_REMARKS'');',
'var remarksDetail = $v(''P46_REMARKS_DETAIL'');',
'var note = $v(''P46_NOTE'');',
'var noteDetail = $v(''P46_NOTE_DETAIL'');',
'var importantDetail = $v(''P46_IMPORTANT_DETAIL'');',
'var subject = $v(''P46_SUBJECT'');',
'',
'apex.message.clearErrors();',
'',
'var hasErrors = false;',
'',
'// if (accNo == "") {',
'//     apex.message.showErrors([{',
'//         type: "error",location: ["inline"],',
'//         pageItem: "P46_ACCOUNT_NO",',
'//         message: "Account No is required",',
'//         unsafe: false',
'//     }])',
'//     hasErrors = true;',
'// } else if (accNo.length > 15) {',
'//     apex.message.showErrors([{',
'//         type: "error",location: ["inline"],',
'//         pageItem: "P46_ACCOUNT_NO",',
'//         message: "Account No must not exceed 15 characters",',
'//         unsafe: false',
'//     }])',
'//     hasErrors = true;',
'// }',
'',
'if (remarks == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_REMARKS",',
'        message: "Remarks is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (remarksDetail == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_REMARKS_DETAIL",',
'        message: "Remarks is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (remarksDetail.length > 100) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_REMARKS_DETAIL",',
'        message: "Remarks must not exceed 100 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (note == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_NOTE",',
'        message: "Note is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (noteDetail == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_NOTE_DETAIL",',
'        message: "Note is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (noteDetail.length > 350) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_NOTE_DETAIL",',
'        message: "noteDetail must not exceed 350 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'// if (noteDetail == "") {',
'//     apex.message.showErrors([{',
'//         type: "error",location: ["inline"],',
'//         pageItem: "P46_NOTE_DETAIL",',
'//         message: "Note is required",',
'//         unsafe: false',
'//     }])',
'//     hasErrors = true;',
'// } else if (noteDetail.length > 1000) {',
'//     apex.message.showErrors([{',
'//         type: "error",location: ["inline"],',
'//         pageItem: "P46_NOTE_DETAIL",',
'//         message: "noteDetail must not exceed 1000 characters",',
'//         unsafe: false',
'//     }])',
'//     hasErrors = true;',
'// }',
'',
'if (importantDetail && importantDetail.length > 100) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_IMPORTANT_DETAIL",',
'        message: "Important must not exceed 100 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (subject == "") {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_SUBJECT",',
'        message: "Subject is required",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'} else if (subject.length > 150) {',
'    apex.message.showErrors([{',
'        type: "error",location: ["inline"],',
'        pageItem: "P46_SUBJECT",',
'        message: "Subject must not exceed 150 characters",',
'        unsafe: false',
'    }])',
'    hasErrors = true;',
'}',
'',
'if (hasErrors) {',
'    return false;',
'}',
'',
'apex.message.clearErrors();',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37836533560283639)
,p_event_id=>wwv_flow_imp.id(37836855224283642)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE',
'    NIT014',
'SET',
'    -- account_no = :P46_ACCOUNT_NO,',
'    remarks_id = :P46_REMARKS,',
'    remarks = :P46_REMARKS_DETAIL,',
'    note_id = :P46_NOTE,',
'    important_id = :P46_IMPORTANT,',
'    important = :P46_IMPORTANT_DETAIL,',
'    subject = :P46_SUBJECT,',
'    opening_email_id = :P46_OPENING_EMAIL,',
'    "LESS" = :P46_LESS,',
'    "ADD" = :P46_ADD,',
'    closing_email_id = :P46_CLOSING_EMAIL,',
'    update_user = V(''APP_USER''),',
'    update_date = SYSDATE,',
'    note = :P46_NOTE_DETAIL,',
'    opening_email = :P46_OPENING_EMAIL_DETAIL,',
'    closing_email = :P46_CLOSING_EMAIL_DETAIL,',
'    signature_id = :P46_SIGNATURE,',
'    signature = :P46_SIGNATURE_DETAIL',
'WHERE po_id = :P46_PUR_ORDER_NO_U;',
'',
''))
,p_attribute_02=>'P46_PUR_ORDER_NO_U,P46_REMARKS,P46_IMPORTANT,P46_NOTE,P46_NOTE_DETAIL,P46_SUBJECT,P46_OPENING_EMAIL,P46_OPENING_EMAIL_DETAIL,P46_LESS,P46_ADD,P46_CLOSING_EMAIL,P46_CLOSING_EMAIL_DETAIL,P46_IMPORTANT_DETAIL,P46_REMARKS_DETAIL,P46_SIGNATURE,P46_SIGNATU'
||'RE_DETAIL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P46_PROCESS'
,p_client_condition_expression=>'U'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37837119593283645)
,p_event_id=>wwv_flow_imp.id(37836855224283642)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33626330564196829)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62109869405066920)
,p_name=>'Set Important Details'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_IMPORTANT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62109993748066921)
,p_event_id=>wwv_flow_imp.id(62109869405066920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_IMPORTANT_DETAIL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_important_detail VARCHAR2(4000);',
'BEGIN',
'    SELECT CASE',
'             WHEN EXISTS (',
'                 SELECT 1',
'                 FROM NIT014',
'                 WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                   AND IMPORTANT_ID = :P46_IMPORTANT',
'             )',
'             THEN',
'                 (SELECT IMPORTANT',
'                  FROM NIT014',
'                  WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                    AND IMPORTANT_ID = :P46_IMPORTANT)',
'             ELSE',
'                 (SELECT IMPORTANT',
'                  FROM NIM031',
'                  WHERE IMPORTANT_ID = :P46_IMPORTANT)',
'           END',
'    INTO v_important_detail',
'    FROM DUAL;',
'',
'    RETURN v_important_detail;',
'END;'))
,p_attribute_07=>'P46_PUR_ORDER_NO_U,P46_IMPORTANT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65874141230340907)
,p_name=>'Set Remarks Detail'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_REMARKS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65874294127340908)
,p_event_id=>wwv_flow_imp.id(65874141230340907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_REMARKS_DETAIL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_remarks_detail VARCHAR2(4000);',
'BEGIN',
'    SELECT CASE',
'             WHEN EXISTS (',
'                 SELECT 1',
'                 FROM NIT014',
'                 WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                   AND REMARKS_ID = :P46_REMARKS',
'             )',
'             THEN',
'                 (SELECT REMARKS',
'                  FROM NIT014',
'                  WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                    AND REMARKS_ID = :P46_REMARKS)',
'             ELSE',
'                 (SELECT REMARKS',
'                  FROM NIM038',
'                  WHERE REMARKS_ID = :P46_REMARKS)',
'           END',
'    INTO v_remarks_detail',
'    FROM DUAL;',
'',
'    RETURN v_remarks_detail;',
'END;'))
,p_attribute_07=>'P46_PUR_ORDER_NO_U,P46_REMARKS'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65875162746340917)
,p_name=>'Set Signature Details'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_SIGNATURE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65875222956340918)
,p_event_id=>wwv_flow_imp.id(65875162746340917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_SIGNATURE_DETAIL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_signature_detail VARCHAR2(4000);',
'BEGIN',
'    SELECT CASE',
'             WHEN EXISTS (',
'                 SELECT 1',
'                 FROM NIT014',
'                 WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                   AND SIGNATURE_ID = :P46_SIGNATURE',
'             )',
'             THEN',
'                 (SELECT SIGNATURE',
'                  FROM NIT014',
'                  WHERE PO_ID = :P46_PUR_ORDER_NO_U',
'                    AND SIGNATURE_ID = :P46_SIGNATURE)',
'             ELSE',
'                 (SELECT SIGNATURE',
'                  FROM NIM044',
'                  WHERE SIGNATURE_ID = :P46_SIGNATURE)',
'           END',
'    INTO v_signature_detail',
'    FROM DUAL;',
'',
'    RETURN v_signature_detail;',
'END;'))
,p_attribute_07=>'P46_PUR_ORDER_NO_U,P46_SIGNATURE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
