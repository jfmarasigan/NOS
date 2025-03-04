prompt --application/pages/page_00382
begin
--   Manifest
--     PAGE: 00382
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
 p_id=>382
,p_name=>'Reservation Update Page'
,p_alias=>'RESERVATION-UPDATE-PAGE'
,p_step_title=>'Reservation Update Page'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#onscan.min.js',
'#APP_FILES#onscan#MIN#.js',
'#APP_FILES#js/cmn#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let lastSelected = null;',
'',
'const p35KeyMap = {',
'    f2 : (v) => {',
'        $("#f2").trigger("click");',
'    },',
'    f3 : (v) => {',
'        $("#f3").trigger("click");',
'    },',
'    f4 : (v) => {',
'        $("#f4").trigger("click");',
'    },',
'    f5 : (v) => {',
'        $("#f5").trigger("click");',
'    },',
'    f8 : (v) => {',
'        $("#f8").trigger("click");',
'    },',
'    escape: (v) => {',
'        $("#esc").trigger("click");',
'    }',
'}',
'',
'const p382KeyMap = {',
'    escape: (v) => {',
'        $("#close").trigger("click");',
'    },',
'    enter : (v) => {',
'        $("#enter-details").trigger("click");',
'    }',
'}',
'',
'function mapP35Keys() {',
'    $(document).off(''keydown.p35keyevents'');',
'    $(document).on(''keydown.p35keyevents'', (ev) => {',
'        var key = ev.key?.toLowerCase();',
'        ',
'        if ($(''#P382_IS_MODAL_OPEN'').val() === ''yes'') {',
'            if (p382KeyMap[key]) {',
'                ev.preventDefault();',
'                p382KeyMap[key]();',
'            }',
'        } else {',
'            if (p35KeyMap[key]) {',
'                ev.preventDefault();',
'                p35KeyMap[key]();',
'            }',
'        }',
'    });',
'}',
'',
'function customEvent(event, data){',
'    mapP35Keys();',
'}',
'',
'',
'function addDashTelNo() {',
'    $(''#P382_DIALOG_TEL_NUMBER'').on( "keyup", function() {',
'        var newTel = '''';',
'        if ($(''#P382_DIALOG_TEL_NUMBER'').val().length === 3 || $(''#P382_DIALOG_TEL_NUMBER'').val().length === 7) {',
'            newTel = $(''#P382_DIALOG_TEL_NUMBER'').val() + ''-'';',
'            document.getElementById(''P382_DIALOG_TEL_NUMBER'').value = newTel;',
'        }',
'    });',
'}',
'',
'function addDashFaxNo() {',
'    $(''#P382_DIALOG_FAX_NUMBER'').on( "keyup", function() {',
'        var newTel = '''';',
'        if ($(''#P382_DIALOG_FAX_NUMBER'').val().length === 3 || $(''#P382_DIALOG_FAX_NUMBER'').val().length === 7) {',
'            newTel = $(''#P382_DIALOG_FAX_NUMBER'').val() + ''-'';',
'            document.getElementById(''P382_DIALOG_FAX_NUMBER'').value = newTel;',
'        }',
'    });',
'}',
'',
'function highlightValue() {',
'    const inputFieldIds = ["P382_DIALOG_POINT_PERSON", "P382_DIALOG_TEL_NUMBER", "P382_DIALOG_FAX_NUMBER", "P382_DIALOG_EMAIL"];',
'',
'    inputFieldIds.forEach((fieldId) => {',
'        $(`#${fieldId}`).on("focus", function() {',
'            $(this).select();',
'        });',
'    })',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mapP35Keys();',
'setTitle("Reservation Update")',
'',
'// to remove default of F8 in interactive grid',
'apex.actions.shortcutSupport("off");',
'',
'highlightValue();',
'',
'// to remove default of enter in interactive grid',
'$(".a-GV").on("keydown", "input", function(event) {',
'    if (event.which === 13) { ',
'        event.stopPropagation();',
'    }',
'});',
'',
'$(document).on("keydown.posevent", function(ev) {',
'    var eventBlacklist = {',
'        ''input'': true,',
'        ''textarea'': true,',
'        ''select'': true',
'    };',
'',
'    var tagName = document.activeElement.tagName.toLowerCase();',
'    var id = document.activeElement.id;',
'    var shortcut = ev.code;',
'',
'    if (tagName === ''input'' && ev.key === ''Enter'' && id === ''quantity'') {',
'        document.activeElement.blur();',
'    }',
'',
'',
'});',
'',
'onScan.attachTo(document, {onScan: function(sScancode, iQuantity){',
'    apex.item("P382_BARCODE").setValue(JSON.parse(sScancode));',
'}});',
'',
'',
'// Validations',
'',
'addDashTelNo();',
'addDashFaxNo();',
'',
'// Telephone number validation',
'setInputFilter($("#P382_DIALOG_TEL_NUMBER"), function(value) {',
'    return /^(\d{0,3}|\d{3}-|\d{3}-\d{0,3}|\d{3}-\d{0,3}-|\d{3}-\d{3}-\d{0,4})$/.test(value);',
'}, "Invalid input.");',
'',
'// Fax number validation',
'setInputFilter($("#P382_DIALOG_FAX_NUMBER"), function(value) {',
'    return /^(\d{0,3}|\d{3}-|\d{3}-\d{0,3}|\d{3}-\d{0,3}-|\d{3}-\d{3}-\d{0,4})$/.test(value);',
'}, "Invalid input.");'))
,p_css_file_urls=>'#APP_FILES#css/menu#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body, #button-region {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'.t-Form-labelContainer, .t-Form-inputContainer {',
'    padding-block-end: 0;',
'    padding-block-start: 0;',
'}',
'',
'.t-Form-itemWrapper {',
'    padding-block-end: var(--ut-field-label-padding-y, .25rem);',
'}',
'',
'/* add margin to interactive grid table start */',
'.t-Body-contentInner {',
'    padding-inline-end: var(--ut-body-content-padding-x, 2.5rem);',
'    padding-inline-start: var(--ut-body-content-padding-x, 2.5rem);',
'}',
'/* end */',
'',
'/* style returned values start */',
'.apex-item-display-only {',
'    font-size: 1.125rem;',
'    font-weight: 400;',
'    color: white;',
'}',
'/* end */',
'',
'#orders table, #orders tr, #orders td, #orders th {',
'     font-size: 1.125rem;',
'}',
'',
'',
'.btns {',
'    font-size: 1.125rem;',
'    color: white;',
'    font-weight: 600 !important;',
'}',
'',
'.hiddenbtn {',
'    display: none;',
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
'.content-block {',
'    font-size: 1.25rem;',
'    display: flex;',
'    justify-content: space-between;',
'    font-weight: 700;',
'}',
'',
'.a-GV-header a, th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'.ml-1 {',
'    margin-left: 1rem;',
'}',
'',
'/* set modal header to a different background and font color */',
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #056AC8;',
'    color: white;',
'}',
'',
'.ui-dialog-title{',
'    font-size: 1.5rem;',
'    height: 1.8rem;',
'}',
'',
'.ui-dialog.inv-qby-w {',
'   left: 50% !important; ',
'}',
'',
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'',
'',
'.buttons-row {',
'    position: absolute;',
'    width: 95vw;',
'    bottom: 1rem;',
'}',
'',
'#orders .a-IG {',
'    height: calc(55vh + 2px) !important;',
'} ',
'',
'#orders .a-IG-contentContainer {',
'    height: 55vh !important;',
'}',
'',
'#orders .a-IG-gridView.a-GV {',
'    height: 55vh !important;',
'}',
'',
'.t-Form-label{',
'    color: white;',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    padding-block-start: var(--ut-field-label-padding-y, .15rem);',
'}',
'',
'.apex-item-display-only {',
'    color: white;',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    display: flex;',
'}',
'',
'.t-Button-label {',
'    font-size: 1.125rem;',
'    white-space: nowrap;',
'    font-family: Arial;',
'}',
'',
'',
'',
'#P382_CUSTOMER_FIELD_CONTAINER > .t-Form-labelContainer,',
'#P382_POINT_PERSON_CONTAINER > .t-Form-labelContainer {',
'    max-width: 14%;',
'}',
'',
'#P382_EMAIL_CONTAINER > .t-Form-labelContainer {',
'    max-width: 10%;',
'}',
'',
'#P382_TEL_NUMBER_CONTAINER > .t-Form-inputContainer,',
'#P382_FAX_NUMBER_CONTAINER > .t-Form-inputContainer {',
'    padding-left: 2.4rem;',
'}',
'',
'#P382_RESERVE_NO_CONTAINER > .t-Form-labelContainer,',
'#P382_RESERVE_DATE_CONTAINER > .t-Form-labelContainer,',
'#P382_EXPIRY_DATE_CONTAINER > .t-Form-labelContainer,',
'#P382_ORDER_WRITER_CONTAINER > .t-Form-labelContainer {',
'    max-width: 35%;',
'}',
'',
'.col-2:has(#P382_LOC_1_LABEL),',
'.col-2:has(#P382_LOC_2_LABEL),',
'.col-2:has(#P382_LOC_3_LABEL),',
'.col-2:has(#P382_LOC_4_LABEL) {',
'    max-width: 5.5rem;',
'}',
'',
'.t-Form-inputContainer:has(#P382_LOC_1),',
'.t-Form-inputContainer:has(#P382_LOC_2),',
'.t-Form-inputContainer:has(#P382_LOC_3),',
'.t-Form-inputContainer:has(#P382_LOC_4) {',
'    text-align: center;',
'    margin: 0 auto;',
'}',
'',
'.t-Form-labelContainer:has(#P382_QOH_LABEL),',
'.t-Form-labelContainer:has(#P382_LOC_1_LABEL),',
'.t-Form-labelContainer:has(#P382_LOC_2_LABEL),',
'.t-Form-labelContainer:has(#P382_LOC_3_LABEL),',
'.t-Form-labelContainer:has(#P382_LOC_4_LABEL),',
'.t-Form-labelContainer:has(#P382_SUB_LABEL),',
'.t-Form-labelContainer:has(#P382_DISCOUNT_LABEL),',
'.t-Form-labelContainer:has(#P382_TOTAL_LABEL) {',
'    text-align: left;',
'    padding-left: 1rem;',
'}',
'',
'/* css for modal start */',
'.ui-dialog-titlebar {',
'    display: block;',
'}',
'',
'.ui-dialog.pr-li {',
'   left: 80% !important;',
'}',
'',
'.ui-dialog.inv-bby-w {',
'    left: 78% !important;',
'}',
'',
'.ui-dialog.ship-his {',
'    left: 50% !important;',
'}',
'',
'.ui-dialog.pur-order,',
'.ui-dialog.inc-ship {',
'    left: 45% !important;',
'}',
'',
'.ui-dialog.res {',
'    left: 32% !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background-color: transparent !important;',
'    opacity: 0 !important;',
'}',
'/* modal end */',
'',
'',
'/* inline-dialog start */',
'.ui-dialog:has(#inline-dialog) {',
'    width: 430px !important;',
'}',
'',
'.ui-dialog > #inline-dialog > .t-DialogRegion-wrap {',
'    overflow: hidden;',
'}',
'',
'#P382_DIALOG_CUSTOMER_DBA_LABEL,',
'#P382_DIALOG_POINT_PERSON_LABEL,',
'#P382_DIALOG_TEL_NUMBER_LABEL, ',
'#P382_DIALOG_FAX_NUMBER_LABEL, ',
'#P382_DIALOG_EMAIL_LABEL {',
'    color: black !important;',
'    padding-top: 0.5rem;',
'}',
'',
'#P382_DIALOG_CUSTOMER_DBA,',
'#P382_DIALOG_POINT_PERSON,',
'#P382_DIALOG_TEL_NUMBER, ',
'#P382_DIALOG_FAX_NUMBER, ',
'#P382_DIALOG_EMAIL {',
'    height: 2rem;',
'    margin-bottom: 0.4rem;',
'    margin-left: 6.5rem;',
'    font-size: 1rem;',
'}',
'',
'',
'#P382_DIALOG_CUSTOMER_DBA {',
'    color: black;',
'    background-color: #d9d9d9;',
'    opacity: unset;',
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
'/* inline-dialog end */',
'',
'.a-GV-table tr.is-selected {',
'    --a-gv-background-color: #F5DC1C;',
'}',
'',
'.a-GV-table .a-GV-cell.is-focused',
'{',
'    box-shadow: inset 0 0 0 1px black;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59057034641496119)
,p_plug_name=>'Inline Dialog'
,p_title=>'Customer Details'
,p_region_name=>'inline-dialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59057124119496120)
,p_plug_name=>'Inline Dialog Body'
,p_parent_plug_id=>wwv_flow_imp.id(59057034641496119)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59057436173496123)
,p_plug_name=>'Error Display'
,p_parent_plug_id=>wwv_flow_imp.id(59057124119496120)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id="errorArea" class="hiddenbtn error-msg">Please fill in the required search field.</span>',
'<span id="errorArea1" class="hiddenbtn error-msg">Please input customer dba.</span>',
'<span id="errorArea2" class="hiddenbtn error-msg">Please input telephone number.</span>',
'<span id="errorArea3" class="hiddenbtn error-msg">Invalid telephone number.</span>',
'<span id="errorArea4" class="hiddenbtn error-msg">Invalid fax number.</span>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155637340028194852)
,p_plug_name=>'Header 2'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>290
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(166240595482055521)
,p_plug_name=>'Invoice'
,p_region_name=>'orders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>280
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n002 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n002 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n002 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n002 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT ',
'    ROWNUM AS "Primary Key",',
'    c001 AS ITEM_NO, ',
'    c002 AS CO, ',
'    c003 AS ITEM_DESCRIPTION, ',
'    n001 AS QTY, ',
'    n002 AS REG_PRICE, ',
'    c004 AS UOM, ',
'    NVL(n003, 0) AS DISC, ',
'    CASE ',
'        WHEN n003 <> 0 THEN ''S''',
'        ELSE ''N''',
'    END AS DT,',
'    n002 - NVL(n004, 0) AS NET_PRICE,',
'    n005 - NVL(n004, 0) * n001 AS EXTENDED_PRICE,',
'    c006 AS BARCODE,',
'    c007 AS ITEM_ID',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59059410617496143)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166240769537055523)
,p_name=>'ITEM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_AUTO_COMPLETE'
,p_heading=>'Item No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'EXACT_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'7'
,p_attribute_09=>'1'
,p_attribute_10=>'Y'
,p_is_required=>true
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.item_num || '' - '' || UPPER(c.uom_code)',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id;'))
,p_lov_display_extra=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'table-col-1'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166240851542055524)
,p_name=>'CO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CO'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166240940937055525)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166241083166055526)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'quantity'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166241212012055527)
,p_name=>'REG_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REG_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reg Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166241260045055528)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166241360440055529)
,p_name=>'DISC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISC'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166241423796055530)
,p_name=>'DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'DT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166241576138055531)
,p_name=>'NET_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166241700284055532)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(166241782030055533)
,p_name=>'BARCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BARCODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170629626145817044)
,p_name=>'Primary Key'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Primary Key'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(166240695178055522)
,p_internal_uid=>166240695178055522
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 1000',
'    };',
'    options.defaultGridViewOptions = {',
'        pagination: {',
'            scroll: true,',
'            virtual: true,',
'            loadMore: false',
'        },',
'        resizeColumns: false,',
'        reorderColumns: false,',
'        footer: false',
'    };',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(166264283769089703)
,p_interactive_grid_id=>wwv_flow_imp.id(166240695178055522)
,p_static_id=>'493436'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(166264451727089703)
,p_report_id=>wwv_flow_imp.id(166264283769089703)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(60533417949203379)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(59059410617496143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166264961671089708)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(166240769537055523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166265912784089714)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(166240851542055524)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166266746529089722)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(166240940937055525)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>350
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166267529627089730)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(166241083166055526)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166268429709089739)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(166241212012055527)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166269336067089747)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(166241260045055528)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166270300590089756)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(166241360440055529)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166271197148089764)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(166241423796055530)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166272094412089772)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(166241576138055531)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166272954498089778)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(166241700284055532)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(166273833449089787)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(166241782030055533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(173017135071290219)
,p_view_id=>wwv_flow_imp.id(166264451727089703)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(170629626145817044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(229957063528155326)
,p_plug_name=>'Search Input'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels:margin-top-sm:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>260
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59645754996321178)
,p_button_sequence=>300
,p_button_name=>'Customer_Details'
,p_button_static_id=>'f4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F4 </u>- Customer Details'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59645363936321176)
,p_button_sequence=>310
,p_button_name=>'Change_Expiry'
,p_button_static_id=>'f5'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F5 </u>- Change Expiry'
,p_button_redirect_url=>'f?p=&APP_ID.:376:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59646968547321179)
,p_button_sequence=>320
,p_button_name=>'Search-Item'
,p_button_static_id=>'f2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u> F2 </u>  - Search Item'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59646578904321178)
,p_button_sequence=>330
,p_button_name=>'Change-Quantity'
,p_button_static_id=>'f3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F3 </u> - Change Qty'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59646125107321178)
,p_button_sequence=>340
,p_button_name=>'Update'
,p_button_static_id=>'f8'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'<u>F8 </u> - Update'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btns text-left'
,p_grid_column_css_classes=>'ml-1'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59647385214321179)
,p_button_sequence=>350
,p_button_name=>'Escape'
,p_button_static_id=>'esc'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Escape'
,p_button_redirect_url=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59796103658290001)
,p_button_sequence=>360
,p_button_name=>'Close'
,p_button_static_id=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59797062185297192)
,p_button_sequence=>370
,p_button_name=>'Enter_Customer_Details'
,p_button_static_id=>'enter-details'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_image_alt=>'Close'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hiddenbtn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59057575074496124)
,p_name=>'P382_OG_FAX_NUMBER'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59057677673496125)
,p_name=>'P382_OG_POINT_PERSON'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59057762882496126)
,p_name=>'P382_OG_EMAIL'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59057846657496127)
,p_name=>'P382_OG_TEL_NUMBER'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59057952788496128)
,p_name=>'P382_OG_EXPIRY_DATE'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59058029143496129)
,p_name=>'P382_IS_MODAL_OPEN'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59058837435496137)
,p_name=>'P382_SELECTED_QTY'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59058916678496138)
,p_name=>'P382_SELECTED_ITEM_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59059016985496139)
,p_name=>'P382_SELECTED_PRICE'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59763578516386495)
,p_name=>'P382_DIALOG_CUSTOMER_DBA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59057124119496120)
,p_prompt=>'<span style="padding-left:2.35rem">Customer DBA<span style="color:red;">*</span>:</span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59766266656409784)
,p_name=>'P382_DIALOG_POINT_PERSON'
,p_source_data_type=>'DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(59057124119496120)
,p_item_source_plug_id=>wwv_flow_imp.id(100701111378048069)
,p_prompt=>'<span style="padding-left:2.5rem">Contact Person:</span>'
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
 p_id=>wwv_flow_imp.id(59766549305412064)
,p_name=>'P382_DIALOG_TEL_NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(59057124119496120)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59766883376414059)
,p_name=>'P382_DIALOG_FAX_NUMBER'
,p_source_data_type=>'DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(59057124119496120)
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
 p_id=>wwv_flow_imp.id(59767170367415750)
,p_name=>'P382_DIALOG_EMAIL'
,p_source_data_type=>'DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(59057124119496120)
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
 p_id=>wwv_flow_imp.id(61127038052320336)
,p_name=>'P382_INITIAL'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61127196502320337)
,p_name=>'P382_FINAL'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61723439612086213)
,p_name=>'P382_SELECTED_INDEX'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74200525212493931)
,p_name=>'P382_SET_DETAILS'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74201598108493941)
,p_name=>'P382_SET_QOH'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77934511077036529)
,p_name=>'P382_LOC_4'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(155637340028194852)
,p_prompt=>'<span class="btns">LOC #4</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77934720418036531)
,p_name=>'P382_WH_4'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117250930920355019)
,p_name=>'P382_LOC_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(155637340028194852)
,p_prompt=>'<span class="btns">LOC #&P382_WH_1.</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117251238664356619)
,p_name=>'P382_LOC_2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(155637340028194852)
,p_prompt=>'<span class="btns">LOC #2</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117251566713358010)
,p_name=>'P382_LOC_3'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(155637340028194852)
,p_prompt=>'<span class="btns">LOC #3</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(4382138690084278)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117267895931433960)
,p_name=>'P382_WH_1'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117268194843435559)
,p_name=>'P382_WH_2'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117268450213436906)
,p_name=>'P382_WH_3'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117268736175438824)
,p_name=>'P382_SELECTED_ITEM_NO'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117270041820445506)
,p_name=>'P382_PREPARED_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(118716850973817346)
,p_name=>'P382_UPC_SEARCH'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128401376013465728)
,p_name=>'P382_SUB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(155637340028194852)
,p_prompt=>'<span class="btns">Sub-Total:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128401519250465729)
,p_name=>'P382_DISCOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(155637340028194852)
,p_prompt=>'<span class="btns">Total Discount:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128401557024465730)
,p_name=>'P382_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(155637340028194852)
,p_prompt=>'<span class="btns">Total Amount:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(135213546265948921)
,p_name=>'P382_URL'
,p_item_sequence=>380
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(155667719457194944)
,p_name=>'P382_QOH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(155637340028194852)
,p_prompt=>'<span class="btns">QOH</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159896384367645838)
,p_name=>'P382_QTY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(155637340028194852)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_grid_column=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(166270832691055631)
,p_name=>'P382_BARCODE'
,p_item_sequence=>270
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170663799767817145)
,p_name=>'P382_CLICKED_SEARCH_F2'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(170664058380817148)
,p_name=>'P382_SEARCHED_UPC'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(172870973980950618)
,p_name=>'P382_RESERVATION_COUNT'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200372100325684531)
,p_name=>'P382_FAX_NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(229957063528155326)
,p_prompt=>'<span class="btns">Fax Number:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200372268237684533)
,p_name=>'P382_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(229957063528155326)
,p_prompt=>'<span class="btns">Email:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(200372544640684535)
,p_name=>'P382_RESERVE_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(229957063528155326)
,p_prompt=>'<span class="btns">Reserve No:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(202253476533102287)
,p_name=>'P382_RESERVE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(229957063528155326)
,p_prompt=>'<span class="btns">Reserve Date:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(202253765756102289)
,p_name=>'P382_EXPIRY_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(229957063528155326)
,p_prompt=>'<span class="btns">Expiry Date:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(202253880144102291)
,p_name=>'P382_ORDER_WRITER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(229957063528155326)
,p_prompt=>'<span class="btns">Order Writer:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(229961337482155387)
,p_name=>'P382_CUSTOMER_FIELD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(229957063528155326)
,p_prompt=>'<span class="btns">Customer (DBA):</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(229961460616155388)
,p_name=>'P382_TEL_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(229957063528155326)
,p_prompt=>'<span class="btns">Tel. Number:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(229961533346155389)
,p_name=>'P382_POINT_PERSON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(229957063528155326)
,p_prompt=>'<span class="btns">Contact Person:</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>9
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59666680996321240)
,p_computation_sequence=>40
,p_computation_item=>'P382_CLICKED_SEARCH_F2'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59667037973321240)
,p_computation_sequence=>50
,p_computation_item=>'P382_SEARCHED_UPC'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59663424093321235)
,p_computation_sequence=>60
,p_computation_item=>'P382_LOC_1'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59663832285321237)
,p_computation_sequence=>70
,p_computation_item=>'P382_LOC_2'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59664275462321237)
,p_computation_sequence=>80
,p_computation_item=>'P382_LOC_3'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59664656348321237)
,p_computation_sequence=>90
,p_computation_item=>'P382_SELECTED_ITEM_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59665035906321239)
,p_computation_sequence=>100
,p_computation_item=>'P382_WH_1'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59665478145321239)
,p_computation_sequence=>110
,p_computation_item=>'P382_WH_2'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59665872143321239)
,p_computation_sequence=>120
,p_computation_item=>'P382_WH_3'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59666223629321239)
,p_computation_sequence=>130
,p_computation_item=>'P382_BARCODE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59667472790321240)
,p_computation_sequence=>140
,p_computation_item=>'P382_RESERVATION_COUNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59667822335321240)
,p_computation_sequence=>150
,p_computation_item=>'P382_UPC_SEARCH'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59059171414496140)
,p_computation_sequence=>160
,p_computation_item=>'P382_SELECTED_ITEM_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59059296018496141)
,p_computation_sequence=>170
,p_computation_item=>'P382_SELECTED_QTY'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(59059389557496142)
,p_computation_sequence=>180
,p_computation_item=>'P382_SELECTED_PRICE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(61127206762320338)
,p_computation_sequence=>190
,p_computation_item=>'P382_INITIAL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(61127310312320339)
,p_computation_sequence=>200
,p_computation_item=>'P382_FINAL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(61723549611086214)
,p_computation_sequence=>210
,p_computation_item=>'P382_SELECTED_INDEX'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(74200698246493932)
,p_computation_sequence=>220
,p_computation_item=>'P382_SET_DETAILS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(74201836987493944)
,p_computation_sequence=>230
,p_computation_item=>'P382_SET_QOH'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(77934690615036530)
,p_computation_sequence=>240
,p_computation_item=>'P382_LOC_4'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(77934869024036532)
,p_computation_sequence=>250
,p_computation_item=>'P382_WH_4'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'Null'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66710530080524296)
,p_name=>'Scan Item Opt'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P382_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66714396340524317)
,p_event_id=>wwv_flow_imp.id(66710530080524296)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Scan Item'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id NUMBER;',
'    v_item_id NUMBER;',
'    v_item_num VARCHAR2(50);',
'    v_product_name VARCHAR2(35);',
'    v_price NUMBER;',
'    v_qty NUMBER;',
'    v_total NUMBER;',
'    v_brand VARCHAR2(10);',
'    v_uom VARCHAR2(10);',
'    v_discounted NUMBER;',
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''UPD_DISCOUNT_A'', ''UPD_DISCOUNT_B'', ''UPD_DISCOUNT_C'', ''UPD_DISCOUNT_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    BEGIN',
'    SELECT a.item_num, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code ',
'      INTO v_item_num, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'      FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'     WHERE a.item_id = b.item_id',
'       AND b.uom_id = c.uom_id',
'       AND a.brand_id = d.brand_id',
'       AND b.upc = :P382_BARCODE;',
'       EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_item_id := NULL;',
'        END;',
'',
'    FOR i IN 1 .. v_collections.COUNT LOOP',
'        v_collection_name := v_collections(i);',
'',
'        BEGIN',
'            SELECT seq_id, n001, n004 ',
'              INTO v_seq_id, v_qty, v_discounted',
'              FROM apex_collections',
'             WHERE collection_name = v_collection_name',
'               AND c006 = :P382_BARCODE;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN ',
'                v_seq_id := 0; ',
'        END;',
'',
'        IF v_seq_id != 0 THEN',
'            v_qty := v_qty + 1;',
'            v_total := v_price * v_qty;',
'            v_discounted := v_discounted * v_qty;',
'',
'            apex_collection.update_member_attribute(',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'            );',
'',
'            apex_collection.update_member_attribute(',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'            );',
'        ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'            apex_collection.add_member(',
'                p_collection_name => v_collection_name,',
'                p_c001 => v_item_num,',
'                p_c002 => v_brand,',
'                p_c003 => v_product_name,',
'                p_n001 => 1,',
'                p_n002 => v_price,',
'                p_c004 => v_uom,',
'                p_n005 => v_total,',
'                p_c006 => :P382_BARCODE,',
'                p_c007 => v_item_id',
'            );',
'        END IF;',
'    END LOOP;',
'END;',
''))
,p_attribute_02=>'P382_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77934139127036525)
,p_event_id=>wwv_flow_imp.id(66710530080524296)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RESERVATION_DISCOUNT_COMBINED_UPD(:P382_CUSTOMER_FIELD, :P382_BARCODE);',
'END;'))
,p_attribute_02=>'P382_CUSTOMER_FIELD,P382_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66712487215524314)
,p_event_id=>wwv_flow_imp.id(66710530080524296)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(166240595482055521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66710929266524310)
,p_event_id=>wwv_flow_imp.id(66710530080524296)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// go to last row',
'setTimeout(() => {',
'  $(document).ready(function() {',
'    // auto edit ITEM_NO column',
'        var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'        var model = gridView.model;',
'        var editIndex = model.getTotalRecords() - 1;',
'        var recordAt = model.recordAt(editIndex); // record number always start at 0',
'        gridView.view$.grid("gotoCell", recordAt[0], "QTY"); // focus on ITEM_NO column',
'        gridView.view$.find(".a-GV-cell.is-focused").trigger("click"); // trigger click on focused cell',
'  });',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66711960080524312)
,p_event_id=>wwv_flow_imp.id(66710530080524296)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''999,999,999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66712921270524315)
,p_event_id=>wwv_flow_imp.id(66710530080524296)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''999,999,999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66713435179524315)
,p_event_id=>wwv_flow_imp.id(66710530080524296)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P382_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P382_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''999,999,999.00'' ) '
,p_attribute_07=>'P382_SUB,P382_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59699017829321281)
,p_name=>'Get typed value'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(166240595482055521)
,p_triggering_element=>'ITEM_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59700545760321282)
,p_event_id=>wwv_flow_imp.id(59699017829321281)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let upcSearch = this.triggeringElement.value;',
'apex.item("P382_SEARCHED_UPC").setValue(upcSearch);',
'',
'',
'setTimeout(() => {',
'    var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'    var model = gridView.model;',
'    apex.region("orders").call("getActions").set("edit", false);',
'    model.clearChanges();',
'',
'    $.event.trigger(''Search'');',
'}, 300)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59699533303321282)
,p_event_id=>wwv_flow_imp.id(59699017829321281)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_UPC_SEARCH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND a.item_num || '' - '' || UPPER(c.uom_code) = :P382_SEARCHED_UPC',
'',
'UNION ALL',
'',
'SELECT b.upc',
'  FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
' WHERE a.item_id = b.item_id',
'   AND b.uom_id = c.uom_id',
'   AND a.brand_id = d.brand_id',
'   AND b.upc = :P382_SEARCHED_UPC'))
,p_attribute_07=>'P382_SEARCHED_UPC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59700042361321282)
,p_event_id=>wwv_flow_imp.id(59699017829321281)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_UPC_SEARCH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61125104575320317)
,p_name=>'Check N004'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P382_BARCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77934350785036527)
,p_event_id=>wwv_flow_imp.id(61125104575320317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;  ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_new_total number;',
'    v_col VARCHAR(1) := ''A'';',
'',
'BEGIN',
'    LOOP ',
'        BEGIN',
'            SELECT seq_id, n001, n002, n005 INTO v_seq_id, v_qty, v_price, v_new_total',
'              FROM apex_collections',
'             WHERE collection_name = ''UPD_DISCOUNT_'' || v_col',
'               AND c006 = :P382_BARCODE;',
'            EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; ',
'        END;',
'',
'        IF v_seq_id != 0 AND v_qty > 1 AND (v_price * v_qty) = v_new_total THEN',
'        ',
'        apex_collection.update_member_attribute (',
'            p_collection_name => ''UPD_DISCOUNT_'' || v_col,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => NULL',
'            );',
'        ',
'        apex_collection.update_member_attribute (',
'            p_collection_name => ''UPD_DISCOUNT_'' || v_col,',
'            p_seq => v_seq_id,',
'            p_attr_number => 4,',
'            p_number_value => NULL',
'            );',
'        END IF;',
'',
'        -- Check exit condition',
'        IF v_col = ''D'' THEN',
'            EXIT;',
'        END IF;',
'',
'        -- Prepare for next iteration',
'        v_col := chr(ascii(v_col) + 1);',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P382_BARCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59692392928321275)
,p_name=>'Search Item'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59646968547321179)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59692895024321275)
,p_event_id=>wwv_flow_imp.id(59692392928321275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let clickedF2 = ''yes'';',
'apex.item("P382_CLICKED_SEARCH_F2").setValue(clickedF2);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59693343238321276)
,p_event_id=>wwv_flow_imp.id(59692392928321275)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// focusOnIGLastRecordFirstCell("orders");',
'apex.region("orders").widget().interactiveGrid("getActions").invoke("selection-add-row");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59684792280321267)
,p_name=>'Focus Quantity'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59646578904321178)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59685296412321268)
,p_event_id=>wwv_flow_imp.id(59684792280321267)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ig = apex.region("orders").widget().interactiveGrid("getViews","grid");',
'ig.view$.grid("gotoCell", $("#P382_SELECTED_INDEX").val(), "QTY");',
'ig.view$.find(".a-GV-cell.is-focused").trigger("dblclick");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59670130496321243)
,p_name=>'Update Reservation'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59646125107321178)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59671177781321246)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_RESERVATION_COUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COUNT(*) INTO :P382_RESERVATION_COUNT',
'    FROM apex_collections',
'    WHERE collection_name IN (',
'        WITH COLLECTION_SUMS AS (',
'            SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'            FROM apex_collections',
'            WHERE collection_name = ''UPD_DISCOUNT_A''',
'            UNION ALL',
'            SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'            FROM apex_collections',
'            WHERE collection_name = ''UPD_DISCOUNT_B''',
'            UNION ALL',
'            SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'            FROM apex_collections',
'            WHERE collection_name = ''UPD_DISCOUNT_C''',
'            UNION ALL',
'            SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'            FROM apex_collections',
'            WHERE collection_name = ''UPD_DISCOUNT_D''',
'        ),',
'        LOWEST_SUM AS (',
'            SELECT collection_name',
'            FROM COLLECTION_SUMS',
'            WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'            FETCH FIRST 1 ROW ONLY',
'        )',
'        SELECT collection_name',
'        FROM LOWEST_SUM',
'    );',
'',
'    RETURN :P382_RESERVATION_COUNT;',
'END;',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61126530392320331)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Clear UPD_FINAL_VALUES'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_FINAL_VALUES'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61126823151320334)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Save To UPD_FINAL_VALUES'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    FOR rec IN (WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n002 - NVL(n004, 0)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT ',
'    c001 AS ITEM_NUM, ',
'    c002 AS BRAND_CODE, ',
'    c003 AS ITEM_DESC, ',
'    c004 AS UOM_CODE, ',
'    c006 AS UPC,',
'    c007 AS ITEM_ID,',
'',
'    n001 AS QUANTITY, ',
'    n002 AS ITEM_PRICE, ',
'    NVL(n003, NULL) AS DISCOUNT_VALUE, ',
'    NVL(n004, NULL) AS DISCOUNTED_PRICE,',
'    n005 AS EXTENDED_PRICE',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM))',
'    ',
'    LOOP',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_FINAL_VALUES'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'   END LOOP;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61126902371320335)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_INITIAL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_diff_count_one NUMBER := 0;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO l_diff_count_one',
'    FROM (',
'        SELECT c006, n001',
'        FROM apex_collections',
'        WHERE collection_name = ''UPD_INITIAL_VALUES''',
'        MINUS',
'        SELECT c006, n001',
'        FROM apex_collections',
'        WHERE collection_name = ''UPD_FINAL_VALUES''',
'    );',
'',
'    RETURN l_diff_count_one;',
'END;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61127406991320340)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_FINAL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_diff_count_one NUMBER := 0;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO l_diff_count_one',
'    FROM (',
'        SELECT c006, n001',
'        FROM apex_collections',
'        WHERE collection_name = ''UPD_FINAL_VALUES''',
'        MINUS',
'        SELECT c006, n001',
'        FROM apex_collections',
'        WHERE collection_name = ''UPD_INITIAL_VALUES''',
'    );',
'',
'    RETURN l_diff_count_one;',
'END;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61126122828320327)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Update Totals'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    UPDATE NPT018',
'        SET POINT_PERSON = :P382_POINT_PERSON,',
'            TEL_NUMBER = :P382_TEL_NUMBER,',
'            FAX = :P382_FAX_NUMBER,',
'            EMAIL = :P382_EMAIL,',
'            TOTAL_DISCOUNT = REPLACE(:P382_DISCOUNT, '','' , ''''),',
'            TOTAL_AMOUNT = REPLACE(:P382_TOTAL, '','' , ''''),',
'            SUBTOTAL = REPLACE(:P382_SUB, '','' , ''''),',
'            USER_UPDATE = :app_user,',
'            DATE_UPDATED = SYSDATE',
'        WHERE RESERVE_ID = :P382_RESERVE_NO;',
'END;'))
,p_attribute_02=>'P382_POINT_PERSON,P382_TEL_NUMBER,P382_FAX_NUMBER,P382_EMAIL,P382_TOTAL,P382_DISCOUNT,P382_SUB,P382_RESERVE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P382_RESERVATION_COUNT'').val() > 0 && ',
'',
'(',
'apex.item("P382_OG_POINT_PERSON").getValue() !== apex.item("P382_POINT_PERSON").getValue() ||',
'apex.item("P382_OG_TEL_NUMBER").getValue() !== apex.item("P382_TEL_NUMBER").getValue() ||',
'apex.item("P382_OG_FAX_NUMBER").getValue() !== apex.item("P382_FAX_NUMBER").getValue() ||',
'apex.item("P382_OG_EMAIL").getValue() !== apex.item("P382_EMAIL").getValue() ||',
'',
'apex.item("P382_INITIAL").getValue() > 0 || apex.item("P382_FINAL").getValue() > 0',
')'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59687643722321270)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Update Expiry Date'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    UPDATE NPT018',
'        SET EXPIRY_DATE = :P382_EXPIRY_DATE,',
'            USER_UPDATE = :app_user,',
'            DATE_UPDATED = SYSDATE',
'        WHERE RESERVE_ID = :P382_RESERVE_NO;',
'END;'))
,p_attribute_02=>'P382_RESERVE_NO,P382_EXPIRY_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item("P382_EXPIRY_DATE").getValue() !== apex.item("P382_OG_EXPIRY_DATE").getValue()'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59687127677321270)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'History Update Expired'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    INSERT INTO NPT036 (',
'        RESERVATION_UPDATE_ID, RESERVE_ID, UPDATED,',
'        USER_CREATED, DATE_CREATED',
'    )',
'    VALUES (',
'        (SELECT NVL(MAX(RESERVATION_UPDATE_ID), 0) + 1 FROM NPT036), :P382_RESERVE_NO, ''Expiration'',',
'        :P382_ORDER_WRITER, SYSDATE',
'    );',
'END;',
''))
,p_attribute_02=>'P382_RESERVE_NO,P382_ORDER_WRITER,P382_RESERVE_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item("P382_EXPIRY_DATE").getValue() !== apex.item("P382_OG_EXPIRY_DATE").getValue()'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59670637839321245)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Delete Existing Rows'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Delete rows from NPT019 where RESERVE_ID matches the user input',
'    DELETE FROM NPT019',
'    WHERE RESERVE_ID = :P382_RESERVE_NO;',
'',
'    -- Commit the changes (optional if autocommit is not enabled)',
'    COMMIT;',
'END;'))
,p_attribute_02=>'P382_RESERVE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P382_RESERVATION_COUNT'').val() > 0 && ',
'(apex.item("P382_INITIAL").getValue() > 0 || apex.item("P382_FINAL").getValue() > 0)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59672126361321248)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Insert Updated Rows'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    FOR d IN (WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n002 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n002 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n002 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n002 - (NVL(n004, 0) * n001)) AS TOTAL_EXTENDED_PRICE',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_EXTENDED_PRICE = (SELECT MIN(TOTAL_EXTENDED_PRICE) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT ',
'    c001 AS ITEM_NO, ',
'    c002 AS CO, ',
'    c003 AS ITEM_DESCRIPTION, ',
'    n001 AS QTY, ',
'    n002 AS REG_PRICE, ',
'    c004 AS UOM, ',
'    NVL(n004, 0) AS DISCOUNTED_PRICE,',
'    NVL(n003, 0) AS DISCOUNT_VALUE, ',
'    CASE ',
'        WHEN n003 <> 0 THEN ''S''',
'        ELSE ''N''',
'    END AS DT,',
'    (SELECT nim026.UOM_ID',
'        FROM NIM026 nim026',
'        WHERE UPPER(nim026.UOM_CODE) = c004) AS uom_id,',
'    n002 - NVL(n004, 0) AS NET_PRICE,',
'    n005 - NVL(n004, 0) * n001 AS EXTENDED_PRICE,',
'    c007 AS ITEM_ID,',
'    c006 AS BARCODE',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM))',
'    ',
'    LOOP',
'        INSERT INTO NPT019(',
'            QUANTITY, USER_CREATED, DATE_CREATED, WAREHOUSE_ID, ',
'            ITEM_PRICE, UOM_ID, ITEM_NUM, UOM_CODE, ',
'            BRAND_CODE, ITEM_DESC, DT, DISCOUNT_VALUE,',
'            ITEM_ID, RESERVE_ID, DISCOUNTED_PRICE',
'        )',
'        VALUES (',
'            d.QTY, v(''APP_USER''), SYSDATE, 1, ',
'            d.REG_PRICE, d.uom_id, d.ITEM_NO, d.UOM, ',
'            d.CO, d.ITEM_DESCRIPTION, d.DT, d.DISCOUNT_VALUE,',
'            d.ITEM_ID, :P382_RESERVE_NO, d.DISCOUNTED_PRICE',
'        );',
'   END LOOP;',
'END;'))
,p_attribute_02=>'P382_RESERVE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P382_RESERVATION_COUNT'').val() > 0 && ',
'(apex.item("P382_INITIAL").getValue() > 0 || apex.item("P382_FINAL").getValue() > 0)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61126241644320328)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'History Contact Details'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    INSERT INTO NPT036 (',
'        RESERVATION_UPDATE_ID, RESERVE_ID, UPDATED,',
'        USER_CREATED, DATE_CREATED',
'    )',
'    VALUES (',
'        (SELECT NVL(MAX(RESERVATION_UPDATE_ID), 0) + 1 FROM NPT036), :P382_RESERVE_NO, ''Contact Details'',',
'        :P382_ORDER_WRITER, SYSDATE',
'    );',
'END;',
''))
,p_attribute_02=>'P382_RESERVE_NO,P382_ORDER_WRITER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P382_OG_POINT_PERSON").getValue() !== apex.item("P382_POINT_PERSON").getValue() ||',
'apex.item("P382_OG_TEL_NUMBER").getValue() !== apex.item("P382_TEL_NUMBER").getValue() ||',
'apex.item("P382_OG_FAX_NUMBER").getValue() !== apex.item("P382_FAX_NUMBER").getValue() ||',
'apex.item("P382_OG_EMAIL").getValue() !== apex.item("P382_EMAIL").getValue()'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61126498179320330)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'History Items'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    INSERT INTO NPT036 (',
'        RESERVATION_UPDATE_ID, RESERVE_ID, UPDATED,',
'        USER_CREATED, DATE_CREATED',
'    )',
'    VALUES (',
'        (SELECT NVL(MAX(RESERVATION_UPDATE_ID), 0) + 1 FROM NPT036), :P382_RESERVE_NO, ''Items'',',
'        :P382_ORDER_WRITER, SYSDATE',
'    );',
'END;',
''))
,p_attribute_02=>'P382_RESERVE_NO,P382_ORDER_WRITER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item("P382_INITIAL").getValue() > 0 || apex.item("P382_FINAL").getValue() > 0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59671624389321246)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( "Successfully updated reservation" );',
'setTimeout(function() {',
'    $(''.t-Button--closeAlert'').click();  ',
'}, 3000);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P382_RESERVATION_COUNT'').val() > 0 && ',
'',
'(',
'apex.item("P382_OG_POINT_PERSON").getValue() !== apex.item("P382_POINT_PERSON").getValue() ||',
'apex.item("P382_OG_TEL_NUMBER").getValue() !== apex.item("P382_TEL_NUMBER").getValue() ||',
'apex.item("P382_OG_FAX_NUMBER").getValue() !== apex.item("P382_FAX_NUMBER").getValue() ||',
'apex.item("P382_OG_EMAIL").getValue() !== apex.item("P382_EMAIL").getValue() ||',
'',
'apex.item("P382_INITIAL").getValue() > 0 || apex.item("P382_FINAL").getValue() > 0',
')'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61127770753320343)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P382_PREPARED_URL := apex_page.get_url(',
'       p_page   => 370',
'     );',
'END;'))
,p_attribute_03=>'P382_PREPARED_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P382_RESERVATION_COUNT'').val() > 0 && ',
'',
'(',
'apex.item("P382_OG_POINT_PERSON").getValue() !== apex.item("P382_POINT_PERSON").getValue() ||',
'apex.item("P382_OG_TEL_NUMBER").getValue() !== apex.item("P382_TEL_NUMBER").getValue() ||',
'apex.item("P382_OG_FAX_NUMBER").getValue() !== apex.item("P382_FAX_NUMBER").getValue() ||',
'apex.item("P382_OG_EMAIL").getValue() !== apex.item("P382_EMAIL").getValue() ||',
'',
'apex.item("P382_INITIAL").getValue() > 0 || apex.item("P382_FINAL").getValue() > 0',
')'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61127846252320344)
,p_event_id=>wwv_flow_imp.id(59670130496321243)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    // set url to redirect to update',
'    let url = $v("P382_PREPARED_URL");',
'    apex.navigation.redirect(url);',
'}, 500);'))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P382_RESERVATION_COUNT'').val() > 0 && ',
'',
'(',
'apex.item("P382_OG_POINT_PERSON").getValue() !== apex.item("P382_POINT_PERSON").getValue() ||',
'apex.item("P382_OG_TEL_NUMBER").getValue() !== apex.item("P382_TEL_NUMBER").getValue() ||',
'apex.item("P382_OG_FAX_NUMBER").getValue() !== apex.item("P382_FAX_NUMBER").getValue() ||',
'apex.item("P382_OG_EMAIL").getValue() !== apex.item("P382_EMAIL").getValue() ||',
'',
'apex.item("P382_INITIAL").getValue() > 0 || apex.item("P382_FINAL").getValue() > 0',
')'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59685667197321268)
,p_name=>'On Dialog Closed'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59645363936321176)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59686677152321268)
,p_event_id=>wwv_flow_imp.id(59685667197321268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set New Expiry Date'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_EXPIRY_DATE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P376_NEW_EXPIRY_DATE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59688178354321270)
,p_event_id=>wwv_flow_imp.id(59685667197321268)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_EXPIRY_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70198918771373432)
,p_event_id=>wwv_flow_imp.id(59685667197321268)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// go to last selected row',
'setTimeout(() => {',
'    $(document).ready(function() {',
'        var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'        var model = gridView.model;',
'        if (model.getTotalRecords() > 0) {',
'            var ig = apex.region("orders").widget().interactiveGrid("getViews","grid");',
'            ig.view$.grid("gotoCell", $("#P382_SELECTED_INDEX").val(), "ITEM_NO"); // focus on ITEM_NO column',
'            ig.view$.find(".a-GV-cell.is-focused").trigger("click"); // trigger click on focused cell',
'        }',
'    });',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59743943355321354)
,p_name=>'Set QOH'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(166240595482055521)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59744469272321356)
,p_event_id=>wwv_flow_imp.id(59743943355321354)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data?.selectedRecords?.length > 0) {',
'    var selRec = this.data.selectedRecords;',
'    let itemIdSelected = selRec[0][1];',
'    let itemNoSelected = selRec[0][12];',
'    let priceSelected = selRec[0][6];',
'    let index = selRec[0][0];',
'    apex.item("P382_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P382_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P382_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P382_SELECTED_INDEX").setValue(index);',
'} else if (this.data?.record?.length > 0) {',
'    var rec = this.data.record;',
'    let itemIdSelected = rec[1];',
'    let itemNoSelected = rec[12];',
'    let priceSelected = rec[6];',
'    let index = rec[0][0];',
'    apex.item("P382_SELECTED_ITEM_ID").setValue(itemIdSelected);',
'    apex.item("P382_SELECTED_ITEM_NO").setValue(itemNoSelected);',
'    apex.item("P382_SELECTED_PRICE").setValue(priceSelected.replace(/[,]/g, ""));',
'    apex.item("P382_SELECTED_INDEX").setValue(index);',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59744902832321356)
,p_event_id=>wwv_flow_imp.id(59743943355321354)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(() => {',
'    $.event.trigger(''GetLocWh'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59672545858321248)
,p_name=>'GetLocWh'
,p_event_sequence=>230
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'GetLocWh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74201625802493942)
,p_event_id=>wwv_flow_imp.id(59672545858321248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_SET_QOH'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    no_data_found EXCEPTION;',
'    concat_wh_qty VARCHAR(30) := '''';',
'BEGIN',
'',
'    BEGIN ',
'',
'        SELECT LISTAGG(wh_qty, '', '') WITHIN GROUP (ORDER BY wh_qty) INTO concat_wh_qty',
'        FROM (',
'            SELECT nim027.WAREHOUSE_LOCATION || '',,,'' || nit004.QTY AS wh_qty',
'            FROM ',
'                NIM027 nim027',
'            JOIN',
'                NIT004 nit004 ON nim027.WAREHOUSE_ID = nit004.WAREHOUSE_ID',
'            WHERE',
'                nit004.ITEM_ID = (SELECT nit001.ITEM_ID',
'                                  FROM NIT001 nit001',
'                                  WHERE nit001.ITEM_ID = (SELECT nit002.ITEM_ID ',
'                                                          FROM NIT002 nit002',
'                                                          WHERE nit002.UPC = :P382_SELECTED_ITEM_NO))',
'            ORDER BY nit004.QTY DESC',
'            OFFSET 0 ROWS',
'            FETCH NEXT 4 ROWS ONLY',
'        );',
'',
'        IF concat_wh_qty != 0 THEN',
'            :P382_SET_QOH := concat_wh_qty;',
'        ELSE ',
'            :P382_SET_QOH := '''';',
'        END IF;',
' ',
'        EXCEPTION ',
'            WHEN no_data_found THEN',
'                :P382_SET_QOH := '''';',
'            WHEN OTHERS THEN',
'                :P382_SET_QOH := concat_wh_qty;',
'    END;',
'',
'    RETURN :P382_SET_QOH;',
'END;'))
,p_attribute_07=>'P382_SELECTED_ITEM_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74201771104493943)
,p_event_id=>wwv_flow_imp.id(59672545858321248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let qoh = apex.item("P382_SET_QOH").getValue();',
'let wh = "P382_WH_";',
'let qty = "P382_LOC_";',
'',
'// RESET VALUES',
'apex.item("P382_WH_1").setValue('''');',
'apex.item("P382_LOC_1").setValue('''');',
'document.getElementById("P382_LOC_1_LABEL").innerHTML = "";',
'',
'apex.item("P382_WH_2").setValue('''');',
'apex.item("P382_LOC_2").setValue('''');',
'document.getElementById("P382_LOC_2_LABEL").innerHTML = "";',
'',
'apex.item("P382_WH_3").setValue('''');',
'apex.item("P382_LOC_3").setValue('''');',
'document.getElementById("P382_LOC_3_LABEL").innerHTML = "";',
'',
'apex.item("P382_WH_4").setValue('''');',
'apex.item("P382_LOC_4").setValue('''');',
'document.getElementById("P382_LOC_4_LABEL").innerHTML = "";',
'',
'if (qoh !== '''') {',
'    qohArray = qoh.split(", ");',
'',
'    for (i = 0; i < qohArray.length; i++) {',
'        let whNo = qohArray[i].split('',,,'')[0];',
'        let qtyNo = qohArray[i].split('',,,'')[1];',
'        ',
'        apex.item(wh + (i+1)).setValue(whNo);',
'        apex.item(qty + (i+1)).setValue(qtyNo);',
'    }',
'',
'    if ($(''#P382_LOC_1'').val() !== '''') {',
'        document.getElementById("P382_LOC_1_LABEL").innerHTML = "LOC #" + $(''#P382_WH_1'').val();',
'    } else {',
'        document.getElementById("P382_LOC_1_LABEL").innerHTML = "";',
'    }',
'',
'    if ($(''#P382_LOC_2'').val() !== '''') {',
'        document.getElementById("P382_LOC_2_LABEL").innerHTML = "LOC #" + $(''#P382_WH_2'').val();',
'    } else {',
'        document.getElementById("P382_LOC_2_LABEL").innerHTML = "";',
'    }',
'',
'    if ($(''#P382_LOC_3'').val() !== '''') {',
'        document.getElementById("P382_LOC_3_LABEL").innerHTML = "LOC #" + $(''#P382_WH_3'').val();',
'    } else {',
'        document.getElementById("P382_LOC_3_LABEL").innerHTML = "";',
'    }',
'',
'    if ($(''#P382_LOC_4'').val() !== '''') {',
'        document.getElementById("P382_LOC_4_LABEL").innerHTML = "LOC #" + $(''#P382_WH_4'').val();',
'    } else {',
'        document.getElementById("P382_LOC_4_LABEL").innerHTML = "";',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59767361589506296)
,p_name=>'Get Reservation Details'
,p_event_sequence=>280
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74200343320493929)
,p_event_id=>wwv_flow_imp.id(59767361589506296)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_SET_DETAILS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT npt009.DBA          || '',,,'' || ',
'           npt018.POINT_PERSON || '',,,'' || ',
'           npt018.TEL_NUMBER   || '',,,'' || ',
'           npt018.FAX          || '',,,'' || ',
'           npt018.EMAIL        || '',,,'' || ',
'           TO_CHAR(npt018.DATE_CREATED, ''MM/DD/YYYY'') || '',,,'' || ',
'           TO_CHAR(npt018.EXPIRY_DATE, ''MM/DD/YYYY'')  || '',,,'' || ',
'           npt018.USER_CREATED || '',,,'' || ',
'',
'           TO_CHAR(npt018.SUBTOTAL, ''999,999,999.99'')       || '',,,'' || ',
'           TO_CHAR(npt018.TOTAL_DISCOUNT, ''999,999,999.99'') || '',,,'' || ',
'           TO_CHAR(npt018.TOTAL_AMOUNT, ''999,999,999.99'')',
'    ',
'    INTO :P382_SET_DETAILS',
'',
'    FROM NPT018 npt018',
'',
'    JOIN NPT009 npt009 ON npt018.CUSTOMER_ID = npt009.CUSTOMER_ID',
'',
'    WHERE npt018.RESERVE_ID = :P382_RESERVE_NO;',
'',
'    RETURN :P382_SET_DETAILS;',
'END;'))
,p_attribute_07=>'P382_RESERVE_NO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P382_RESERVE_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74200424835493930)
,p_event_id=>wwv_flow_imp.id(59767361589506296)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// SET DETAILS',
'let details = apex.item("P382_SET_DETAILS").getValue();',
'detailsArray = details.split(",,,");',
'',
'// SET DETAILS',
'apex.item("P382_CUSTOMER_FIELD").setValue(detailsArray[0]);',
'apex.item("P382_POINT_PERSON").setValue(detailsArray[1]);',
'apex.item("P382_TEL_NUMBER").setValue(detailsArray[2]);',
'apex.item("P382_FAX_NUMBER").setValue(detailsArray[3]);',
'apex.item("P382_EMAIL").setValue(detailsArray[4]);',
'',
'apex.item("P382_RESERVE_DATE").setValue(detailsArray[5]);',
'apex.item("P382_EXPIRY_DATE").setValue(detailsArray[6]);',
'apex.item("P382_ORDER_WRITER").setValue(detailsArray[7]);',
'',
'apex.item("P382_OG_POINT_PERSON").setValue(detailsArray[1]);',
'apex.item("P382_OG_TEL_NUMBER").setValue(detailsArray[2]);',
'apex.item("P382_OG_FAX_NUMBER").setValue(detailsArray[3]);',
'apex.item("P382_OG_EMAIL").setValue(detailsArray[4]);',
'apex.item("P382_OG_EXPIRY_DATE").setValue(detailsArray[6]);',
'',
'apex.item("P382_SUB").setValue(detailsArray[8]);',
'apex.item("P382_DISCOUNT").setValue(detailsArray[9]);',
'apex.item("P382_TOTAL").setValue(detailsArray[10]);'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P382_RESERVE_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59060053755496149)
,p_event_id=>wwv_flow_imp.id(59767361589506296)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_name=>'Set Reserved Items'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_item_num VARCHAR2(50);',
'    v_brand VARCHAR(10);',
'    v_item_desc VARCHAR2(30);',
'    v_uom VARCHAR(10);',
'    v_upc NUMBER;',
'    v_item_id NUMBER;',
'',
'    v_qty NUMBER;',
'    v_price NUMBER;',
'    v_disc_val NUMBER;',
'    v_disc_price NUMBER;',
'    v_ext_price NUMBER;',
'BEGIN',
'    FOR rec IN (',
'        SELECT ',
'            npt019.ITEM_NUM, npt019.BRAND_CODE, npt019.ITEM_DESC, ',
'            npt019.UOM_CODE, nit002.UPC, npt019.ITEM_ID, ',
'            npt019.QUANTITY, npt019.ITEM_PRICE, npt019.DISCOUNT_VALUE, ',
'            npt019.DISCOUNTED_PRICE, (npt019.ITEM_PRICE * npt019.QUANTITY) AS EXTENDED_PRICE',
'        FROM',
'            NPT019 npt019',
'        JOIN',
'            NIT002 nit002 ON nit002.ITEM_ID = npt019.ITEM_ID',
'        WHERE',
'            npt019.UOM_ID = nit002.UOM_ID AND',
'            npt019.RESERVE_ID = :P382_RESERVE_NO',
'    ) LOOP',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_DISCOUNT_A'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_DISCOUNT_B'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_DISCOUNT_C'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_DISCOUNT_D'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'        ',
'        apex_collection.add_member(',
'            p_collection_name => ''UPD_INITIAL_VALUES'',',
'            p_c001 => rec.ITEM_NUM,',
'            p_c002 => rec.BRAND_CODE,',
'            p_c003 => rec.ITEM_DESC,',
'            p_c004 => rec.UOM_CODE,',
'            p_c006 => rec.UPC,',
'            p_c007 => rec.ITEM_ID,',
'',
'            p_n001 => rec.QUANTITY,',
'            p_n002 => rec.ITEM_PRICE,',
'            p_n003 => rec.DISCOUNT_VALUE,',
'            p_n004 => rec.DISCOUNTED_PRICE,',
'            p_n005 => rec.EXTENDED_PRICE);',
'    END LOOP;',
'',
'END;',
''))
,p_attribute_02=>'P382_RESERVE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P382_RESERVE_NO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59060124518496150)
,p_event_id=>wwv_flow_imp.id(59767361589506296)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(166240595482055521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61126399694320329)
,p_event_id=>wwv_flow_imp.id(59767361589506296)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// go to last row',
'setTimeout(() => {',
'  $(document).ready(function() {',
'    // auto edit ITEM_NO column',
'        var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'        var model = gridView.model;',
'        var editIndex = model.getTotalRecords() - 1;',
'        var recordAt = model.recordAt(editIndex); // record number always start at 0',
'        gridView.view$.grid("gotoCell", recordAt[0], "QTY"); // focus on ITEM_NO column',
'        gridView.view$.find(".a-GV-cell.is-focused").trigger("click"); // trigger click on focused cell',
'  });',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59698605648321281)
,p_event_id=>wwv_flow_imp.id(59767361589506296)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'N'
,p_name=>'Set Available Discounts'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count INTEGER := 0; -- Variable to track the number of discounts',
'    v_letter_index INTEGER := 1; -- Counter for assigning letters (A, B, C, D)',
'BEGIN',
'    -- Count the number of discounts',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'    WHERE npt032.customer_id = npt009.customer_id',
'      AND npt032.discount_id = npt008.discount_id',
'      AND npt009.dba = :P382_CUSTOMER_FIELD;',
'',
'    -- Add discount IDs in order',
'    FOR r IN (',
'        SELECT npt032.discount_id',
'        FROM NPT032 npt032, NPT008 npt008, NPT009 npt009',
'        WHERE npt032.customer_id = npt009.customer_id',
'          AND npt032.discount_id = npt008.discount_id',
'          AND npt009.dba = :P382_CUSTOMER_FIELD',
'        ORDER BY npt032.discount_id',
'    ) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''UPD_AVAILABLE_DISCOUNTS'',',
'            p_n001 => r.discount_id,',
'            p_c001 => CHR(64 + v_letter_index) -- Dynamically assign ''A'', ''B'', etc.',
'        );',
'        v_letter_index := v_letter_index + 1; -- Increment letter counter',
'    END LOOP;',
'',
'    -- Fill remaining slots with zeros',
'    FOR i IN 1..(4 - v_count) LOOP',
'        APEX_COLLECTION.ADD_MEMBER(',
'            p_collection_name => ''UPD_AVAILABLE_DISCOUNTS'',',
'            p_n001 => 0,',
'            p_c001 => CHR(64 + v_letter_index) -- Assign remaining letters',
'        );',
'        v_letter_index := v_letter_index + 1; -- Increment letter counter',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P382_CUSTOMER_FIELD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P382_RESERVE_NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66726548365648478)
,p_name=>'Search Opt'
,p_event_sequence=>280
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'Search'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66731969327648490)
,p_event_id=>wwv_flow_imp.id(66726548365648478)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Search by UPC'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;',
'    v_item_id number;',
'    v_item_num VARCHAR2(50);',
'    v_product_name varchar(35);    ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_brand varchar(10);',
'    v_uom varchar(10);',
'    v_upc number;',
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''UPD_DISCOUNT_A'', ''UPD_DISCOUNT_B'', ''UPD_DISCOUNT_C'', ''UPD_DISCOUNT_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    BEGIN',
'    SELECT a.item_num, b.upc, a.item_id, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_num, v_upc, v_item_id, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND b.upc = :P382_SEARCHED_UPC; ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_item_id := NULL;',
'    END;',
'',
'    FOR i IN 1 .. v_collections.COUNT LOOP',
'        v_collection_name := v_collections(i);',
'',
'        BEGIN',
'            SELECT seq_id, n001 INTO v_seq_id, v_qty',
'              FROM apex_collections',
'             WHERE collection_name = v_collection_name',
'               AND c006 = :P382_SEARCHED_UPC;',
'        EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'',
'        IF v_seq_id != 0 THEN',
'            v_qty := v_qty + 1;',
'            v_total := v_price * v_qty;',
'',
'            apex_collection.update_member_attribute(',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'            );',
'',
'            apex_collection.update_member_attribute(',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'            );',
'        ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'            apex_collection.add_member(',
'                p_collection_name => v_collection_name,',
'                p_c001 => v_item_num,',
'                p_c002 => v_brand,',
'                p_c003 => v_product_name,',
'                p_n001 => 1,',
'                p_n002 => v_price,',
'                p_c004 => v_uom,',
'                p_n005 => v_total,',
'                p_c006 => :P382_SEARCHED_UPC,',
'                p_c007 => v_item_id',
'            );',
'        END IF;',
'    END LOOP;',
'END;',
''))
,p_attribute_02=>'P382_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$(''#P382_SEARCHED_UPC'').val().indexOf(" - ") === -1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66732484210648490)
,p_event_id=>wwv_flow_imp.id(66726548365648478)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Search by Item number and UOM A'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_item_num_search VARCHAR(20);',
'    v_uom_search VARCHAR(20);',
'    v_item_num VARCHAR(50);',
'    v_seq_id NUMBER;',
'    v_item_id NUMBER;',
'    v_product_name VARCHAR(35);    ',
'    v_price NUMBER;',
'    v_qty NUMBER;',
'    v_total NUMBER;',
'    v_brand VARCHAR(10);',
'    v_uom VARCHAR(10);',
'    v_upc VARCHAR(14);',
'    v_collections SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(''UPD_DISCOUNT_A'', ''UPD_DISCOUNT_B'', ''UPD_DISCOUNT_C'', ''UPD_DISCOUNT_D'');',
'    v_collection_name VARCHAR2(15);',
'BEGIN',
'    v_item_num_search := SUBSTR (:P382_SEARCHED_UPC, 1, (INSTR(:P382_SEARCHED_UPC, '' - '') - 1));',
'    v_uom_search := SUBSTR (:P382_SEARCHED_UPC, (INSTR(:P382_SEARCHED_UPC, '' - '') + 3));',
'',
'BEGIN',
'    BEGIN',
'    SELECT a.item_id, a.item_num, b.upc, a.item_desc, b.price, b.price total, UPPER(c.uom_code), d.brand_code INTO v_item_id, v_item_num, v_upc, v_product_name, v_price, v_total, v_uom, v_brand',
'          FROM NIT001 a, NIT002 b, NIM026 c, NIM022 d',
'         WHERE a.item_id = b.item_id',
'           AND b.uom_id = c.uom_id',
'           AND a.brand_id = d.brand_id',
'           AND a.item_num = v_item_num_search',
'           AND c.uom_code = LOWER(v_uom_search);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            v_item_id := NULL;',
'    END;',
'',
'    FOR i IN 1 .. v_collections.COUNT LOOP',
'        v_collection_name := v_collections(i);',
'',
'        BEGIN',
'            SELECT seq_id, n001 INTO v_seq_id, v_qty ',
'            FROM apex_collections',
'            WHERE collection_name = v_collection_name',
'            AND c001 = v_item_num_search',
'            AND c004 = v_uom_search;',
'            EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; END;',
'',
'        IF v_seq_id != 0 THEN',
'        v_qty := v_qty + 1;',
'        v_total := v_price * v_qty;',
'    ',
'            apex_collection.update_member_attribute (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => v_qty',
'                );',
'',
'            apex_collection.update_member_attribute (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => v_total',
'                );',
'',
'    ELSIF v_seq_id = 0 AND v_item_id IS NOT NULL THEN',
'        apex_collection.add_member(',
'            p_collection_name => v_collection_name,',
'            p_c001 => v_item_num_search,',
'            p_c002 => v_brand,',
'            p_c003 => v_product_name,',
'            p_n001 => 1,',
'            p_n002 => v_price,',
'            p_c004 => v_uom,',
'            p_n005 => v_total,',
'            p_c006 => v_upc,',
'            p_c007 => v_item_id);',
'END IF;',
'END LOOP;',
'END;',
'END;'))
,p_attribute_02=>'P382_SEARCHED_UPC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$(''#P382_SEARCHED_UPC'').val().includes(" - ")'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77934203963036526)
,p_event_id=>wwv_flow_imp.id(66726548365648478)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RESERVATION_DISCOUNT_COMBINED_UPD(:P382_CUSTOMER_FIELD, :P382_UPC_SEARCH);',
'END;'))
,p_attribute_02=>'P382_CUSTOMER_FIELD,P382_UPC_SEARCH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66730970817648487)
,p_event_id=>wwv_flow_imp.id(66726548365648478)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(166240595482055521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66731417800648489)
,p_event_id=>wwv_flow_imp.id(66726548365648478)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let disableUPCSearch = ''no'';',
'apex.item("P382_CLICKED_SEARCH_F2").setValue(disableUPCSearch);',
'',
'setTimeout(() => {',
'    $(document).ready(function() {',
'            var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'            var model = gridView.model;',
'            if (model.getTotalRecords() > 0) {',
'                var editIndex = model.getTotalRecords() - 1;',
'                var recordAt = model.recordAt(editIndex); // record number always start at 0',
'                gridView.view$.grid("gotoCell", recordAt[0], "QTY"); // focus on ITEM_NO column',
'                gridView.view$.find(".a-GV-cell.is-focused").trigger("click"); // trigger double click on focused cell',
'            }',
'    });',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66732954798648492)
,p_event_id=>wwv_flow_imp.id(66726548365648478)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''999,999,999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66733477223648492)
,p_event_id=>wwv_flow_imp.id(66726548365648478)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''999,999,999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66733913828648492)
,p_event_id=>wwv_flow_imp.id(66726548365648478)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(NVL(TO_NUMBER(REPLACE(REPLACE(NVL(:P382_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P382_DISCOUNT, 0), ''$'', ''''), '','', '''')), 0), ''999,999,999.00'' ) '
,p_attribute_07=>'P382_SUB,P382_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59787511562137432)
,p_name=>'Open inline dialog'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59645754996321178)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59787945338137468)
,p_event_id=>wwv_flow_imp.id(59787511562137432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59057034641496119)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59790943945137471)
,p_event_id=>wwv_flow_imp.id(59787511562137432)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Set value is modal open'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_IS_MODAL_OPEN'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'yes'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59788443561137470)
,p_event_id=>wwv_flow_imp.id(59787511562137432)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Set dialog customer dba'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_DIALOG_CUSTOMER_DBA'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P382_CUSTOMER_FIELD'
,p_attribute_07=>'P382_CUSTOMER_FIELD'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59789990914137471)
,p_event_id=>wwv_flow_imp.id(59787511562137432)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'Set dialog point person'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_DIALOG_POINT_PERSON'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P382_POINT_PERSON'
,p_attribute_07=>'P382_POINT_PERSON'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59790488339137471)
,p_event_id=>wwv_flow_imp.id(59787511562137432)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Set dialog tel number'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_DIALOG_TEL_NUMBER'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P382_TEL_NUMBER'
,p_attribute_07=>'P382_TEL_NUMBER'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59788943191137470)
,p_event_id=>wwv_flow_imp.id(59787511562137432)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Set dialog fax number'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_DIALOG_FAX_NUMBER'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P382_FAX_NUMBER'
,p_attribute_07=>'P382_FAX_NUMBER'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59789442024137470)
,p_event_id=>wwv_flow_imp.id(59787511562137432)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Set dialog email'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_DIALOG_EMAIL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P382_EMAIL'
,p_attribute_07=>'P382_EMAIL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61125604960320322)
,p_name=>'Searched Check N004'
,p_event_sequence=>290
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'Search'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77934497946036528)
,p_event_id=>wwv_flow_imp.id(61125604960320322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq_id number;  ',
'    v_price number;',
'    v_qty number;',
'    v_total number;',
'    v_new_total number;',
'    v_col VARCHAR(1) := ''A'';',
'',
'BEGIN',
'    LOOP ',
'        BEGIN',
'            SELECT seq_id, n001, n002, n005 INTO v_seq_id, v_qty, v_price, v_new_total',
'              FROM apex_collections',
'             WHERE collection_name = ''UPD_DISCOUNT_'' || v_col',
'               AND c006 = :P382_UPC_SEARCH;',
'            EXCEPTION WHEN NO_DATA_FOUND THEN v_seq_id := 0; ',
'        END;',
'',
'        IF v_seq_id != 0 AND v_qty > 1 AND (v_price * v_qty) = v_new_total THEN',
'        ',
'        apex_collection.update_member_attribute (',
'            p_collection_name => ''UPD_DISCOUNT_'' || v_col,',
'            p_seq => v_seq_id,',
'            p_attr_number => 3,',
'            p_number_value => NULL',
'            );',
'        ',
'        apex_collection.update_member_attribute (',
'            p_collection_name => ''UPD_DISCOUNT_'' || v_col,',
'            p_seq => v_seq_id,',
'            p_attr_number => 4,',
'            p_number_value => NULL',
'            );',
'        END IF;',
'',
'        -- Check exit condition',
'        IF v_col = ''D'' THEN',
'            EXIT;',
'        END IF;',
'',
'        -- Prepare for next iteration',
'        v_col := chr(ascii(v_col) + 1);',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P382_UPC_SEARCH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59797371620300834)
,p_name=>'Close customer inline modal'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59796103658290001)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59797721227300843)
,p_event_id=>wwv_flow_imp.id(59797371620300834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59057034641496119)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59798296977300843)
,p_event_id=>wwv_flow_imp.id(59797371620300834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_IS_MODAL_OPEN'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'no'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59798688679302264)
,p_name=>'Enter customer details'
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59797062185297192)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59803014615302271)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var telNo = $v("P382_DIALOG_TEL_NUMBER");',
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
'    document.getElementById("P382_DIALOG_TEL_NUMBER").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59803534496302271)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var telNo = $v("P382_DIALOG_TEL_NUMBER");',
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
'    document.getElementById("P382_DIALOG_TEL_NUMBER").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59802567002302271)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var faxNo = $v("P382_DIALOG_FAX_NUMBER");',
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
'    document.getElementById("P382_DIALOG_FAX_NUMBER").focus();',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59801048360302268)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Set page point person'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_POINT_PERSON'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P382_DIALOG_POINT_PERSON'
,p_attribute_07=>'P382_DIALOG_POINT_PERSON'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59800533626302268)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Set page tel number'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_TEL_NUMBER'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P382_DIALOG_TEL_NUMBER'
,p_attribute_07=>'P382_DIALOG_TEL_NUMBER'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59801506250302270)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Set page fax number'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_FAX_NUMBER'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P382_DIALOG_FAX_NUMBER'
,p_attribute_07=>'P382_DIALOG_FAX_NUMBER'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59802061247302270)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'Set page email'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_EMAIL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P382_DIALOG_EMAIL'
,p_attribute_07=>'P382_DIALOG_EMAIL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59799054631302267)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var errorArea = document.getElementById("errorArea")',
'var errorArea1 = document.getElementById("errorArea1")',
'var errorArea2 = document.getElementById("errorArea2")',
'var errorArea3 = document.getElementById("errorArea3")',
'var errorArea4 = document.getElementById("errorArea4")',
'',
'errorArea.style.display = "none";',
'errorArea1.style.display = "none"',
'errorArea2.style.display = "none"',
'errorArea3.style.display = "none"',
'errorArea4.style.display = "none"'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59799591460302267)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59057034641496119)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59800044675302268)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_IS_MODAL_OPEN'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'no'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70199246002373435)
,p_event_id=>wwv_flow_imp.id(59798688679302264)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// go to last selected row',
'setTimeout(() => {',
'    $(document).ready(function() {',
'        var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'        var model = gridView.model;',
'        if (model.getTotalRecords() > 0) {',
'            var ig = apex.region("orders").widget().interactiveGrid("getViews","grid");',
'            ig.view$.grid("gotoCell", $("#P382_SELECTED_INDEX").val(), "ITEM_NO"); // focus on ITEM_NO column',
'            ig.view$.find(".a-GV-cell.is-focused").trigger("click"); // trigger click on focused cell',
'        }',
'    });',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60318420628822435)
,p_name=>'Update Quantity'
,p_event_sequence=>320
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(166240595482055521)
,p_triggering_element=>'QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60319311700822437)
,p_event_id=>wwv_flow_imp.id(60318420628822435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'QTY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let selectedQty = this.triggeringElement.value;',
'apex.item("P382_SELECTED_QTY").setValue(selectedQty);',
'',
'setTimeout(() => {',
'    var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'    var model = gridView.model;',
'    apex.region("orders").call("getActions").set("edit", false);',
'    model.clearChanges();',
'',
'    $.event.trigger(''UpdateQty'');',
'}, 500)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60318836922822437)
,p_event_id=>wwv_flow_imp.id(60318420628822435)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_SELECTED_QTY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66734812728650248)
,p_name=>'Update Qty'
,p_event_sequence=>380
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'UpdateQty'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66736720909650253)
,p_event_id=>wwv_flow_imp.id(66734812728650248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_seq_id    NUMBER;',
'    v_price     NUMBER;',
'    v_qty       NUMBER;',
'    v_collection_name VARCHAR2(50);',
'begin',
'    -- Iterate through UPD_DISCOUNT_A to UPD_DISCOUNT_D',
'    FOR i IN 1..4 LOOP',
'        v_collection_name := ''UPD_DISCOUNT_'' || CHR(64 + i); -- CHR(65) = ''A''',
'',
'        -- Check if the item exists in the current collection',
'        begin',
'            select seq_id, n001',
'              into v_seq_id, v_qty',
'              from apex_collections ',
'             where collection_name = v_collection_name',
'               and c007 = :P382_SELECTED_ITEM_ID;',
'               ',
'            -- Update the quantity',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 1,',
'                p_number_value => :P382_SELECTED_QTY);',
'',
'            -- Update the calculated price',
'            APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'                p_collection_name => v_collection_name,',
'                p_seq => v_seq_id,',
'                p_attr_number => 5,',
'                p_number_value => :P382_SELECTED_QTY * :P382_SELECTED_PRICE);',
'',
'            -- Check if quantity is zero, and delete the member if needed',
'            IF v_qty = 0 THEN',
'                APEX_COLLECTION.DELETE_MEMBER(',
'                    p_collection_name => v_collection_name,',
'                    p_seq => v_seq_id);',
'            END IF;',
'        exception',
'            when NO_DATA_FOUND then',
'                -- Item not found in the collection; skip to the next',
'                null;',
'        end;',
'    END LOOP;',
'end;',
''))
,p_attribute_02=>'P382_SELECTED_ITEM_ID,P382_SELECTED_QTY,P382_SELECTED_PRICE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66737745653650254)
,p_event_id=>wwv_flow_imp.id(66734812728650248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(166240595482055521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64333669976104735)
,p_event_id=>wwv_flow_imp.id(66734812728650248)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// go to last selected row',
'setTimeout(() => {',
'    $(document).ready(function() {',
'        var gridView = apex.region("orders").widget().interactiveGrid("getViews").grid;',
'        var model = gridView.model;',
'        if (model.getTotalRecords() > 0) {',
'            var ig = apex.region("orders").widget().interactiveGrid("getViews","grid");',
'            ig.view$.grid("gotoCell", $("#P382_SELECTED_INDEX").val(), "REG_PRICE"); // focus on ITEM_NO column',
'            ig.view$.find(".a-GV-cell.is-focused").trigger("click"); // trigger click on focused cell',
'        }',
'    });',
'}, 500);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66735752683650251)
,p_event_id=>wwv_flow_imp.id(66734812728650248)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Sub-Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n002 * n001) AS SUB_TOTAL',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE SUB_TOTAL = (SELECT MIN(SUB_TOTAL) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n002 * n001), ''999,999,999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66735212415650250)
,p_event_id=>wwv_flow_imp.id(66734812728650248)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Discount'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_DISCOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH COLLECTION_SUMS AS (',
'    SELECT ''UPD_DISCOUNT_A'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_A''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_B'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_B''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_C'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_C''',
' ',
'    UNION ALL',
' ',
'    SELECT ''UPD_DISCOUNT_D'' AS collection_name, SUM(n004 * n001) AS TOTAL_DISCOUNT',
'    FROM apex_collections',
'    WHERE collection_name = ''UPD_DISCOUNT_D''',
'),',
'LOWEST_SUM AS (',
'    SELECT collection_name',
'    FROM COLLECTION_SUMS',
'    WHERE TOTAL_DISCOUNT = (SELECT MAX(TOTAL_DISCOUNT) FROM COLLECTION_SUMS)',
'    FETCH FIRST 1 ROW ONLY',
')',
'SELECT TO_CHAR(SUM(n004 * n001), ''999,999,999.00'' ) ',
'FROM apex_collections',
'WHERE collection_name IN (SELECT collection_name FROM LOWEST_SUM);'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66736250101650251)
,p_event_id=>wwv_flow_imp.id(66734812728650248)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Total'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_CHAR(TO_NUMBER(REPLACE(REPLACE(NVL(:P382_SUB, 0), ''$'', ''''), '','', '''')) - TO_NUMBER(REPLACE(REPLACE(NVL(:P382_DISCOUNT, 0), ''$'', ''''), '','', '''')), ''999,999,999.00'' ) '
,p_attribute_07=>'P382_SUB,P382_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66737290187650253)
,p_event_id=>wwv_flow_imp.id(66734812728650248)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P382_SUB,P382_DISCOUNT,P382_TOTAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74201928432493945)
,p_name=>'Prevent Enter Key'
,p_event_sequence=>390
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(166240595482055521)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74202050009493946)
,p_event_id=>wwv_flow_imp.id(74201928432493945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("orders").widget();',
'',
'grid.on("keydown", function(event) {',
'    if (event.key === "Enter") {',
'        event.stopPropagation(); // Disable the Enter key',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59657014720321220)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(166240595482055521)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>59657014720321220
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59668151121321240)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPD_DISCOUNT_A'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_DISCOUNT_A'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>59668151121321240
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59668526265321242)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPD_DISCOUNT_B'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_DISCOUNT_B'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>59668526265321242
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59668906976321242)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPD_DISCOUNT_C'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_DISCOUNT_C'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>59668906976321242
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59669355743321242)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPD_DISCOUNT_D'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_DISCOUNT_D'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>59669355743321242
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61123531794320301)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPD_INITIAL_VALUES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_INITIAL_VALUES'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>61123531794320301
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61126624514320332)
,p_process_sequence=>100
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPD_FINAL_VALUES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_FINAL_VALUES'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>61126624514320332
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59669772734321242)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reservation Available Discounts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => ''UPD_AVAILABLE_DISCOUNTS'');'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>59669772734321242
);
wwv_flow_imp.component_end;
end;
/
