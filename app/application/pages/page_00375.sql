prompt --application/pages/page_00375
begin
--   Manifest
--     PAGE: 00375
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
 p_id=>375
,p_name=>'Reservation Customer Details'
,p_alias=>'RESERVATION-CUSTOMER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Details'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p7KeyMap = {',
'    enter: (v) => {',
'        $("#enter").trigger("click");',
'    },',
'    escape: (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'function mapP7Keys() {',
'    $(document).off(''keydown.p7keyevents'');',
'    $(document).on(''keydown.p7keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p7KeyMap[key]) {',
'            ev.preventDefault();',
'            p7KeyMap[key]();',
'        }',
'    });',
'}',
'',
'',
'function addDashTelNo() {',
'    $(''#P375_TELEPHONE_NUMBER'').on( "keyup", function() {',
'        var newTel = '''';',
'        if ($(''#P375_TELEPHONE_NUMBER'').val().length === 3 || $(''#P375_TELEPHONE_NUMBER'').val().length === 7) {',
'            newTel = $(''#P375_TELEPHONE_NUMBER'').val() + ''-'';',
'            document.getElementById(''P375_TELEPHONE_NUMBER'').value = newTel;',
'        }',
'    });',
'}',
'',
'function addDashFaxNo() {',
'    $(''#P375_FAX_NUMBER'').on( "keyup", function() {',
'        var newTel = '''';',
'        if ($(''#P375_FAX_NUMBER'').val().length === 3 || $(''#P375_FAX_NUMBER'').val().length === 7) {',
'            newTel = $(''#P375_FAX_NUMBER'').val() + ''-'';',
'            document.getElementById(''P375_FAX_NUMBER'').value = newTel;',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP7Keys();',
'addDashTelNo();',
'addDashFaxNo();',
'',
'// Telephone number validation',
'setInputFilter($("#P375_TELEPHONE_NUMBER"), function(value) {',
'    return /^(\d{0,3}|\d{3}-|\d{3}-\d{0,3}|\d{3}-\d{0,3}-|\d{3}-\d{3}-\d{0,4})$/.test(value);',
'}, "Invalid input.");',
'',
'// Fax number validation',
'setInputFilter($("#P375_FAX_NUMBER"), function(value) {',
'    return /^(\d{0,3}|\d{3}-|\d{3}-\d{0,3}|\d{3}-\d{0,3}-|\d{3}-\d{3}-\d{0,4})$/.test(value);',
'}, "Invalid input.");',
'',
'',
'document.getElementById("P375_POINT_PERSON").focus();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-header {',
'    background-color: #056AC8;',
'    padding: .5rem 0rem 0rem 1rem;',
'}',
'',
'.t-Dialog-body {',
'    padding-block-start: var(--ut-dialog-padding-y, .5rem);',
'    padding-inline-start: var(--ut-dialog-padding-x, .5rem);',
'}',
'',
'.t-Dialog-bodyWrapperIn {',
'    overflow: hidden;',
'    background-color: white;',
'}',
'',
'.t-Region {',
'    color: white;',
'    font-size: 1.5rem;',
'    margin-bottom: .4rem;',
'}',
'',
'.t-Form-itemWrapper {',
'    width: 50%;',
'    position: absolute;',
'    left: 45%;',
'    bottom: 10%;',
'}',
'',
'.t-Form-itemWrapper > input {',
'    height: 2rem;',
'}',
'',
'.t-Form-inputContainer {',
'    padding-block-end: var(--ut-field-padding-y, .4rem);',
'}',
'',
'.t-Form-labelContainer {',
'    padding-block-start: var(--ut-field-padding-y, .5rem);',
'}',
'',
'.t-Form-label {',
'    font-size: 1.125rem;',
'    font-weight: 600;',
'}',
'',
'.ui-dialog-titlebar {',
'    display: none !important;',
'}',
'',
'.hide {',
'    display: none;',
'}',
'',
'.error-msg {',
'    color: red;',
'    font-size: 0.75rem;',
'    font-weight: 600;',
'    padding-left: 0.7rem;',
'    padding-bottom: 0.5rem;',
'}',
'',
'#P375_POINT_PERSON,',
'#P375_TELEPHONE_NUMBER,',
'#P375_FAX_NUMBER,',
'#P375_EMAIL {',
'    font-size: 1.125rem;',
'}',
'',
'#P375_CUSTOMER_DBA > input {',
'    font-size: 1.125rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'420px'
,p_dialog_max_width=>'420px'
,p_dialog_attributes=>'closeOnEscape:false'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100701111378048069)
,p_plug_name=>'Customer Details'
,p_region_name=>'details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4329702440084182)
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'NPT009'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(100581843898220589)
,p_plug_name=>'Error Display'
,p_parent_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id="errorArea" class="hide error-msg">Please fill in the required search field.</span>',
'<span id="errorArea1" class="hide error-msg">Please input customer dba.</span>',
'<span id="errorArea2" class="hide error-msg">Please input telephone number.</span>',
'<span id="errorArea3" class="hide error-msg">Invalid telephone number.</span>',
'<span id="errorArea4" class="hide error-msg">Invalid fax number.</span>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41329151978926718)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_button_name=>'SEARCH_BTN'
,p_button_static_id=>'enter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61723681210086215)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_button_name=>'CLOSE_BTN'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_button_redirect_url=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:::'
,p_grid_column_css_classes=>'hide'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40130935879188932)
,p_name=>'P375_FAX_NUMBER'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_item_source_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_prompt=>'<span style="padding-left:4rem">Fax Number:</span>'
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>12
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40131014500188933)
,p_name=>'P375_EMAIL'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_item_source_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_prompt=>'<span style="padding-left:7.5rem">Email:</span>'
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81459809477115644)
,p_name=>'P375_POINT_PERSON'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_item_source_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_prompt=>'<span style="padding-left:3.8rem">Point Person:</span>'
,p_source=>'DATE_CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100704703279048116)
,p_name=>'P375_CUSTOMER_DBA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_prompt=>'<span style="padding-left:2.35rem">Customer DBA<span style="color:red;">*</span>:</span>'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DBA',
'FROM NPT009'))
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'EXACT_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100707009707048141)
,p_name=>'P375_TELEPHONE_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_prompt=>'<span style="padding-left:0rem">Telephone Number<span style="color:red;">*</span>:</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>12
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41333150127926745)
,p_name=>'Search Table'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41329151978926718)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41333636685926746)
,p_event_id=>wwv_flow_imp.id(41333150127926745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var customerDBA = $v("P375_CUSTOMER_DBA");',
'var telNo = $v("P375_TELEPHONE_NUMBER");',
'',
'var errorArea = document.getElementById("errorArea")',
'var errorArea1 = document.getElementById("errorArea1")',
'var errorArea2 = document.getElementById("errorArea2")',
'var errorArea3 = document.getElementById("errorArea3")',
'var errorArea4 = document.getElementById("errorArea4")',
'',
'if(!customerDBA && !telNo) {',
'    errorArea.style.display = "block";',
'    errorArea1.style.display = "none"',
'    errorArea2.style.display = "none"',
'    errorArea3.style.display = "none"',
'    errorArea4.style.display = "none"',
'    document.getElementById("P375_CUSTOMER_DBA").focus();',
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41335005996926748)
,p_event_id=>wwv_flow_imp.id(41333150127926745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var customerDBA = $v("P375_CUSTOMER_DBA");',
'',
'var errorArea = document.getElementById("errorArea")',
'var errorArea1 = document.getElementById("errorArea1")',
'var errorArea2 = document.getElementById("errorArea2")',
'var errorArea3 = document.getElementById("errorArea3")',
'var errorArea4 = document.getElementById("errorArea4")',
'',
'if (!customerDBA) {',
'    errorArea.style.display = "none";',
'    errorArea1.style.display = "block"',
'    errorArea2.style.display = "none"',
'    errorArea3.style.display = "none"',
'    errorArea4.style.display = "none"',
'    document.getElementById("P375_CUSTOMER_DBA").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40131383215188936)
,p_event_id=>wwv_flow_imp.id(41333150127926745)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var telNo = $v("P375_TELEPHONE_NUMBER");',
'',
'var errorArea = document.getElementById("errorArea")',
'var errorArea1 = document.getElementById("errorArea1")',
'var errorArea2 = document.getElementById("errorArea2")',
'var errorArea3 = document.getElementById("errorArea3")',
'var errorArea4 = document.getElementById("errorArea4")',
'',
'if (!telNo) {',
'    errorArea.style.display = "none";',
'    errorArea1.style.display = "none"',
'    errorArea2.style.display = "block"',
'    errorArea3.style.display = "none"',
'    errorArea4.style.display = "none"',
'    document.getElementById("P375_TELEPHONE_NUMBER").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42997045526872713)
,p_event_id=>wwv_flow_imp.id(41333150127926745)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var telNo = $v("P375_TELEPHONE_NUMBER");',
'',
'var errorArea = document.getElementById("errorArea")',
'var errorArea1 = document.getElementById("errorArea1")',
'var errorArea2 = document.getElementById("errorArea2")',
'var errorArea3 = document.getElementById("errorArea3")',
'var errorArea4 = document.getElementById("errorArea4")',
'',
'var regex = /^(\d{3}-\d{3}-\d{4})$/;',
'',
'if (!regex.test(telNo)) {',
'    errorArea.style.display = "none";',
'    errorArea1.style.display = "none"',
'    errorArea2.style.display = "none"',
'    errorArea3.style.display = "block"',
'    errorArea4.style.display = "none"',
'    document.getElementById("P375_TELEPHONE_NUMBER").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42997469654872717)
,p_event_id=>wwv_flow_imp.id(41333150127926745)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var faxNo = $v("P375_FAX_NUMBER");',
'',
'var errorArea = document.getElementById("errorArea")',
'var errorArea1 = document.getElementById("errorArea1")',
'var errorArea2 = document.getElementById("errorArea2")',
'var errorArea3 = document.getElementById("errorArea3")',
'var errorArea4 = document.getElementById("errorArea4")',
'',
'var regex = /^(\d{3}-\d{3}-\d{4})$/;',
'',
'if (faxNo.length > 0 && !regex.test(faxNo)) {',
'    errorArea.style.display = "none";',
'    errorArea1.style.display = "none"',
'    errorArea2.style.display = "none"',
'    errorArea3.style.display = "none"',
'    errorArea4.style.display = "block"',
'    document.getElementById("P375_FAX_NUMBER").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41334040545926746)
,p_event_id=>wwv_flow_imp.id(41333150127926745)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P375_CUSTOMER_DBA,P375_POINT_PERSON,P375_TELEPHONE_NUMBER,P375_FAX_NUMBER,P375_EMAIL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42996420895872707)
,p_name=>'Set Values'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P375_CUSTOMER_DBA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42996551425872708)
,p_event_id=>wwv_flow_imp.id(42996420895872707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Point Person'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P375_POINT_PERSON'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P375_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.CONTACT_PERSON, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P375_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P375_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P375_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42996793906872710)
,p_event_id=>wwv_flow_imp.id(42996420895872707)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set Tel No'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P375_TELEPHONE_NUMBER'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P375_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.BILLING_CONTACTA, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P375_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P375_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P375_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42996836936872711)
,p_event_id=>wwv_flow_imp.id(42996420895872707)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set Fax No'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P375_FAX_NUMBER'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P375_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.BILLING_FAX, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P375_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P375_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P375_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42996999015872712)
,p_event_id=>wwv_flow_imp.id(42996420895872707)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set Email'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P375_EMAIL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'no_data_in_file EXCEPTION;',
'l_return_value  VARCHAR(40) := NULL;',
'',
'BEGIN',
'    BEGIN',
'',
'        IF LENGTH(:P375_CUSTOMER_DBA) > 0 THEN',
'',
'            SELECT NVL(npt009.BILLING_EMAIL, '''') INTO l_return_value',
'            FROM NPT009 npt009',
'            WHERE npt009.DBA = :P375_CUSTOMER_DBA;',
'',
'        END IF;',
'',
'        EXCEPTION',
'            WHEN no_data_in_file THEN',
'                l_return_value := '''';',
'            WHEN OTHERS THEN ',
'                l_return_value := l_return_value;',
'',
'    END;',
'',
'    RETURN l_return_value;',
'END;'))
,p_attribute_07=>'P375_CUSTOMER_DBA'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P375_CUSTOMER_DBA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41331832438926726)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(100701111378048069)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Gift Certificate Search'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41331832438926726
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41332701976926743)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>41332701976926743
);
wwv_flow_imp.component_end;
end;
/
