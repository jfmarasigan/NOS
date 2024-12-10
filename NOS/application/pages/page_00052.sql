prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_name=>'Update Transfer'
,p_alias=>'UPDATE-TRANSFER'
,p_step_title=>'Update Transfer'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p52KeyMap = {',
'    enter : (v) => {',
'        $.event.trigger(''ToTransferLine'');      ',
'    },',
'',
'    tab : (v) => {',
'        jQuery($v("P52_NEXT_ITEM")).trigger("focus").select();',
'    },',
'',
'    escape : (v) => {',
'        $.event.trigger("exit");',
'    }',
'}',
'',
'function mapP52Keys() {',
'    $(document).off(''keydown.p52keyevents'');',
'    $(document).on(''keydown.p52keyevents'', (ev) => {',
'        console.log(`KeyboardEvent: key=''${ev.key}'' | code=''${ev.code}''`);',
'        var key = ev.key?.toLowerCase();',
'        if (p52KeyMap[key]) {',
'            ev.preventDefault();',
'            p52KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP52Keys();',
'setTitle("Update Transfer");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.err-message{',
'    color:red;',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'#content label, #content input, #content .apex-item-display-only{',
'    font-size: 1.125rem;',
'}',
'',
'.format-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.input-size{',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.title-header {',
'    display: flex;',
'    justify-content: center;',
'    margin-top: 1.5rem;',
'    /* color: #056BC9; */',
'    color: white;',
'    font-size: 2rem;',
'    font-weight: 700;',
'    line-height: normal;',
'}',
'',
'body{',
'    background-color: rgb(30, 58, 138);',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25052609936354452)
,p_plug_name=>'Update Transfer'
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12937743878948125)
,p_branch_action=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12895105310147737)
,p_name=>'P52_PREPARED_URL'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15247645922369613)
,p_name=>'P52_HAS_NULL'
,p_item_sequence=>20
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15247732930369614)
,p_name=>'P52_FIRST_EMPTY_ITEM'
,p_item_sequence=>30
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15247891109369615)
,p_name=>'P52_ERR_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'New'
,p_source=>'<p class="err-message">Please fill out all the fields.</p>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25052691312354496)
,p_name=>'P52_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TRANSFER_DATE',
'FROM',
'    NIT010',
'WHERE',
'    :P52_TRANSFER_ID = TRANSFER_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'New'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_css_classes=>'input-size'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25052725991354497)
,p_name=>'P52_FROMWAREHOUSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    FROMWAREHOUSE_ID',
'FROM',
'    NIT010',
'WHERE',
'    :P52_TRANSFER_ID = TRANSFER_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'From'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    WAREHOUSE_LOCATION AS display,',
'    WAREHOUSE_ID AS return',
'FROM',
'    NIM027'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_css_classes=>'input-size'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25052860454354498)
,p_name=>'P52_TOWAREHOUSE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TOWAREHOUSE_ID',
'FROM',
'    NIT010',
'WHERE',
'    :P52_TRANSFER_ID = TRANSFER_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'To'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    WAREHOUSE_LOCATION AS display,',
'    WAREHOUSE_ID AS return',
'FROM',
'    NIM027'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_css_classes=>'input-size'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25052919772354499)
,p_name=>'P52_DELIVERY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DELIVERY_NAME',
'FROM',
'    NIT010',
'WHERE',
'    :P52_TRANSFER_ID = TRANSFER_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Delivery Man'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_tag_css_classes=>'input-size'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25053015846354500)
,p_name=>'P52_RECEIVER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    RECEIVER',
'FROM',
'    NIT010',
'WHERE',
'    :P52_TRANSFER_ID = TRANSFER_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Receiver'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_tag_css_classes=>'input-size'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25053397508354503)
,p_name=>'P52_FROMDESC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOCATION DESC'
,p_prompt=>'Location Desc'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    LOCATION_DESC',
'FROM',
'    NIM027',
'WHERE',
'    WAREHOUSE_ID = :P52_FROMWAREHOUSE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25053483051354504)
,p_name=>'P52_TODESC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOCATION DESC'
,p_prompt=>'Location Desc'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    LOCATION_DESC',
'FROM',
'    NIM027',
'WHERE',
'    WAREHOUSE_ID = :P52_TOWAREHOUSE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25053767235354507)
,p_name=>'P52_TRANSFER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P52_TRANSFER_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25053837868354508)
,p_name=>'P52_TRANSFER_ID_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_item_default=>'Transfer ID:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25054185013354511)
,p_name=>'P52_DATE_LABEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_item_default=>'Date:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25054399175354513)
,p_name=>'P52_FROMWAREHOUSE_LABEL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_item_default=>'Transfer from:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25054513184354514)
,p_name=>'P52_TOWAREHOUSE_LABEL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_item_default=>'Transfer to:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25054559482354515)
,p_name=>'P52_DELIVERY_LABEL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_item_default=>'Delivery Man:'
,p_prompt=>'Delivery Label'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25054630120354516)
,p_name=>'P52_RECEIVER_LABEL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_item_default=>'Receiver:'
,p_prompt=>'Delivery Label'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25817661319095776)
,p_name=>'P52_NEXT_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25052609936354452)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12934065288948121)
,p_name=>'Select From'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_FROMWAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12934508047948121)
,p_event_id=>wwv_flow_imp.id(12934065288948121)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_FROMDESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    LOCATION_DESC',
'FROM',
'    NIM027',
'WHERE',
'    :P52_FROMWAREHOUSE = WAREHOUSE_ID'))
,p_attribute_07=>'P52_FROMWAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21415055437662224)
,p_event_id=>wwv_flow_imp.id(12934065288948121)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP52Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12930033178948117)
,p_name=>'Select To'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_TOWAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12930474075948118)
,p_event_id=>wwv_flow_imp.id(12930033178948117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_TODESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    LOCATION_DESC',
'FROM',
'    NIM027',
'WHERE',
'    :P52_TOWAREHOUSE = WAREHOUSE_ID'))
,p_attribute_07=>'P52_TOWAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21415311682662227)
,p_event_id=>wwv_flow_imp.id(12930033178948117)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP52Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12930809817948118)
,p_name=>'Onload'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12931856326948120)
,p_event_id=>wwv_flow_imp.id(12930809817948118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15247962057369616)
,p_event_id=>wwv_flow_imp.id(12930809817948118)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_ERR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12931340734948118)
,p_event_id=>wwv_flow_imp.id(12930809817948118)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P52_FROMWAREHOUSE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12932257628948120)
,p_name=>'Focus 1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12932710295948120)
,p_event_id=>wwv_flow_imp.id(12932257628948120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P52_FROMWAREHOUSE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12933169430948120)
,p_name=>'Focus 2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_FROMWAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21415136129662225)
,p_event_id=>wwv_flow_imp.id(12933169430948120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p52keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12933660539948121)
,p_event_id=>wwv_flow_imp.id(12933169430948120)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P52_TOWAREHOUSE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12935868240948123)
,p_name=>'Focus 3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_TOWAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21415264851662226)
,p_event_id=>wwv_flow_imp.id(12935868240948123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p52keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12936377497948123)
,p_event_id=>wwv_flow_imp.id(12935868240948123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P52_DELIVERY'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12936795798948123)
,p_name=>'Focus 4'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_DELIVERY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12937216909948125)
,p_event_id=>wwv_flow_imp.id(12936795798948123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P52_RECEIVER'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12934928068948121)
,p_name=>'Focus 5'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_RECEIVER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12935430059948123)
,p_event_id=>wwv_flow_imp.id(12934928068948121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'NEXT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12894909294147735)
,p_name=>'To Transfer Line'
,p_event_sequence=>90
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'ToTransferLine'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12895082297147736)
,p_event_id=>wwv_flow_imp.id(12894909294147735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    isValid NUMBER;',
'BEGIN',
'    :P52_HAS_NULL := 0;',
'    :P52_ERR_MESSAGE := ''<p class="err-message">Please fill out all the fields.</p>'';',
'',
'    IF :P52_DATE IS NULL THEN',
'        :P52_FIRST_EMPTY_ITEM := ''P52_DATE'';',
'        :P52_HAS_NULL := 1;       ',
'    ELSIF :P52_FROMWAREHOUSE IS NULL THEN',
'        :P52_FIRST_EMPTY_ITEM := ''P52_FROMWAREHOUSE'';',
'        :P52_HAS_NULL := 1;',
'    ELSIF :P52_TOWAREHOUSE IS NULL THEN',
'        :P52_FIRST_EMPTY_ITEM := ''P52_TOWAREHOUSE'';',
'        :P52_HAS_NULL := 1;',
'    ELSIF :P52_DELIVERY IS NULL THEN',
'        :P52_FIRST_EMPTY_ITEM := ''P52_DELIVERY'';',
'        :P52_HAS_NULL := 1;',
'    ELSIF :P52_RECEIVER IS NULL THEN',
'        :P52_FIRST_EMPTY_ITEM := ''P52_receiver'';',
'        :P52_HAS_NULL := 1;',
'    END IF;',
'',
'    SELECT DATE_VALID(:P52_DATE) INTO isValid FROM DUAL;',
'    IF isValid = 0 THEN',
'        :P52_FIRST_EMPTY_ITEM := ''P52_DATE'';',
'        :P52_HAS_NULL := 1; ',
'        :P52_ERR_MESSAGE := ''<p class="err-message">Please enter a valid date.</p>'';',
'    END IF;',
'',
'    IF :P52_HAS_NULL = 0 THEN',
'        UPDATE NIT010',
'        SET TRANSFER_DATE = :P52_DATE, ',
'            FROMWAREHOUSE_ID = :P52_FROMWAREHOUSE, ',
'            TOWAREHOUSE_ID = :P52_TOWAREHOUSE, ',
'            DELIVERY_NAME = :P52_DELIVERY, ',
'            RECEIVER = :P52_RECEIVER, ',
'            UPDATE_USER = :APP_USER, ',
'            UPDATE_DATE = SYSDATE()',
'        WHERE TRANSFER_ID = :P52_TRANSFER_ID;',
'',
'        :P52_PREPARED_URL := apex_page.get_url(',
'           p_page   => 56,',
'           p_items  => ''P56_TRANSFER_ID,P56_DATE,P56_FROMWAREHOUSE,P56_TOWAREHOUSE,P56_DELIVERYMAN,P56_RECEIVER'',',
'           p_values => :P52_TRANSFER_ID || '','' || :P52_DATE || '','' || :P52_FROMWAREHOUSE || '','' || :P52_TOWAREHOUSE || '','' || :P52_DELIVERY || '','' || :P52_RECEIVER',
'        );',
'    END IF;',
'END;'))
,p_attribute_02=>'P52_TRANSFER_ID,P52_DATE,P52_FROMWAREHOUSE,P52_TOWAREHOUSE,P52_DELIVERY,P52_RECEIVER,P52_HAS_NULL,P52_FIRST_EMPTY_ITEM'
,p_attribute_03=>'P52_PREPARED_URL,P52_FIRST_EMPTY_ITEM,P52_HAS_NULL,P52_ERR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12895231435147738)
,p_event_id=>wwv_flow_imp.id(12894909294147735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P52_HAS_NULL") == 0){',
'    let url = $v("P52_PREPARED_URL");',
'    apex.navigation.redirect(url);',
'} else {',
'    apex.item($v("P52_FIRST_EMPTY_ITEM")).setFocus();',
'    apex.item("P52_ERR_MESSAGE").show();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16031422791346142)
,p_name=>'New'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'exit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16031520818346143)
,p_event_id=>wwv_flow_imp.id(16031422791346142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P52_PREPARED_URL := apex_page.get_url(',
'       p_page   => 50,',
'       p_items  => ''P50_PREVIOUS'',',
'       p_values => 52',
'    );',
'END;'))
,p_attribute_03=>'P52_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16031647514346144)
,p_event_id=>wwv_flow_imp.id(16031422791346142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P52_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp.component_end;
end;
/
