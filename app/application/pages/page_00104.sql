prompt --application/pages/page_00104
begin
--   Manifest
--     PAGE: 00104
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
 p_id=>104
,p_name=>'Inquire Line Items'
,p_alias=>'INQUIRE-LINE-ITEMS'
,p_step_title=>'Inquire Line Items'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const USDollar = new Intl.NumberFormat(''en-US'', {',
'    minimumFractionDigits: 2',
'});',
'',
'const LINE_IG = "shipment-line-items";',
'const SERIAL_NO_IG = "serial-nos-ig";',
'',
'let lineRec = null;',
'let itemRec = null;',
'let itemPODdialogFocus = true;',
'let forRefresh = true;',
'let activeModal = null;',
'',
'(function($) {',
'    function update(model) {',
'        var tuKey = model.getFieldKey("TOTAL_UNITS"),',
'            costKey = model.getFieldKey("COST"),',
'            tuTotal = 0,',
'            costTotal = 0;',
'',
'        model.forEach(function(record, index, id) {',
'            var tu = parseFloat(record[tuKey]),',
'                cost = parseFloat(record[costKey]),',
'                meta = model.getRecordMetadata(id);',
'',
'            if (!meta.deleted && !meta.agg) {',
'                if (!isNaN(tu)) {',
'                    tuTotal += tu;',
'                }',
'                if (!isNaN(cost) && !isNaN(tu)) {',
'                    costTotal += (tu * cost);',
'                }',
'            }',
'        });',
'        ',
'        $s("P104_CS_TOTAL_QTY", tuTotal);',
'        $s("P104_PO_VALUE", USDollar.format(costTotal));',
'    }',
'',
'    $(function() {',
'        $("#shipment-line-items").on("interactivegridviewmodelcreate", function(event, ui) {',
'            var model = ui.model;',
'',
'            if (ui.viewId === "grid") {',
'                model.subscribe( {',
'                    onChange: function(type, change) {',
'                        if (type === "set") {',
'                            if (change.field === "TOTAL_UNITS" || change.field === "COST") {',
'                                update(model);',
'                            }',
'                        } else if (type !== "move" && type !== "metaChange") {',
'                            update(model);',
'                        }',
'                    },',
'                    progressView: $("#P104_CS_TOTAL_QTY, #P104_PO_VALUE")',
'                });',
'                ',
'                update(model); ',
'                model.fetchAll(function() {});',
'            }',
'        });',
'    });',
'})(apex.jQuery);',
'',
'function getIGGridViewModel(regionId) {',
'    const gridView = apex.region(regionId).widget().interactiveGrid("getViews").grid;',
'    return gridView.model;',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTitle(`Inquire Line Items`);',
'',
'$(`#${LINE_IG}`).on("keydown", (ev) => {',
'    const key = ev.key?.toLowerCase();',
'    if (key === "f7") {',
'        ev.preventDefault();',
'        $("#view-serial-nos").trigger("click");',
'    }',
'});',
'',
'$(document).on("keydown", (ev) => {',
'    const key = ev.key?.toLowerCase();',
'    if (key === "escape") {',
'        if (activeModal === null) {',
'            ev.preventDefault();',
'            apex.navigation.redirect($("#P104_SURL").val());',
'        } else {',
'            activeModal = null;',
'        }',
'    }',
'});',
'',
'apex.actions.shortcutSupport("off");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header .t-Header-branding {',
'    background-color: white !important;',
'    color: rgb(30, 58, 138) !important;',
'}',
'',
'body {',
'    background-color: rgb(30, 58, 138);',
'}',
'',
'.shipment-value-col .t-Form-inputContainer {',
'    padding-inline-start: 1.5rem;',
'}',
'',
'#shipment-info label, #shipment-info span {',
'    margin-block-start: 1rem;',
'    font-size: 1.125rem;',
'    color: white;',
'}',
'',
'#shipment-line-items .a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'#shipment-line-items .a-GV-header a,',
'#shipment-line-items th.a-GV-header {',
'    background-color: #046BC8;',
'    color: white;',
'}',
'',
'#serial-nos-ig .a-GV-header a, ',
'#serial-nos-ig th.a-GV-header {',
'    color: black;',
'}',
'',
'#serial-nos-ig, #serial-nos-ig .a-IG {',
'    border: black;',
'}',
'',
'#serial-nos-ig .a-GV-header, ',
'#serial-nos-ig .a-GV-headerGroup, ',
'#serial-nos-ig .a-GV-cell {',
'    border-color: rgba(0,0,0,.5) !important;',
'}',
'',
'#shipment-line-items table,',
'#shipment-line-items tr,',
'#shipment-line-items td,',
'#shipment-line-items th,',
'#item-po-list table,',
'#item-po-list tr,',
'#item-po-list td,',
'#item-po-list th,',
'#serial-nos-ig table,',
'#serial-nos-ig tr,',
'#serial-nos-ig td,',
'#serial-nos-ig th  {',
'    font-size: 1.125rem;',
'}',
'',
'.line-item-btns {',
'    color: white;',
'    font-size: 1.125rem;',
'    font-weight: normal;',
'    text-align: start;',
'}',
'',
'/* item modal */',
'div:has(#item-po-dialog) .ui-dialog-titlebar {',
'    display: none;',
'}',
'',
'#P102_ITEM_MODAL_HEADER {',
'    font-size: 1.125rem;',
'    font-weight: normal;',
'    color: white;',
'}',
'',
'.item-modal-btns {',
'    font-size: 1.125rem;',
'    font-weight: normal;',
'    background-color: #046BC8;',
'    outline: none;',
'    border: none;',
'    box-shadow: none;',
'    color: white;',
'}',
'',
'div.ui-dialog:has(#item-po-dialog) {',
'    left: 53% !important;',
'}',
'',
'#item-po-dialog,',
'#item-po-dialog .t-DialogRegion-body {',
'    background-color: #046BC8;',
'}',
'',
'/* sn modal */',
'div:has(#serial-nums) .ui-dialog-titlebar {',
'    display: none;',
'}',
'',
'#serial-nums .t-DialogRegion-body {',
'    padding-block-end: 0;',
'}',
'',
'.ui-dialog .t-DialogRegion {',
'    border-start-start-radius: 10px;',
'    border-start-end-radius: 10px;',
'}',
'',
'#serial-nums {',
'    /* background-color: rgb(30, 58, 138); */',
'    background-color: #056AC8;',
'    overflow: hidden;',
'}',
'',
'.a-GV-hdr .a-GV-table {',
'    width: 100% !important;',
'}',
'',
'div.ui-dialog:has(#serial-nums) {',
'    left: 53% !important;',
'    top: 10% !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(5671392681337017)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46892676941861043)
,p_plug_name=>'Shipment Info'
,p_region_name=>'shipment-info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4319920360084164)
,p_plug_display_sequence=>70
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46892836120861044)
,p_plug_name=>'Shipment Line Items'
,p_region_name=>'shipment-line-items'
,p_region_template_options=>'#DEFAULT#:margin-left-md:margin-right-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.po_id ref_po_no, a.shipment_id, b.item_num item_number, b.item_desc,',
'       a.qty cs, (a.qty * d.quantity) total_units, a.cost, UPPER(c.uom_code) uom, ',
'       a.product_date, a.encoded, a.item_id, c.uom_id, a.shipment_items_id,',
'       a.shipment_id || ''-'' || a.shipment_items_id pk_col',
'  FROM nit018 a,',
'       nit001 b,',
'       nim026 c,',
'       (select w.item_id, w.quantity',
'              from nit002 w',
'             where w."LEVEL" = 4) d',
' WHERE a.item_id = b.item_id',
'   AND a.uom_id = c.uom_id',
'   AND a.item_id = d.item_id',
'   AND a.shipment_id = :P104_SHIPMENT_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P104_SHIPMENT_ID'
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
 p_id=>wwv_flow_imp.id(31310116176578733)
,p_name=>'PK_COL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK_COL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(32279358928470441)
,p_name=>'SHIPMENT_ITEMS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIPMENT_ITEMS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46893151913861047)
,p_name=>'ITEM_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'item-desc'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46893196751861048)
,p_name=>'CS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'# / CS'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999999999999990D00'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'cs'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46893327022861049)
,p_name=>'TOTAL_UNITS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_UNITS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Units'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999999999999990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'total-units'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
,p_column_comment=>'total units = cs * (nit002.quantity where item''s nit002.level = 4)'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46893434544861050)
,p_name=>'COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cost'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_format_mask=>'999999999999990D00'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'cost'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46893541534861051)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'uom'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46893615569861052)
,p_name=>'PRODUCT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>13
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'product-date'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46893757004861053)
,p_name=>'ENCODED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENCODED'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Encoded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'encoded'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47501654866699231)
,p_name=>'SHIPMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIPMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_static_id=>'shipment-id'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(49161674967563047)
,p_name=>'REF_PO_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REF_PO_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Reference PO No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.po_id d, a.po_id r',
'  FROM nit015 a',
' WHERE shipment_id = :P104_SHIPMENT_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'ref-po-no'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(53092823891434232)
,p_name=>'ITEM_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>10
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'item-number'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(58581956818691959)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'item-id'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60580672538483449)
,p_name=>'MASTERCASE_QUANTITY'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_static_id=>'m-quantity'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60581434032483457)
,p_name=>'UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(46892907158861045)
,p_internal_uid=>46892907158861045
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>600
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    // options.editable = false;',
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
 p_id=>wwv_flow_imp.id(47486419979662182)
,p_interactive_grid_id=>wwv_flow_imp.id(46892907158861045)
,p_static_id=>'162510'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(47486669965662184)
,p_report_id=>wwv_flow_imp.id(47486419979662182)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31240752794403204)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(47501654866699231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32138093748264578)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(31310116176578733)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(35029055056301073)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(32279358928470441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47488034954662199)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(46893151913861047)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47488906381662205)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(46893196751861048)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47489816230662212)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(46893327022861049)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47490704279662218)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(46893434544861050)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47491607174662224)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(46893541534861051)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47492547835662230)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(46893615569861052)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47493391552662235)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(46893757004861053)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(50218720127340294)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(49161674967563047)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(53156594627093710)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(53092823891434232)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(60568673996457204)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(58581956818691959)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61314657273870074)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(60580672538483449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(61400435640202038)
,p_view_id=>wwv_flow_imp.id(47486669965662184)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(60581434032483457)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58578088400691921)
,p_plug_name=>'Serial Numbers'
,p_region_name=>'serial-nums'
,p_region_css_classes=>'js-dialog-size370x600'
,p_region_template_options=>'js-modal:js-draggable:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4296448473084118)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58578199370691922)
,p_plug_name=>'SN IG'
,p_region_name=>'serial-nos-ig'
,p_parent_plug_id=>wwv_flow_imp.id(58578088400691921)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4267456689084067)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT rownum case, serial_number',
'  FROM nit026',
' WHERE shipment_id = :P104_SHIPMENT_ID',
'   AND shipment_items_id = :P104_SHIPMENT_ITEMS_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P104_SHIPMENT_ITEMS_ID,P104_SHIPMENT_ID'
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
 p_id=>wwv_flow_imp.id(58578433144691924)
,p_name=>'CASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CASE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Case'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>false
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(58578496553691925)
,p_name=>'SERIAL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIAL_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Serial Number'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>20
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultGridColumnOptions = {',
'        noHeaderActivate: true',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(58578361420691923)
,p_internal_uid=>58578361420691923
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No serial numbers'
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>560
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    options.defaultModelOptions = {',
'        pageSize: 100000',
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
 p_id=>wwv_flow_imp.id(58857966436368859)
,p_interactive_grid_id=>wwv_flow_imp.id(58578361420691923)
,p_static_id=>'276225'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(58858170635368860)
,p_report_id=>wwv_flow_imp.id(58857966436368859)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(58858597490368876)
,p_view_id=>wwv_flow_imp.id(58858170635368860)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(58578433144691924)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(58859559705368891)
,p_view_id=>wwv_flow_imp.id(58858170635368860)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(58578496553691925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31236109979300160)
,p_button_sequence=>90
,p_button_name=>'VIEW_SERIAL_NOS'
,p_button_static_id=>'view-serial-nos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link:t-Button--stretch:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(4384771944084285)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>F7</u> - View Serial Numbers'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'line-item-btns'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31271789089300292)
,p_branch_name=>'Redirect to basic info'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:100::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P104_SHIPMENT_ID'
,p_required_patch=>wwv_flow_imp.id(4207224469083906)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31311102525578743)
,p_name=>'P104_SURL'
,p_item_sequence=>60
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_PAGE.GET_URL(',
'    p_page => 100,',
'    p_items => ''P100_SEARCH,P100_SORT,P100_SELECTED_ID'',',
'    p_values => :P104_QSEARCH || '','' || :P104_QSORT || '','' || :P104_SHIPMENT_ID,',
'    p_clear_cache => ''100''',
')'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46914051891861204)
,p_name=>'P104_SHIPMENT_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'shipment ID used for updating'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47037348101224202)
,p_name=>'P104_QSEARCH'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'shipment ID used for updating'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47037450706224203)
,p_name=>'P104_QSORT'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
,p_item_comment=>'shipment ID used for updating'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47507016239699320)
,p_name=>'P104_SHIPMENT_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46892676941861043)
,p_item_default=>'SP1 2004-99999'
,p_prompt=>'Shipment No: '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47507135297699321)
,p_name=>'P104_CS_TOTAL_QTY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46892676941861043)
,p_prompt=>'Total Qty (in Cs): '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47507255716699322)
,p_name=>'P104_PO_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46892676941861043)
,p_prompt=>'Shipment Value: $'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_grid_column_css_classes=>'shipment-value-col'
,p_field_template=>wwv_flow_imp.id(4382028501084276)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58598898764692076)
,p_name=>'P104_SHIPMENT_ITEMS_ID'
,p_item_sequence=>30
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'shipment ID used for updating'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(31256841695300264)
,p_computation_sequence=>10
,p_computation_item=>'P104_SHIPMENT_NO'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shipment_number',
'  from nit016',
' where shipment_id = :P104_SHIPMENT_ID'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31269894427300287)
,p_name=>'Refocus'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(46892836120861044)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31270342700300289)
,p_event_id=>wwv_flow_imp.id(31269894427300287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (this.data.selectedRecords?.length > 0) {',
'    const rec = this.data.selectedRecords[0];',
'    const model = this.data.model;',
'    lineRec = rec;',
'    apex.item("P104_SHIPMENT_ITEMS_ID").setValue(model.getValue(rec, "SHIPMENT_ITEMS_ID"));',
'',
'    if (forRefresh) {',
'        focusOnIGFirstRecordFirstCell(LINE_IG, "ITEM_NUMBER");',
'        forRefresh = false;',
'    }',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31259797802300271)
,p_name=>'Load SN modal'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31236109979300160)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32278142303470429)
,p_event_id=>wwv_flow_imp.id(31259797802300271)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'activeModal = ''serial-nos'';',
'apex.region(SERIAL_NO_IG).widget().interactiveGrid("getActions").invoke("refresh");',
'setTimeout(() => {',
'    $.event.trigger("OPEN_SN");',
'}, 300);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31263851455300279)
,p_name=>'On esc'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(58578199370691922)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.key?.toLowerCase() === "escape"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31264396034300279)
,p_event_id=>wwv_flow_imp.id(31263851455300279)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.browserEvent.preventDefault();',
'this.browserEvent.stopImmediatePropagation();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31264817242300281)
,p_event_id=>wwv_flow_imp.id(31263851455300279)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58578088400691921)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32278290263470430)
,p_name=>'Open SN dialog'
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'OPEN_SN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31260638583300273)
,p_event_id=>wwv_flow_imp.id(32278290263470430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58578088400691921)
);
wwv_flow_imp.component_end;
end;
/
