prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>4200484135045687
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NOS'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(4474787361084704)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(4235976612084007)
,p_default_dialog_template=>wwv_flow_imp.id(4231087530083996)
,p_error_template=>wwv_flow_imp.id(4224420124083982)
,p_printer_friendly_template=>wwv_flow_imp.id(4235976612084007)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(4224420124083982)
,p_default_button_template=>wwv_flow_imp.id(4384771944084285)
,p_default_region_template=>wwv_flow_imp.id(4319920360084164)
,p_default_chart_template=>wwv_flow_imp.id(4319920360084164)
,p_default_form_template=>wwv_flow_imp.id(4319920360084164)
,p_default_reportr_template=>wwv_flow_imp.id(4319920360084164)
,p_default_tabform_template=>wwv_flow_imp.id(4319920360084164)
,p_default_wizard_template=>wwv_flow_imp.id(4319920360084164)
,p_default_menur_template=>wwv_flow_imp.id(4280910036084092)
,p_default_listr_template=>wwv_flow_imp.id(4319920360084164)
,p_default_irr_template=>wwv_flow_imp.id(4267456689084067)
,p_default_report_template=>wwv_flow_imp.id(4347111940084214)
,p_default_label_template=>wwv_flow_imp.id(4382271073084278)
,p_default_menu_template=>wwv_flow_imp.id(4386373727084289)
,p_default_calendar_template=>wwv_flow_imp.id(4386485085084292)
,p_default_list_template=>wwv_flow_imp.id(4380337154084271)
,p_default_nav_list_template=>wwv_flow_imp.id(4371307606084259)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(4371307606084259)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(4369560867084256)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(4272025055084076)
,p_default_dialogr_template=>wwv_flow_imp.id(4329702440084182)
,p_default_option_label=>wwv_flow_imp.id(4382271073084278)
,p_default_required_label=>wwv_flow_imp.id(4383542588084281)
,p_default_navbar_list_template=>wwv_flow_imp.id(4372381950084260)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>65
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
