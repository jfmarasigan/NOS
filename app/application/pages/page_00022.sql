prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Update Item Price'
,p_alias=>'UPDATE-ITEM-PRICE'
,p_page_mode=>'MODAL'
,p_step_title=>'Update Item Price'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const p22KeyMap = {',
'    escape : (v) => {',
'        $("#close").click();',
'    },',
'    enter: (v) => {',
'       // $("#hiddensubmit").trigger("click");',
'       let activeElement = document.activeElement;',
'',
'        if ($(activeElement).is(''input'')) {',
'            var currentField = $(activeElement);',
'            var allInputs = $(''input:visible:enabled'');',
'            var currentIndex = allInputs.index(currentField); ',
'            var nextField = allInputs.eq(currentIndex + 1);',
'',
'            if (currentIndex === allInputs.length - 1) {',
'                $("#hiddensubmit").trigger("click");',
'            } else {',
'                nextField.focus();',
'            }',
'        } else {',
'            $("#hiddensubmit").trigger("click"); ',
'        }',
'    }',
'',
'}',
'',
'',
'function mapP22Keys() {',
'    $(document).off(''keydown.p22keyevents'');',
'    $(document).on(''keydown.p22keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        if (p22KeyMap[key]) {',
'            ev.preventDefault();',
'            p22KeyMap[key]();',
'        }',
'    });',
'}',
'',
''))
,p_javascript_code_onload=>'mapP22Keys();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.render-container {',
'    display: flex;',
'    flex-wrap: wrap;',
'}',
'',
'.render-container > div {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'}',
'',
'.uomLabel {',
'    width: 30%;',
'    margin-bottom: .5rem;',
'}',
'',
'.priceLabel {',
'    width: 70%;',
'    margin-bottom: .5rem;',
'}',
'',
'.labels {',
'    width: 30%;',
'}',
'',
'.price {',
'    width: 70%;',
'}',
'',
'',
'.t-Dialog-body{',
'    label, input, .apex-item-display-only {',
'        font-size: 1.125rem;',
'    }',
'    background-color: #226597;',
'    padding-top: 0;',
'}',
'',
'.t-Region-body{',
'    padding: 0.4;',
'}',
'',
'/*',
'.t-Form-label{',
'    white-space: nowrap;',
'}',
'*/',
'',
'',
'.white-text {',
'    color: white;',
'    font-size: 1.125rem;',
'}',
'',
'.pvalue {',
'    text-align: right;',
'}',
'',
'.labels, .price, .uomLabel, .priceLabel{',
'    font-size: 1.125rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'30rem'
,p_dialog_attributes=>'close: function() { customEvent(''customDialogClose'', {modalPageId: ''MODAL_CLOSE_FIXED''});} '
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9119398378604131)
,p_plug_name=>'Form / Table'
,p_region_name=>'render'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="render-container">',
'    <div class="uomLabel">Unit</div>',
'    <div class="priceLabel">Price</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11801922717825316)
,p_button_sequence=>50
,p_button_name=>'Enter'
,p_button_static_id=>'hiddensubmit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'press enter to update or to exit'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'white-text'
,p_button_cattributes=>'tabindex="-1"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9119735502604135)
,p_name=>'P22_ITEM_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17124574252762055)
,p_name=>'P22_ITEM_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9119398378604131)
,p_prompt=>'Item Number: '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19844137604977005)
,p_name=>'P22_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9119398378604131)
,p_item_default=>'Item Number: '
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:margin-bottom-md:t-Form-fieldContainer--normalDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19845098319977014)
,p_name=>'P22_SUCCESS_MSG'
,p_item_sequence=>30
,p_item_default=>'Test from Update Price'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9119454281604132)
,p_name=>'Retrieve and render data'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9119530893604133)
,p_event_id=>wwv_flow_imp.id(9119454281604132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process("GET_DATA", {',
'    pageItems : ["P22_ITEM_ID"]',
'}, {',
'    dataType: ''json''',
'})',
'.done((data) => {',
'',
'    let isFirstField = true;',
'',
'    data.forEach((item, index) => {',
'',
'        let priceId = `price_field_${index}`;',
'        let uomCodeId = `uom_code_${index}`;',
'',
'        $(".render-container").append(`<div class="labels"><span id="${uomCodeId}" class="uomcodevalue">${item.UOM_CODE}</span></div>`);',
'        $(".render-container")',
'            .append(`<div class="price t-Form-fieldContainer rel-col t-Form-fieldContainer--stretchInputs t-Form-fieldContainer--large lto9488726544111627_0 apex-item-wrapper apex-item-wrapper--text-field apex-item-wrapper--has-icon">',
'                        <div class="t-Form-inputContainer col col-12">',
'                            <div class="t-Form-itemWrapper">',
'                                <input type="text" id="${priceId}" class="pvalue text_field apex-item-text apex-item-number u-textEnd apex-item-has-icon required" value="${parseFloat(item.PRICE).toFixed(2)}" maxlength="8" data-format="999G999G999G999'
||'G990D00" inputmode="decimal" />',
'                                <span class="apex-item-icon fa fa-dollar" aria-hidden="true"></span>',
'                            </div>',
'                            <div class="t-Form-itemAssistance">',
'                                 <span id="${priceId}_error_placeholder" class="a-Form-error u-hidden" data-template-id="4382365997084278_ET"></span>',
'                                <div class="t-Form-itemRequired" aria-hidden="true">Required</div>',
'                            </div>',
'                        </div>',
'                    </div>`);',
'',
'        $(`#${priceId}`).on("blur", function() {',
'        let value = $(this).val().replace(/,/g, '''');',
'        let valid = true;',
'',
'        if (value.trim() === "" || isNaN(value)) {',
'            valid = false;',
'            $(this).val('''');',
'            apex.message.showErrors({',
'                type: "error",',
'                location: "inline",',
'                pageItem: priceId,',
'                message: "This field cannot be empty."',
'            });',
'        } else if (!/^(\d{1,3}(,\d{3})*|\d+)(\.\d{0,2})?$/.test(value)) {',
'            valid = false;',
'            apex.message.showErrors({',
'                type: "error",',
'                location: "inline",',
'                pageItem: priceId,',
'                message: "Invalid price format (max 5 digits, 2 decimals)."',
'            });',
'        } else {',
'            apex.message.clearErrors(priceId);',
'            $(this).val(parseFloat($(this).val()).toFixed(2));',
'',
'        }',
'    });',
'',
'        if (isFirstField) {',
'            $(`#${priceId}`).focus();  // Focus on the first input field',
'            isFirstField = false;       // Ensure focus is only set once',
'        }',
'    });',
'/*',
'    $(".pvalue").on("change", function() {',
'        $(this).val(parseFloat($(this).val()).toFixed(2));',
'    });',
'*/',
'});',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11802089963825317)
,p_name=>'Click Enter'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11801922717825316)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11802164485825318)
,p_event_id=>wwv_flow_imp.id(11802089963825317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let data = [];',
'',
'let valid = true; ',
'',
'',
'$(".render-container").find(".error-message").remove();',
'',
'   $(".render-container").find("input[id^=''price_field_'']").each(function() {',
'        let id = $(this).attr(''id'');',
'        let value = $(this).val();',
'        let index = id.split(''_'').pop(); ',
'',
'        let uomCodeId = `uom_code_${index}`;',
'        let uomCode = $(`#${uomCodeId}`).text(); ',
'',
'    if (value.trim() === "") {',
'        valid = false; ',
'',
'        apex.message.showErrors({',
'            type: "error",',
'            location: "inline",',
'            pageItem: id, ',
'            message: "This field cannot be empty."',
'        });',
'    }',
'',
'    else if (!/^\d{0,5}(\.\d{0,2})?$/.test(value)) {',
'        valid = false; ',
'',
'        apex.message.showErrors({',
'            type: "error",',
'            location: "inline",',
'            pageItem: id,',
'            message: "Invalid price format (max 5 digits, 2 decimals)."',
'        });',
'    }',
'',
'        data.push({',
'            uom_code: uomCode,',
'            price: value',
'        });',
'    });',
'',
'',
'if (!valid) {',
'    return; ',
'}',
'',
'',
'let jsonObject = {',
'    "item_id": $("#P22_ITEM_ID").val(),',
'    "uom_data" : data',
'',
'}',
'console.log(JSON.stringify(jsonObject));',
'',
'apex.server.process("UPDATE_DATA", {',
'    p_clob_01: JSON.stringify(jsonObject)',
'',
'},{',
'    dataType: ''json''',
'}).done((data) => {',
'    console.log("Success")',
'',
'    apex.navigation.dialog.close(true);',
'',
'}).fail((jqXHR, textStatus, errorThrown) => {',
'    console.log("Error")',
'',
'}).always(() => {',
'',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9119631532604134)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cursor sys_refcursor;',
'begin',
'',
'    OPEN l_cursor FOR ',
'    SELECT nit002.uom_id, nit002.price, nim026.uom_code',
'    FROM nit002',
'    JOIN nim026 ON nit002.uom_id = nim026.uom_id',
'    WHERE nit002.item_id = :P22_ITEM_ID  ',
'    ORDER BY nit002."LEVEL";',
'    APEX_JSON.write(l_cursor);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9119631532604134
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11802295467825319)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_json_clob CLOB;',
'    l_json json_object_t;',
'',
'    l_uom_code nim026.uom_code%type;',
'    l_uom_id nit002.uom_id%type;',
'    l_price nit002.price%type;',
'    l_item_id nit002.item_id%type;',
'    l_old_price NIT002.PRICE%TYPE;',
'',
' BEGIN ',
'',
'    l_json_clob := apex_application.g_clob_01;',
'',
'    l_json := json_object_t.parse(l_json_clob);',
'',
'    l_item_id := l_json.get_number(''item_id'');',
'',
'    FOR rec IN ( ',
'        SELECT * ',
'        FROM JSON_TABLE(',
'            l_json_clob, ''$.uom_data[*]''',
'            COLUMNS (',
'                uom_code VARCHAR(50) PATH ''$.uom_code'',',
'                price NUMBER PATH ''$.price''',
'            )',
'        )',
'    ) LOOP',
'        l_uom_code := rec.uom_code;',
'        l_price := rec.price;',
'',
'        SELECT uom_id',
'        INTO l_uom_id',
'        FROM NIM026',
'        WHERE uom_code = l_uom_code;',
'',
'        SELECT PRICE',
'        INTO l_old_price',
'        FROM NIT002',
'        WHERE uom_id = l_uom_id',
'        AND item_id = l_item_id;',
'',
'        IF l_old_price <> l_price THEN',
'            INSERT INTO NIT003 (',
'                ITEM_ID,',
'                CHANGED_COLUMN_NAME,',
'                OLD_VALUE,',
'                NEW_VALUE,',
'                CREATE_USER,',
'                CREATE_DATE',
'            ) VALUES (',
'                l_item_id,',
'                ''PRICE'',',
'                l_old_price,',
'                l_price,',
'                :APP_USER,',
'                SYSTIMESTAMP',
'            );',
'        END IF;',
'',
'        UPDATE NIT002',
'        SET price = l_price',
'        WHERE uom_id = l_uom_id',
'        AND item_id = l_item_id;',
'',
'    END LOOP;',
'',
'    apex_util.set_session_state(''SUCCESS_MSG'', ''Price updated successfully'');',
'',
'    apex_json.open_object;',
'    apex_json.write(''message'', ''Success'');',
'    apex_json.close_object;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        apex_json.open_object;',
'        apex_json.write(''message'', ''Error: '' || SQLERRM);',
'        apex_json.close_object;',
'        RAISE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_success_message=>'Price updated successfully'
,p_internal_uid=>11802295467825319
);
wwv_flow_imp.component_end;
end;
/
