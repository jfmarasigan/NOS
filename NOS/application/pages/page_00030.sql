prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_name=>'POS Cashiering Screen Scan Price'
,p_alias=>'POS-CASHIERING-SCREEN-SCAN-PRICE'
,p_page_mode=>'MODAL'
,p_step_title=>'Price Scanner'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#onscan.min.js',
'#APP_FILES#onscan#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'',
'const p30KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    }',
'',
'}',
'',
'',
'function mapP30Keys() {',
'    $(document).off(''keydown.p30keyevents'');',
'    $(document).on(''keydown.p30keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p30KeyMap[key]) {',
'            ev.preventDefault();',
'            p30KeyMap[key]();',
'        }',
'    });',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP30Keys();',
'',
'onScan.attachTo(document, {onScan: function(sScancode, iQuantity){',
'    apex.item("P30_BARCODE").setValue(JSON.parse(sScancode));',
'}});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    background-color: #226597;',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}',
'.t-Dialog-body label,',
'.t-Dialog-body input{',
'    font-size: 1.125rem;',
'}',
'',
'.t-Region-body{',
'    padding: 0.4;',
'}',
'',
'.t-Form-label{',
'    white-space: nowrap;',
'}',
'',
'#scan-price{',
'    background-color: white;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'640'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10618346057246339)
,p_plug_name=>'Scan Price'
,p_region_name=>'scan-price'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28113608261138889)
,p_plug_name=>'Buttons'
,p_region_css_classes=>'hiddenbtn'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17282040616498901)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28113608261138889)
,p_button_name=>'Search'
,p_button_static_id=>'search-price'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Enter - Search'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17282443141498904)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(28113608261138889)
,p_button_name=>'Close'
,p_button_static_id=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Esc - Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10286042272970939)
,p_name=>'P30_ITEM_PRICE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10618346057246339)
,p_prompt=>'Item Price:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>7
,p_grid_column=>2
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--postTextBlock:margin-right-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17274072690462601)
,p_name=>'P30_ITEM_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10618346057246339)
,p_prompt=>'Item Desc:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>7
,p_grid_column=>2
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--postTextBlock:margin-right-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27427684397078126)
,p_name=>'P30_BARCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10618346057246339)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17274128616462602)
,p_name=>'Search Enter'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17282040616498901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17274280480462603)
,p_event_id=>wwv_flow_imp.id(17274128616462602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var field1 = $v("P30_ITEM_DESC");',
'',
'if (!field1) {',
'    apex.message.showErrors({',
'        type: "error",',
'        location: "inline",',
'        pageItem: "P30_ITEM_DESC",',
'        message: "Please fill in at least one field."',
'    });',
'    // Highlight fields that are empty',
'    if (!field1) {',
'        $("#P30_ITEM_DESC").addClass("error-highlight");',
'    }',
'',
'    return false; // Prevent modal from closing',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17274381129462604)
,p_name=>'Cancel'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17282443141498904)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17274418328462605)
,p_event_id=>wwv_flow_imp.id(17274381129462604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17274502401462606)
,p_name=>'Add Collection'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27427590255078125)
,p_event_id=>wwv_flow_imp.id(17274502401462606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_price number;',
'    v_desc varchar(30);',
'',
'BEGIN',
'    SELECT a.item_desc, b.price INTO v_desc, v_price',
'      FROM NIT001 a, NIT002 b',
'     WHERE a.item_id = b.item_id',
'       AND b.upc = :P30_BARCODE;',
'',
'       apex_collection.add_member(',
'            p_collection_name => ''SEARCH'',',
'            p_c001 => NVL(v_desc, ''NO DATA FOUND''),',
'            p_n001 => NVL(v_price, 0)',
'            );',
'END;'))
,p_attribute_02=>'P30_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27428226192078132)
,p_event_id=>wwv_flow_imp.id(17274502401462606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ITEM_DESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(c001, ''NO DATA FOUND'' ) ',
'  FROM apex_collections',
' WHERE collection_name = ''SEARCH''',
'   AND seq_id = (SELECT MAX(seq_id) ',
'                   FROM apex_collections ',
'                  WHERE collection_name = ''SEARCH'');',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27428308893078133)
,p_event_id=>wwv_flow_imp.id(17274502401462606)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ITEM_PRICE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR( NVL(n001, 0),''L999G999G990D99'' ) ',
'FROM apex_collections',
'WHERE collection_name = ''SEARCH''',
'  AND seq_id = (SELECT MAX(seq_id) FROM apex_collections WHERE collection_name = ''SEARCH'');',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27428157687078131)
,p_event_id=>wwv_flow_imp.id(17274502401462606)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ITEM_DESC,P30_ITEM_PRICE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10635230843246410)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10635230843246410
);
wwv_flow_imp.component_end;
end;
/
