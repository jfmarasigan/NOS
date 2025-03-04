prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_name=>'Discount Search'
,p_alias=>'DISCOUNT-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Search:'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p68KeyMap = {',
'    enter : (v) => {',
'        if( $v(''P68_SEARCH_NAME'').length <= 0 && $v(''P68_SEARCH_DATE_TO'').length <= 0 ){',
'            apex.item(''P68_DISPLAY_ALL'').setValue(1);',
'            apex.page.submit( "SUBMIT" );',
'        } else{',
'            apex.page.submit( "SUBMIT" );',
'        }',
'    },',
'    escape : (v) => {',
'        $(document).off(''keydown.p68keyevents'');',
'        $.event.trigger("cancelDialog");',
'    }',
'}',
'function mapP68Keys() {',
'    $(document).off(''keydown.p68keyevents'');',
'    $(document).on(''keydown.p68keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p68KeyMap[key]) {',
'            ev.preventDefault();',
'            p68KeyMap[key]();',
'        }',
'    });',
'}',
'',
'$x(''P68_SEARCH_NAME'').focus();',
'',
'$("#P68_SEARCH_DATE_TO")',
'    .keypress(function(e){',
'        if(',
'            e.key == "1" || e.key == "2" ||',
'            e.key == "3" || e.key == "4" ||',
'            e.key == "5" || e.key == "6" ||',
'            e.key == "7" || e.key == "8" ||',
'            e.key == "9" || e.key == "0" || e.key == "/"',
'        ){',
'            if( $(this).val().length == 2 ){',
'                $(this).val( $(this).val() + "/" )',
'            } else if( $(this).val().length == 5 ){',
'                $(this).val( $(this).val() + "/" )',
'            }',
'            return true;',
'        } else {',
'            return false;',
'        }',
'});'))
,p_javascript_code_onload=>'mapP68Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{',
'    background-color: #056AC8;',
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
'#search-form{',
'    background-color: white;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'750'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44694643985564274)
,p_plug_name=>'Search Forms'
,p_region_name=>'search-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43478517628172823)
,p_name=>'P68_DISPLAY_ALL'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44695047545564282)
,p_name=>'P68_SEARCH_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44694643985564274)
,p_prompt=>'Search For Discount Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44695130200564283)
,p_name=>'P68_SEARCH_DATE_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44694643985564274)
,p_prompt=>'End Date: '
,p_placeholder=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(22268382983028342)
,p_validation_name=>'Valid Date'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_date DATE;',
'BEGIN',
'    v_date := TO_DATE( :P68_SEARCH_DATE_TO, ''MM/DD/YYYY'' );',
'    RETURN TRUE;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        RETURN FALSE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Must be valid Date.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(44695130200564283)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22267966700028338)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'cancelDialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22268033200028339)
,p_event_id=>wwv_flow_imp.id(22267966700028338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).off(''keydown.p68keyevents'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22268160645028340)
,p_event_id=>wwv_flow_imp.id(22267966700028338)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22267886691028337)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Go To Page 66'
,p_attribute_01=>'P68_SEARCH_NAME,P68_SEARCH_DATE_TO,P68_DISPLAY_ALL'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22267886691028337
);
wwv_flow_imp.component_end;
end;
/
