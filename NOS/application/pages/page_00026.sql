prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Update Item Qty'
,p_alias=>'UPDATE-ITEM-QTY'
,p_page_mode=>'MODAL'
,p_step_title=>'Update Item Qty'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p26KeyMap = {',
'    enter : (v) => {',
'        if($v("P26_NEXT_ITEM") == "UPDATE"){',
'            if($v("P26_WAREHOUSE") == ''''){',
'                $.event.trigger(''showError'');',
'            } else {',
'                $("#u").trigger("click");',
'            }',
'        } else if($v("P26_NEXT_ITEM") == "WAREHOUSE"){',
'            $.event.trigger(''showError'');',
'        } else {',
'                jQuery($v("P26_NEXT_ITEM")).trigger("focus").trigger("select");',
'        }',
'    }',
'}',
'',
'function mapP26Keys() {',
'    $(document).off(''keydown.p26keyevents'');',
'    $(document).on(''keydown.p26keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p26KeyMap[key]) {',
'            ev.preventDefault();',
'            p26KeyMap[key]();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP26Keys();',
'setInputFilter($("#P26_NEW_QTY_4"), function(value) {  return /^\d*$/.test(value);}, "Only digits are allowed");',
'setInputFilter($("#P26_NEW_QTY_3"), function(value) {  return /^\d*$/.test(value);}, "Only digits are allowed");',
'setInputFilter($("#P26_NEW_QTY_2"), function(value) {  return /^\d*$/.test(value);}, "Only digits are allowed");',
'setInputFilter($("#P26_NEW_QTY_1"), function(value) {  return /^\d*$/.test(value);}, "Only digits are allowed");',
''))
,p_css_file_urls=>'#APP_FILES#css/p26_css.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.err{',
'    font-size: 0.75rem;',
'    color: red;',
'}'))
,p_step_template=>wwv_flow_imp.id(4231087530083996)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'20rem'
,p_dialog_css_classes=>'modal-dialog--pullout'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7689036388126426)
,p_plug_name=>'Content'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--noPadding:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'<div class="header">Item Number: &P26_ITEM_NUMBER.</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8089294696356316)
,p_button_sequence=>30
,p_button_name=>'Update'
,p_button_static_id=>'u'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'press enter to update or exit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p26-white-text'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7689150169126427)
,p_name=>'P26_ITEM_NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8089122032356315)
,p_name=>'P26_REASON'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_prompt=>'<p="format-size">Reason</p>'
,p_pre_element_text=>'<p class ="format-size">Reason: </p>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    REASON_NAME AS "display1",',
'    QTY_REASON_ID AS "return1"',
'FROM',
'    NIM028'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8090008287356324)
,p_name=>'P26_ITEM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    item_id',
'FROM',
'    NIT001',
'WHERE',
'    :P26_ITEM_NUMBER = item_num'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9515597246251307)
,p_name=>'P26_CURRENT_QTY_4'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'crt'
,p_post_element_text=>'<p class="format-size">crt</p>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 4;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_grid_column_css_classes=>'width50'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 4 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-sm:margin-right-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9515791585251309)
,p_name=>'P26_CURRENT_QTY_3'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'box'
,p_post_element_text=>'<p class="format-size">box</p>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 3;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>6
,p_grid_column_css_classes=>'width50'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 3 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'t-Form-fieldContainer--postTextBlock:margin-bottom-sm:margin-right-sm:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9515869510251310)
,p_name=>'P26_CURRENT_QTY_2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'pk'
,p_post_element_text=>'<p class="format-size">pk</p>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 2;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>6
,p_grid_column_css_classes=>'width50'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 2 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'t-Form-fieldContainer--postTextBlock:margin-bottom-sm:margin-right-sm:t-Form-fieldContainer--normalDisplay:#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9515930900251311)
,p_name=>'P26_CURRENT_QTY_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_post_element_text=>'<p class="format-size">pcs</p>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'format-size'
,p_colspan=>6
,p_grid_column_css_classes=>'width50'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 1 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'t-Form-fieldContainer--postTextBlock:margin-bottom-sm:margin-right-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9516008179251312)
,p_name=>'P26_NEW_QTY_4'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'crt'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 4;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column_css_classes=>'width375'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 4 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:margin-right-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9516130833251313)
,p_name=>'P26_NEW_QTY_3'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'box'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 3;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column_css_classes=>'width375'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 3 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:margin-right-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9516257797251314)
,p_name=>'P26_NEW_QTY_2'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'pk'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 2;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column_css_classes=>'width375'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 2 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:margin-right-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9516326872251315)
,p_name=>'P26_NEW_QTY_1'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'pcs'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 1;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>4
,p_tag_css_classes=>'format-size'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column_css_classes=>'width375'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 1 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:margin-right-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'999'
,p_attribute_03=>'right'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10216941763449109)
,p_name=>'P26_NEW_QTY_LABEL_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_prompt=>'pcs'
,p_source=>'<p class="format-size">pcs</p>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_grid_column_css_classes=>'width125'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 1 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_css_classes=>'format-size'
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10217020556449110)
,p_name=>'P26_NEW_QTY_LABEL_2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_prompt=>'pk'
,p_source=>'<p class="format-size">pk</p>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_grid_column_css_classes=>'width125'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 2 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10217169542449111)
,p_name=>'P26_NEW_QTY_LABEL_3'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_prompt=>'box'
,p_source=>'<p class="format-size">box</p>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_grid_column_css_classes=>'width125'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 3 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10217245858449112)
,p_name=>'P26_NEW_QTY_LABEL_4'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_prompt=>'crt'
,p_source=>'<p class="format-size">crt</p>'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_grid_column_css_classes=>'width125'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_show BOOLEAN;',
'BEGIN',
'    l_show := FALSE;',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id) LOOP',
'        IF i.uom_id = 4 THEN',
'            l_show := TRUE;',
'        END IF;',
'    END LOOP;',
'',
'    RETURN l_show;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10906070329353227)
,p_name=>'P26_NEXT_ITEM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_item_default=>'WAREHOUSE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11428084697400449)
,p_name=>'P26_CURRENT_QTY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_prompt=>'Current Qty'
,p_source=>'Current Qty'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'qty-title'
,p_grid_column_css_classes=>'width50'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11428107564400450)
,p_name=>'P26_NEW_QTY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_prompt=>'New Qty'
,p_source=>'New Qty'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'qty-title'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'width50'
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28550856257120028)
,p_name=>'P26_WAREHOUSE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_item_default=>'NULL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Warehouse'
,p_pre_element_text=>'<p class ="format-size">Warehouse: </p>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'    nim27.WAREHOUSE_LOCATION as d,',
'    nit4.WAREHOUSE_ID as r',
'FROM',
'    NIM027 nim27,',
'    NIT004 nit4',
'WHERE ',
'    nim27.WAREHOUSE_ID = nit4.WAREHOUSE_ID AND',
'    nit4.ITEM_ID = :P26_ITEM_ID',
'ORDER BY',
'    nit4.WAREHOUSE_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'ALL'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30678110750189119)
,p_name=>'P26_WAREHOUSE_ERR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7689036388126426)
,p_item_default=>'Please select a warehouse to update before proceeding'
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'err'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4381902469084273)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8089877045356322)
,p_name=>'Update QTY'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8089294696356316)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8090425485356328)
,p_event_id=>wwv_flow_imp.id(8089877045356322)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'UPDATE PCS'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P26_CURRENT_QTY_1 := TO_NUMBER(:P26_CURRENT_QTY_1);',
'    IF :P26_CURRENT_QTY_1 != :P26_NEW_QTY_1 THEN',
'        INSERT INTO NIT004',
'        VALUES(',
'            :P26_ITEM_ID,',
'            :P26_WAREHOUSE,',
'            :APP_USER,',
'            SYSDATE(),',
'            '''',',
'            '''',',
'            :P26_NEW_QTY_1,',
'            1',
'        );',
'        INSERT INTO NIT005',
'        VALUES('''',',
'            :P26_ITEM_ID, ',
'            :P26_REASON, ',
'            :P26_CURRENT_QTY_1,',
'            ABS(:P26_NEW_QTY_1 - :P26_CURRENT_QTY_1),',
'            :P26_NEW_QTY_1,',
'            :APP_USER,',
'            SYSDATE(),',
'            1,',
'            :P26_WAREHOUSE);  ',
'    END IF;',
'EXCEPTION',
'    WHEN DUP_VAL_ON_INDEX THEN',
'        UPDATE  ',
'            NIT004',
'        SET',
'            qty = :P26_NEW_QTY_1,',
'            update_user = :APP_USER,',
'            update_date = SYSDATE()',
'        WHERE',
'            warehouse_id = :P26_WAREHOUSE AND',
'            item_id = :P26_ITEM_ID AND',
'            uom_id = 1;',
'',
'        INSERT INTO NIT005',
'        VALUES('''',',
'            :P26_ITEM_ID, ',
'            :P26_REASON, ',
'            :P26_CURRENT_QTY_1,',
'            ABS(:P26_NEW_QTY_1 - :P26_CURRENT_QTY_1),',
'            :P26_NEW_QTY_1,',
'            :APP_USER,',
'            SYSDATE(),',
'            1,',
'            :P26_WAREHOUSE);  ',
'END;',
''))
,p_attribute_02=>'P26_ITEM_ID,P26_REASON,P26_CURRENT_QTY_1,P26_NEW_QTY_1,P26_WAREHOUSE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9517166234251323)
,p_event_id=>wwv_flow_imp.id(8089877045356322)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'UPDATE PK'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P26_CURRENT_QTY_2 := TO_NUMBER(:P26_CURRENT_QTY_2);',
'    IF :P26_CURRENT_QTY_2 != :P26_NEW_QTY_2 THEN     ',
'        INSERT INTO NIT004',
'        VALUES(',
'            :P26_ITEM_ID,',
'            :P26_WAREHOUSE,',
'            :APP_USER,',
'            SYSDATE(),',
'            '''',',
'            '''',',
'            :P26_NEW_QTY_2,',
'            2',
'        );',
'        INSERT INTO NIT005 ',
'        VALUES('''',',
'            :P26_ITEM_ID, ',
'            :P26_REASON, ',
'            :P26_CURRENT_QTY_2,',
'            ABS(:P26_NEW_QTY_2 - :P26_CURRENT_QTY_2),',
'            :P26_NEW_QTY_2,',
'            :APP_USER,',
'            SYSDATE(),',
'            2,',
'            :P26_WAREHOUSE);  ',
'    END IF;',
'EXCEPTION',
'    WHEN DUP_VAL_ON_INDEX THEN',
'        UPDATE  ',
'            NIT004',
'        SET',
'            qty = :P26_NEW_QTY_2,',
'            update_user = :APP_USER,',
'            update_date = SYSDATE()',
'        WHERE',
'            warehouse_id = :P26_WAREHOUSE AND',
'            item_id = :P26_ITEM_ID AND',
'            uom_id = 2;',
'       INSERT INTO NIT005 ',
'        VALUES('''',',
'            :P26_ITEM_ID, ',
'            :P26_REASON, ',
'            :P26_CURRENT_QTY_2,',
'            ABS(:P26_NEW_QTY_2 - :P26_CURRENT_QTY_2),',
'            :P26_NEW_QTY_2,',
'            :APP_USER,',
'            SYSDATE(),',
'            2,',
'            :P26_WAREHOUSE);',
'END;',
''))
,p_attribute_02=>'P26_ITEM_ID,P26_REASON,P26_CURRENT_QTY_2,P26_NEW_QTY_2,P26_WAREHOUSE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9517219801251324)
,p_event_id=>wwv_flow_imp.id(8089877045356322)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'UPDATE BOX'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P26_CURRENT_QTY_3 := TO_NUMBER(:P26_CURRENT_QTY_3);',
'    IF :P26_CURRENT_QTY_3 != :P26_NEW_QTY_3 THEN   ',
'        INSERT INTO NIT004',
'        VALUES(',
'            :P26_ITEM_ID,',
'            :P26_WAREHOUSE,',
'            :APP_USER,',
'            SYSDATE(),',
'            '''',',
'            '''',',
'            :P26_NEW_QTY_3,',
'            3',
'        );',
'',
'        INSERT INTO NIT005 ',
'        VALUES('''',',
'            :P26_ITEM_ID, ',
'            :P26_REASON, ',
'            :P26_CURRENT_QTY_3,',
'            ABS(:P26_NEW_QTY_3 - :P26_CURRENT_QTY_3),',
'            :P26_NEW_QTY_3,',
'            :APP_USER,',
'            SYSDATE(),',
'            3,',
'            :P26_WAREHOUSE);     ',
'    END IF;',
'EXCEPTION',
'    WHEN DUP_VAL_ON_INDEX THEN',
'        UPDATE  ',
'            NIT004',
'        SET',
'            qty = :P26_NEW_QTY_3,',
'            update_user = :APP_USER,',
'            update_date = SYSDATE()',
'        WHERE',
'            warehouse_id = :P26_WAREHOUSE AND',
'            item_id = :P26_ITEM_ID AND',
'            uom_id = 3; ',
'',
'        INSERT INTO NIT005 ',
'        VALUES('''',',
'            :P26_ITEM_ID, ',
'            :P26_REASON, ',
'            :P26_CURRENT_QTY_3,',
'            ABS(:P26_NEW_QTY_3 - :P26_CURRENT_QTY_3),',
'            :P26_NEW_QTY_3,',
'            :APP_USER,',
'            SYSDATE(),',
'            3,',
'            :P26_WAREHOUSE);',
'END;',
''))
,p_attribute_02=>'P26_ITEM_ID,P26_REASON,P26_CURRENT_QTY_3,P26_NEW_QTY_3,P26_WAREHOUSE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9517390143251325)
,p_event_id=>wwv_flow_imp.id(8089877045356322)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'UPDATE CRT'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P26_CURRENT_QTY_4 := TO_NUMBER(:P26_CURRENT_QTY_4);',
'    IF :P26_CURRENT_QTY_4 != :P26_NEW_QTY_4 THEN',
'        INSERT INTO NIT004',
'        VALUES(',
'            :P26_ITEM_ID,',
'            :P26_WAREHOUSE,',
'            :APP_USER,',
'            SYSDATE(),',
'            '''',',
'            '''',',
'            :P26_NEW_QTY_4,',
'            4',
'        );',
'        ',
'        INSERT INTO NIT005 ',
'        VALUES('''',',
'            :P26_ITEM_ID, ',
'            :P26_REASON, ',
'            :P26_CURRENT_QTY_4,',
'            ABS(:P26_NEW_QTY_4 - :P26_CURRENT_QTY_4),',
'            :P26_NEW_QTY_4,',
'            :APP_USER,',
'            SYSDATE(),',
'            4,',
'            :P26_WAREHOUSE);',
'    END IF;',
'EXCEPTION',
'    WHEN DUP_VAL_ON_INDEX THEN',
'        UPDATE  ',
'            NIT004',
'        SET',
'            qty = :P26_NEW_QTY_4,',
'            update_user = :APP_USER,',
'            update_date = SYSDATE()',
'        WHERE',
'            warehouse_id = :P26_WAREHOUSE AND',
'            item_id = :P26_ITEM_ID AND',
'            uom_id = 4;   ',
'        ',
'        INSERT INTO NIT005 ',
'        VALUES('''',',
'            :P26_ITEM_ID, ',
'            :P26_REASON, ',
'            :P26_CURRENT_QTY_4,',
'            ABS(:P26_NEW_QTY_4 - :P26_CURRENT_QTY_4),',
'            :P26_NEW_QTY_4,',
'            :APP_USER,',
'            SYSDATE(),',
'            4,',
'            :P26_WAREHOUSE);',
'END;',
''))
,p_attribute_02=>'P26_ITEM_ID,P26_REASON,P26_CURRENT_QTY_4,P26_NEW_QTY_4,P26_WAREHOUSE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8090298579356326)
,p_event_id=>wwv_flow_imp.id(8089877045356322)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10906111999353228)
,p_name=>'focus next input 1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_NEW_QTY_4'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10906205213353229)
,p_event_id=>wwv_flow_imp.id(10906111999353228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEXT_ITEM'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id ORDER BY uom_id DESC) LOOP',
'        IF i.uom_id = 3 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_3'';',
'            EXIT;',
'        ELSIF i.uom_id = 2 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_2'';',
'            EXIT;',
'        ELSIF i.uom_id = 1 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_1'';',
'            EXIT;',
'        ELSE',
'            :P26_NEXT_ITEM := ''#P26_REASON'';',
'        END IF;',
'    END LOOP;',
'',
'    RETURN :P26_NEXT_ITEM;',
'END;'))
,p_attribute_07=>'P26_ITEM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10907505509353242)
,p_name=>'focus next input 2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_NEW_QTY_3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10907602883353243)
,p_event_id=>wwv_flow_imp.id(10907505509353242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEXT_ITEM'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id ORDER BY uom_id DESC) LOOP',
'        IF i.uom_id = 2 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_2'';',
'            EXIT;',
'        ELSIF i.uom_id = 1 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_1'';',
'            EXIT;',
'        ELSE',
'            :P26_NEXT_ITEM := ''#P26_REASON'';',
'        END IF;',
'    END LOOP;',
'',
'    RETURN :P26_NEXT_ITEM;',
'END;'))
,p_attribute_07=>'P26_ITEM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10907767937353244)
,p_name=>'focus next input 3'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_NEW_QTY_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10907843566353245)
,p_event_id=>wwv_flow_imp.id(10907767937353244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEXT_ITEM'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id ORDER BY uom_id DESC) LOOP',
'        IF i.uom_id = 1 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_1'';',
'            EXIT;',
'        ELSE',
'            :P26_NEXT_ITEM := ''#P26_REASON'';',
'        END IF;',
'    END LOOP;',
'',
'    RETURN :P26_NEXT_ITEM;',
'END;'))
,p_attribute_07=>'P26_ITEM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10907922465353246)
,p_name=>'focus next input 4'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_NEW_QTY_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10908000655353247)
,p_event_id=>wwv_flow_imp.id(10907922465353246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'#P26_REASON'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11423296217400401)
,p_name=>'focus next input 4_1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_REASON'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11423309765400402)
,p_event_id=>wwv_flow_imp.id(11423296217400401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'UPDATE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28551046080120030)
,p_name=>'On Change'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_WAREHOUSE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30678749458189125)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_WAREHOUSE_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28551213513120032)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set Current QTY 4'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_4'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    qty',
'FROM',
'    NIT004',
'WHERE',
'    warehouse_id = :P26_WAREHOUSE AND',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 4;'))
,p_attribute_07=>'P26_WAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28551306701120033)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set Default 4'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_4'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 4;'))
,p_attribute_07=>'P26_WAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_WAREHOUSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28551946780120039)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Set Current QTY 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_3'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    qty',
'FROM',
'    NIT004',
'WHERE',
'    warehouse_id = :P26_WAREHOUSE AND',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 3;'))
,p_attribute_07=>'P26_WAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30677024409189108)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Set Default 3'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_3'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 3;'))
,p_attribute_07=>'P26_WAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_WAREHOUSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28552053044120040)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Set Current QTY 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    qty',
'FROM',
'    NIT004',
'WHERE',
'    warehouse_id = :P26_WAREHOUSE AND',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 2;'))
,p_attribute_07=>'P26_WAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30677143733189109)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Set Default 2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 2;'))
,p_attribute_07=>'P26_WAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_WAREHOUSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28552108016120041)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Set Current QTY 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    qty',
'FROM',
'    NIT004',
'WHERE',
'    warehouse_id = :P26_WAREHOUSE AND',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 1;'))
,p_attribute_07=>'P26_WAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30677216512189110)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Set Default 1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SUM(qty)',
'FROM',
'    NIT004',
'WHERE',
'    :P26_ITEM_ID = item_id AND',
'    uom_id = 1;'))
,p_attribute_07=>'P26_WAREHOUSE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_WAREHOUSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30677764378189115)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Change next focus'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEXT_ITEM'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR i IN (SELECT uom_id FROM NIT002 WHERE :P26_ITEM_ID = item_id ORDER BY uom_id DESC) LOOP',
'        IF i.uom_id = 4 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_4'';',
'            EXIT;',
'        ELSIF i.uom_id = 3 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_3'';',
'            EXIT;',
'        ELSIF i.uom_id = 2 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_2'';',
'            EXIT;',
'        ELSIF i.uom_id = 1 THEN',
'            :P26_NEXT_ITEM := ''#P26_NEW_QTY_1'';',
'            EXIT;',
'        ELSE',
'            :P26_NEXT_ITEM := ''#P26_REASON'';',
'        END IF;',
'    END LOOP;',
'',
'    RETURN :P26_NEXT_ITEM;',
'END;'))
,p_attribute_07=>'P26_ITEM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P26_WAREHOUSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30678054404189118)
,p_event_id=>wwv_flow_imp.id(28551046080120030)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'Change next focus'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEXT_ITEM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'WAREHOUSE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_WAREHOUSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28551564726120035)
,p_name=>'Change Value 4'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_CURRENT_QTY_4'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28551886839120038)
,p_event_id=>wwv_flow_imp.id(28551564726120035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_4'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_CURRENT_QTY_4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28551696394120036)
,p_event_id=>wwv_flow_imp.id(28551564726120035)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEW_QTY_4'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.item(this.triggeringElement).getValue()'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28552245518120042)
,p_name=>'Change Value 3'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_CURRENT_QTY_3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28552423527120044)
,p_event_id=>wwv_flow_imp.id(28552245518120042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_3'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_CURRENT_QTY_3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28552593188120045)
,p_event_id=>wwv_flow_imp.id(28552245518120042)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEW_QTY_3'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.item(this.triggeringElement).getValue()'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28553031430120050)
,p_name=>'Change Value 2'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_CURRENT_QTY_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30676447870189102)
,p_event_id=>wwv_flow_imp.id(28553031430120050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_2'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_CURRENT_QTY_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30676552853189103)
,p_event_id=>wwv_flow_imp.id(28553031430120050)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEW_QTY_2'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.item(this.triggeringElement).getValue()'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30676645223189104)
,p_name=>'Change Value 1'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_CURRENT_QTY_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30676897531189106)
,p_event_id=>wwv_flow_imp.id(30676645223189104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_CURRENT_QTY_1'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P26_CURRENT_QTY_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30676996577189107)
,p_event_id=>wwv_flow_imp.id(30676645223189104)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_NEW_QTY_1'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.item(this.triggeringElement).getValue()'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30677438363189112)
,p_name=>'Focus to Warehouse'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30677572804189113)
,p_event_id=>wwv_flow_imp.id(30677438363189112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_WAREHOUSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30678272446189120)
,p_event_id=>wwv_flow_imp.id(30677438363189112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_WAREHOUSE_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30678300948189121)
,p_name=>'Show error'
,p_event_sequence=>140
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'showError'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30678420377189122)
,p_event_id=>wwv_flow_imp.id(30678300948189121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_WAREHOUSE_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31966307852186012)
,p_event_id=>wwv_flow_imp.id(30678300948189121)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_WAREHOUSE'
);
wwv_flow_imp.component_end;
end;
/
