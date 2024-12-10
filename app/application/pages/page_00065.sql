prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_name=>'POS Cashiering - Closing Balance'
,p_alias=>'POS-CASHIERING-CLOSING-BALANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'CLOSING BALANCE'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'',
'const p64KeyMap = {',
'    enter : (v) => {',
'        if (!$(''#closing-balance'').is('':visible'')) {',
'            $("#submit").trigger("click");',
'        } else {',
'            $("#insert").trigger("click");',
'        }',
'    },',
'',
'    escape: (v) => {',
'        console.log("to-top");',
'        $("#esc").trigger("click");',
'    },',
'',
'',
'}',
'',
'function mapP64Keys() {',
'    $(document).off(''keydown.p64keyevents'');',
'    $(document).on(''keydown.p64keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p64KeyMap[key]) {',
'            ev.preventDefault();',
'            p64KeyMap[key]();',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP64Keys();',
'}'))
,p_javascript_code_onload=>'mapP64Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    background-color: #056AC8;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'.t-Dialog-body label{',
'    font-size: 1.125rem;',
'    background-color: #056AC8;',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'.t-Dialog-body input{',
'    font-size: 1.125rem;',
'    background-color: #056AC8;',
'    color: black;',
'}',
'',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'   // white-space: nowrap;',
'    font-weight: 100;',
'    color: white;',
'}',
'',
'.t-Form-label {',
'    line-height: 1.5rem;',
'    white-space: nowrap;',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'#closing-balance {',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    white-space: nowrap;',
'    font-weight: 100;',
'    color: white;',
'    background-color: #056AC8;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar{',
'    background-color: #056AC8;',
'    color: white;',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'    text-align: left;',
'    ',
'}',
'',
'.ui-button {',
'    display: none;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
'element.style {',
'    position: absolute;',
'    height: auto;',
'    width: 280px;',
'    top: 50%;',
'    left: 50%;',
'    max-width: 100%;',
'}',
'',
'.apex-page-success {',
'    background-color: #ffcccc !important; /* Light red background */',
'    border-color: #ff0000 !important;     /* Red border */',
'    color: #ff0000 !important;           /* Red text */',
'}',
''))
,p_step_template=>wwv_flow_imp.id(4218915405083976)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(87920340668603880)
,p_plug_name=>'Confirm Closing Balance'
,p_region_name=>'closing-balance'
,p_region_template_options=>'t-DialogRegion--noPadding:js-modal:js-draggable:js-dialog-nosize:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>160
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44226234175030395)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(87920340668603880)
,p_button_name=>'Insert'
,p_button_static_id=>'insert'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Insert'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44225510767030385)
,p_button_sequence=>150
,p_button_name=>'Confirm'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Confirm'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44271873440177702)
,p_name=>'P65_CASH_VALUE'
,p_item_sequence=>140
,p_prompt=>'Cash Value:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62939949761834658)
,p_name=>'P65_001'
,p_item_sequence=>20
,p_prompt=>'0.01'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62940097711834659)
,p_name=>'P65_1'
,p_item_sequence=>30
,p_prompt=>'1'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62940196939834660)
,p_name=>'P65_50'
,p_item_sequence=>40
,p_prompt=>'50'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62940339688834661)
,p_name=>'P65_005'
,p_item_sequence=>50
,p_prompt=>'0.05'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62940388894834662)
,p_name=>'P65_5'
,p_item_sequence=>60
,p_prompt=>'5'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62940533643834663)
,p_name=>'P65_100'
,p_item_sequence=>70
,p_prompt=>'100'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62940600001834664)
,p_name=>'P65_010'
,p_item_sequence=>80
,p_prompt=>'0.10'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62940653905834665)
,p_name=>'P65_10'
,p_item_sequence=>90
,p_prompt=>'10'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63878815477725816)
,p_name=>'P65_025'
,p_item_sequence=>120
,p_prompt=>'0.25'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63878841632725817)
,p_name=>'P65_20'
,p_item_sequence=>130
,p_prompt=>'20'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'oninput="this.value = this.value.replace(/[^0-9]/g, '''');"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'999999999'
,p_attribute_03=>'right'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63879204661725820)
,p_name=>'P65_TOTAL'
,p_item_sequence=>100
,p_prompt=>'Total:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87922158740603927)
,p_name=>'P65_BALANCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(87920340668603880)
,p_prompt=>'Balance:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>7
,p_grid_column=>3
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44230449433030426)
,p_validation_name=>'0.01'
,p_validation_sequence=>10
,p_validation=>'P65_001'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44230852487030428)
,p_validation_name=>'1'
,p_validation_sequence=>20
,p_validation=>'P65_1'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44231207232030428)
,p_validation_name=>'50'
,p_validation_sequence=>30
,p_validation=>'P65_50'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44231690688030428)
,p_validation_name=>'0.05'
,p_validation_sequence=>40
,p_validation=>'P65_005'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44232410342030429)
,p_validation_name=>'5'
,p_validation_sequence=>50
,p_validation=>'P65_5'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44232899395030429)
,p_validation_name=>'100'
,p_validation_sequence=>60
,p_validation=>'P65_100'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44233270970030429)
,p_validation_name=>'0.10'
,p_validation_sequence=>70
,p_validation=>'P65_010'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44232022389030429)
,p_validation_name=>'10'
,p_validation_sequence=>80
,p_validation=>'P65_10'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44233675948030431)
,p_validation_name=>'0.25'
,p_validation_sequence=>90
,p_validation=>'P65_025'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44234041435030431)
,p_validation_name=>'20'
,p_validation_sequence=>100
,p_validation=>'P65_20'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No letters allowed.',
''))
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44242219550030448)
,p_name=>'Set Total'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_001,P65_1,P65_50,P65_005,P65_5,P65_100,P65_010,P65_10,P65_025,P65_20'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44242754154030448)
,p_event_id=>wwv_flow_imp.id(44242219550030448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(:P65_001, 0) * 0.01 +',
'    NVL(:P65_1, 0) * 1 +',
'    NVL(:P65_50, 0) * 50 +',
'    NVL(:P65_005, 0) * 0.05 +',
'    NVL(:P65_5, 0) * 5 +',
'    NVL(:P65_100, 0) * 100 +',
'    NVL(:P65_010, 0) * 0.10 +',
'    NVL(:P65_10, 0) * 10 +',
'    NVL(:P65_025, 0) * 0.25 +',
'    NVL(:P65_20, 0) * 20,',
'    ''99990.00''',
')',
''))
,p_attribute_07=>'P65_001,P65_1,P65_50,P65_005,P65_5,P65_100,P65_010,P65_10,P65_025,P65_20'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44236175657030437)
,p_name=>'Set Balance'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_001,P65_1,P65_50,P65_005,P65_5,P65_100,P65_010,P65_10,P65_025,P65_20'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44236638191030439)
,p_event_id=>wwv_flow_imp.id(44236175657030437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'TO_CHAR(',
'    NVL(:P65_001, 0) * 0.01 +',
'    NVL(:P65_1, 0) * 1 +',
'    NVL(:P65_50, 0) * 50 +',
'    NVL(:P65_005, 0) * 0.05 +',
'    NVL(:P65_5, 0) * 5 +',
'    NVL(:P65_100, 0) * 100 +',
'    NVL(:P65_010, 0) * 0.10 +',
'    NVL(:P65_10, 0) * 10 +',
'    NVL(:P65_025, 0) * 0.25 +',
'    NVL(:P65_20, 0) * 20,',
'    ''99990.00''',
')',
''))
,p_attribute_07=>'P65_001,P65_1,P65_50,P65_005,P65_5,P65_100,P65_010,P65_10,P65_025,P65_20'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44237185908030439)
,p_event_id=>wwv_flow_imp.id(44236175657030437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(87920340668603880)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44237572855030440)
,p_name=>'Focus'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44238090964030440)
,p_event_id=>wwv_flow_imp.id(44237572855030440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_001'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44234770517030432)
,p_name=>'Validate & Open Region'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44225510767030385)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44235258956030435)
,p_event_id=>wwv_flow_imp.id(44234770517030432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field1 = $v(''P65_001'');  ',
'var field2 = $v(''P65_005'');',
'var field3 = $v(''P65_010'');',
'var field4 = $v(''P65_025'');',
'var field5 = $v(''P65_1'');',
'var field6 = $v(''P65_10'');',
'var field7 = $v(''P65_100'');',
'var field8 = $v(''P65_20'');',
'var field9 = $v(''P65_5'');',
'var field10 = $v(''P65_50'');',
'',
'if (field1.trim() === '''' && field2.trim() === '''' && field3.trim() === '''' &&',
'    field4.trim() === '''' && field5.trim() === '''' && field6.trim() === '''' &&',
'    field7.trim() === '''' && field8.trim() === '''' && field9.trim() === '''' &&',
'    field10.trim() === '''') {',
'    ',
'    apex.message.clearErrors(); ',
'    apex.message.showErrors([{',
'        type: ''error'',',
'        location: [''P65_001'', ''P65_005'', ''P65_010'', ''P65_025'', ''P65_1'', ''P65_10'', ''P65_100'', ''P65_20'', ''P65_5'', ''P65_50''],',
'        message: ''Please fill in at least one text field.''',
'    }]);',
'',
'    return false;',
'} else {',
'',
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44235711251030437)
,p_event_id=>wwv_flow_imp.id(44234770517030432)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(87920340668603880)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44240851808030446)
,p_name=>'Insert'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44226234175030395)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44241323951030446)
,p_event_id=>wwv_flow_imp.id(44240851808030446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (1, NVL(:P65_001, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (2, NVL(:P65_005, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (3, NVL(:P65_010, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (4, NVL(:P65_025, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (5, NVL(:P65_1, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (6, NVL(:P65_5, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (7, NVL(:P65_10, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (8, NVL(:P65_20, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (9, NVL(:P65_50, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER, USER_CREATED, DATE_CREATED)',
'VALUES (10, NVL(:P65_100, 0), :P65_TOTAL, :app_user, SYSDATE);',
'',
'',
'INSERT INTO NPT023 (CLOSING_CASH_AMOUNT, USER_CREATED, DATE_CREATED)',
'VALUES (:P65_BALANCE, :app_user, SYSDATE);'))
,p_attribute_02=>'P65_BALANCE,P65_001,P65_1,P65_50,P65_005,P65_5,P65_100,P65_010,P65_10,P65_025,P65_20,P65_TOTAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44241827784030448)
,p_event_id=>wwv_flow_imp.id(44240851808030446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44234343997030431)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT INTO NPT024'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (0.01, NVL(:P65_001, 0), :P65_TOTAL);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (0.05, NVL(:P65_005, 0), :P65_TOTAL);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (0.10, NVL(:P65_010, 0), :P65_TOTAL);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (0.25, NVL(:P65_025, 0), :P65_TOTAL);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (1, NVL(:P65_1, 0), :P65_TOTAL);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (10, NVL(:P65_10, 0), :P65_TOTAL);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (100, NVL(:P65_100, 0), :P65_TOTAL);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (20, NVL(:P65_20, 0), :P65_TOTAL);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (5, NVL(:P65_5, 0), :P65_TOTAL);',
'',
'INSERT INTO NPT024 (DENOMINATION_ID, QUANTITY, TOTAL_NUMBER)',
'VALUES (50, NVL(:P65_50, 0), :P65_TOTAL);',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
,p_internal_uid=>44234343997030431
);
wwv_flow_imp.component_end;
end;
/
