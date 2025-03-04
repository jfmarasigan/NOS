prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_name=>'New Transfer'
,p_alias=>'NEW-TRANSFER'
,p_step_title=>'New Transfer'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p51KeyMap = {',
'    enter : (v) => {',
'        if($v("P51_NEXT_ITEM") != ''NEXT'') {',
'            jQuery($v("P51_NEXT_ITEM")).trigger("focus").select();',
'        }',
'        else {',
'            $.event.trigger(''ToTransferLine'');',
'        }',
'    },',
'',
'    escape : (v) => {',
'        $.event.trigger("exit");',
'    }',
'}',
'',
'function mapP51Keys() {',
'    $(document).off(''keydown.p51keyevents'');',
'    $(document).on(''keydown.p51keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p51KeyMap[key]) {',
'            ev.preventDefault();',
'            p51KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP51Keys();',
'setTitle("New Transfer");',
'',
'const dateFields = [''P51_DATE''];',
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
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.err-message{',
'    color:red;',
'    font-size: 1.125rem;',
'    font-family: Arial;',
'}',
'',
'.text_field, .apex-item-text.apex-item-popup-lov{',
'    background-color: white;',
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
 p_id=>wwv_flow_imp.id(46558796298575778)
,p_plug_name=>'New Transfer'
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
 p_id=>wwv_flow_imp.id(21523710023221439)
,p_branch_action=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34406790402369151)
,p_name=>'P51_PREPARED_URL'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36754676208590994)
,p_name=>'P51_ERR_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
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
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36759331014591027)
,p_name=>'P51_HAS_NULL'
,p_item_sequence=>20
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36759418022591028)
,p_name=>'P51_FIRST_EMPTY_ITEM'
,p_item_sequence=>30
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46559476411575875)
,p_name=>'P51_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_item_default=>'TO_CHAR(SYSDATE(), ''mm/dd/yyyy'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'New'
,p_placeholder=>'mm/dd/yyyy'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46559511090575876)
,p_name=>'P51_FROMWAREHOUSE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    FROMWAREHOUSE_ID',
'FROM',
'    NIT010',
'WHERE',
'    :P51_TRANSFER_ID = TRANSFER_ID'))
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
 p_id=>wwv_flow_imp.id(46559645553575877)
,p_name=>'P51_TOWAREHOUSE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TOWAREHOUSE_ID',
'FROM',
'    NIT010',
'WHERE',
'    :P51_TRANSFER_ID = TRANSFER_ID'))
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
 p_id=>wwv_flow_imp.id(46559704871575878)
,p_name=>'P51_DELIVERY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(46559800945575879)
,p_name=>'P51_RECEIVER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(46560182607575882)
,p_name=>'P51_FROMDESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOCATION DESC'
,p_prompt=>'Location Desc'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    LOCATION_DESC',
'FROM',
'    NIM027',
'WHERE',
'    WAREHOUSE_ID = :P51_FROMWAREHOUSE'))
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
 p_id=>wwv_flow_imp.id(46560268150575883)
,p_name=>'P51_TODESC'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOCATION DESC'
,p_prompt=>'Location Desc'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    LOCATION_DESC',
'FROM',
'    NIM027',
'WHERE',
'    WAREHOUSE_ID = :P51_TOWAREHOUSE'))
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
 p_id=>wwv_flow_imp.id(46560552334575886)
,p_name=>'P51_TRANSFER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT MAX(TRANSFER_ID) + 1 FROM NIT010'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46560622967575887)
,p_name=>'P51_TRANSFER_ID_LABEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
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
 p_id=>wwv_flow_imp.id(46560970112575890)
,p_name=>'P51_DATE_LABEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
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
 p_id=>wwv_flow_imp.id(46561184274575892)
,p_name=>'P51_FROMWAREHOUSE_LABEL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
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
 p_id=>wwv_flow_imp.id(46561298283575893)
,p_name=>'P51_TOWAREHOUSE_LABEL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
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
 p_id=>wwv_flow_imp.id(46561344581575894)
,p_name=>'P51_DELIVERY_LABEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
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
 p_id=>wwv_flow_imp.id(46561415219575895)
,p_name=>'P51_RECEIVER_LABEL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
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
 p_id=>wwv_flow_imp.id(47324446418317155)
,p_name=>'P51_NEXT_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58656799035535213)
,p_name=>'P51_ORDERWRITER_LABEL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_item_default=>'Order Writer:'
,p_prompt=>'Orderwriter Label'
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
 p_id=>wwv_flow_imp.id(58656890762535214)
,p_name=>'P51_ORDERWRITER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Writer'
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
 p_id=>wwv_flow_imp.id(60621303388627548)
,p_name=>'P51_DISPLAY_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_num NUMBER;',
'BEGIN',
'    SELECT MAX(TO_NUMBER(TRANSFER_NUMBER)) + 1 INTO l_num ',
'    FROM NIT010 ',
'    WHERE TO_CHAR(TRANSFER_DATE, ''yyyy'') = TO_CHAR(SYSDATE, ''yyyy'');',
'',
'    IF l_num IS NULL THEN',
'        l_num := 1;',
'    END IF;',
'',
'    RETURN ''TR-'' || TO_CHAR(SYSDATE, ''yyyy'') || ''-'' || TO_CHAR(l_num, ''fm00000'');',
'    ',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Display Id'
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
 p_id=>wwv_flow_imp.id(62599182783572602)
,p_name=>'P51_TRANSFER_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46558796298575778)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_num NUMBER;',
'BEGIN',
'    SELECT MAX(TO_NUMBER(TRANSFER_NUMBER)) + 1 INTO l_num ',
'    FROM NIT010 ',
'    WHERE TO_CHAR(TRANSFER_DATE, ''yyyy'') = TO_CHAR(SYSDATE, ''yyyy'');',
'',
'    IF l_num IS NULL THEN',
'        l_num := 1;',
'    END IF;',
'',
'    RETURN l_num;',
'    ',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21517256137221426)
,p_name=>'Select From'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_FROMWAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21517732544221428)
,p_event_id=>wwv_flow_imp.id(21517256137221426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_FROMDESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    LOCATION_DESC',
'FROM',
'    NIM027',
'WHERE',
'    :P51_FROMWAREHOUSE = WAREHOUSE_ID'))
,p_attribute_07=>'P51_FROMWAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21414735258662221)
,p_event_id=>wwv_flow_imp.id(21517256137221426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP51Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21512681617221417)
,p_name=>'Select To'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_TOWAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21513150910221420)
,p_event_id=>wwv_flow_imp.id(21512681617221417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_TODESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    LOCATION_DESC',
'FROM',
'    NIM027',
'WHERE',
'    :P51_TOWAREHOUSE = WAREHOUSE_ID'))
,p_attribute_07=>'P51_TOWAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21414834115662222)
,p_event_id=>wwv_flow_imp.id(21512681617221417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'mapP51Keys();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21513566009221420)
,p_name=>'Onload'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21514532950221421)
,p_event_id=>wwv_flow_imp.id(21513566009221420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P51_DATE").focus().select();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21515036923221423)
,p_event_id=>wwv_flow_imp.id(21513566009221420)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_ERR_MESSAGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21514021255221421)
,p_event_id=>wwv_flow_imp.id(21513566009221420)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P51_FROMWAREHOUSE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21515485179221423)
,p_name=>'Focus 1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21515915577221425)
,p_event_id=>wwv_flow_imp.id(21515485179221423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P51_FROMWAREHOUSE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21516338787221425)
,p_name=>'Focus 2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_FROMWAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21414267203662216)
,p_event_id=>wwv_flow_imp.id(21516338787221425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p51keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21516816345221425)
,p_event_id=>wwv_flow_imp.id(21516338787221425)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P51_TOWAREHOUSE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21519023581221429)
,p_name=>'Focus 3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_TOWAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21414981504662223)
,p_event_id=>wwv_flow_imp.id(21519023581221429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p51keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21519561099221429)
,p_event_id=>wwv_flow_imp.id(21519023581221429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P51_ORDERWRITER'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21519999892221431)
,p_name=>'Focus 4'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_DELIVERY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21520498830221431)
,p_event_id=>wwv_flow_imp.id(21519999892221431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P51_RECEIVER'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58657434690535220)
,p_name=>'Focus 4_1'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_ORDERWRITER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58657530255535221)
,p_event_id=>wwv_flow_imp.id(58657434690535220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P51_DELIVERY'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58658068080535226)
,p_event_id=>wwv_flow_imp.id(58657434690535220)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP51Keys();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21518191804221428)
,p_name=>'Focus 5'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P51_RECEIVER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21518692501221429)
,p_event_id=>wwv_flow_imp.id(21518191804221428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P51_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'NEXT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21520829014221432)
,p_name=>'New Transfer'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'ToTransferLine'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21521323333221434)
,p_event_id=>wwv_flow_imp.id(21520829014221432)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    isValid NUMBER;',
'    to_loc VARCHAR2(1);',
'    from_loc VARCHAR2(1);',
'BEGIN',
'    :P51_HAS_NULL := 0;',
'    :P51_ERR_MESSAGE := ''<p class="err-message">Please fill out all the fields.</p>'';',
'',
'    IF :P51_DATE IS NULL THEN',
'        :P51_FIRST_EMPTY_ITEM := ''P51_DATE'';',
'        :P51_HAS_NULL := 1;       ',
'    ELSIF :P51_FROMWAREHOUSE IS NULL THEN',
'        :P51_FIRST_EMPTY_ITEM := ''P51_FROMWAREHOUSE'';',
'        :P51_HAS_NULL := 1;',
'    ELSIF :P51_TOWAREHOUSE IS NULL THEN',
'        :P51_FIRST_EMPTY_ITEM := ''P51_TOWAREHOUSE'';',
'        :P51_HAS_NULL := 1;',
'    ELSIF :P51_ORDERWRITER IS NULL THEN',
'        :P51_FIRST_EMPTY_ITEM := ''P51_ORDERWRITER'';',
'        :P51_HAS_NULL := 1;',
'    ELSIF :P51_DELIVERY IS NULL THEN',
'        :P51_FIRST_EMPTY_ITEM := ''P51_DELIVERY'';',
'        :P51_HAS_NULL := 1;',
'    ELSIF :P51_RECEIVER IS NULL THEN',
'        :P51_FIRST_EMPTY_ITEM := ''P51_receiver'';',
'        :P51_HAS_NULL := 1;',
'    END IF;',
'',
'    SELECT DATE_VALID(:P51_DATE) INTO isValid FROM DUAL;',
'    IF isValid = 0 THEN',
'        :P51_FIRST_EMPTY_ITEM := ''P51_DATE'';',
'        :P51_HAS_NULL := 1; ',
'        :P51_ERR_MESSAGE := ''<p class="err-message">Please enter a valid date.</p>'';',
'    END IF;',
'',
'    IF :P51_HAS_NULL = 0 THEN',
'        INSERT INTO NIT010 VALUES(:P51_TRANSFER_ID,',
'                                  :P51_DATE, ',
'                                  :P51_FROMWAREHOUSE, ',
'                                  :P51_TOWAREHOUSE, ',
'                                  :P51_DELIVERY, ',
'                                  :P51_RECEIVER, ',
'                                  :APP_USER, ',
'                                  SYSDATE(),',
'                                  '''',',
'                                  '''',',
'                                  '''',',
'                                  :P51_ORDERWRITER,',
'                                  :P51_TRANSFER_NUM);',
'        ',
'        SELECT',
'            WAREHOUSE_LOCATION',
'        INTO',
'            from_loc',
'        FROM',
'            NIM027',
'        WHERE',
'            WAREHOUSE_ID = :P51_FROMWAREHOUSE;',
'',
'        SELECT',
'            WAREHOUSE_LOCATION',
'        INTO',
'            to_loc',
'        FROM',
'            NIM027',
'        WHERE',
'            WAREHOUSE_ID = :P51_TOWAREHOUSE;',
'',
'        :P51_PREPARED_URL := apex_page.get_url(',
'           p_page   => 56,',
'           p_items  => ''P56_TRANSFER_ID,P56_DATE,P56_FROMWAREHOUSE,P56_TOWAREHOUSE,P56_DELIVERYMAN,P56_RECEIVER,P56_ACTION,P56_ORDERWRITER'',',
'           p_values => :P51_TRANSFER_ID || '','' || :P51_DATE || '','' || from_loc || '','' || to_loc || '','' || :P51_DELIVERY || '','' || :P51_RECEIVER || '',add,'' || :P51_ORDERWRITER',
'        );',
'    END IF;',
'END;'))
,p_attribute_02=>'P51_TRANSFER_ID,P51_DATE,P51_FROMWAREHOUSE,P51_TOWAREHOUSE,P51_DELIVERY,P51_RECEIVER,P51_HAS_NULL,P51_FIRST_EMPTY_ITEM,P51_ORDERWRITER,P51_TRANSFER_NUM'
,p_attribute_03=>'P51_PREPARED_URL,P51_FIRST_EMPTY_ITEM,P51_HAS_NULL,P51_ERR_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21521865123221434)
,p_event_id=>wwv_flow_imp.id(21520829014221432)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P51_HAS_NULL") == 0){',
'    let url = $v("P51_PREPARED_URL");',
'    apex.navigation.redirect(url);',
'} else {',
'    apex.item($v("P51_FIRST_EMPTY_ITEM")).setFocus();',
'    apex.item("P51_ERR_MESSAGE").show();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21522210188221435)
,p_name=>'Exit'
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'exit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21522736535221437)
,p_event_id=>wwv_flow_imp.id(21522210188221435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P51_PREPARED_URL := apex_page.get_url(',
'       p_page   => 50,',
'       p_items  => ''P50_PREVIOUS'',',
'       p_values => 51',
'    );',
'END;'))
,p_attribute_03=>'P51_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21523265221221437)
,p_event_id=>wwv_flow_imp.id(21522210188221435)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P51_PREPARED_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp.component_end;
end;
/
