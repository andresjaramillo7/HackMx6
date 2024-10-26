prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>64571575318347020613
,p_default_application_id=>251479
,p_default_id_offset=>0
,p_default_owner=>'WKSP_HACKMXCSF'
);
end;
/
 
prompt APPLICATION 251479 - STEMentorAI
--
-- Application Export:
--   Application:     251479
--   Name:            STEMentorAI
--   Date and Time:   16:43 Saturday October 26, 2024
--   Exported By:     ANDRESJARAMILLO7777@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     27
--       Items:                   28
--       Processes:               10
--       Regions:                 54
--       Buttons:                 26
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              6
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                10
--           Region:              21
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.1.5
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_HACKMXCSF')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'STEMentorAI')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TEST')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'5F4A5B93E9CF1AA0048FFDEE2398FC78F4E10FADA93CD6738DB744CBFDEC811D'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(64575888831041048183)
,p_application_tab_set=>1
,p_logo_type=>'I'
,p_logo=>'#APP_FILES#app-251479-logo.jpg'
,p_logo_text=>'Home'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'test'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>15
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(251479)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(64575900698340048184)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(64578105944078048316)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(64580054182507048485)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(64578102743431048316)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/credentials_for_ai_gratis
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64690056146055174000)
,p_name=>'Credentials for AI Gratis'
,p_static_id=>'credentials_for_ai_gratis'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.aimlapi.com/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/credentials_for_openai_2
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64707094752863620360)
,p_name=>'Credentials for OpenAI (2)'
,p_static_id=>'credentials_for_openai_2_'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.openai.com/v1/chat/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/remote_servers/api_aimlapi_com
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(64690056497679174001)
,p_name=>'api-aimlapi-com'
,p_static_id=>'api_aimlapi_com'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_aimlapi_com'),'https://api.aimlapi.com/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_aimlapi_com'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_aimlapi_com'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_aimlapi_com'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_aimlapi_com'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_aimlapi_com'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_aimlapi_com'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_aimlapi_com'),'')
);
end;
/
prompt --workspace/remote_servers/api_openai_com_v1_chat
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(64706440055851275337)
,p_name=>'api-openai-com-v1-chat'
,p_static_id=>'api_openai_com_v1_chat'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_openai_com_v1_chat'),'https://api.openai.com/v1/chat/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_openai_com_v1_chat'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_openai_com_v1_chat'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_openai_com_v1_chat'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_openai_com_v1_chat'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_openai_com_v1_chat'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_openai_com_v1_chat'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_openai_com_v1_chat'),'')
);
end;
/
prompt --application/shared_components/data_profiles/ai_gratis
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64690056627161174001)
,p_name=>'AI Gratis'
,p_format=>'JSON'
,p_row_selector=>'choices'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64690056865306174001)
,p_data_profile_id=>wwv_flow_imp.id(64690056627161174001)
,p_name=>'INDEX_'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'index'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64690057154771174002)
,p_data_profile_id=>wwv_flow_imp.id(64690056627161174001)
,p_name=>'MESSAGE_ROLE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.role'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64690057465680174002)
,p_data_profile_id=>wwv_flow_imp.id(64690056627161174001)
,p_name=>'MESSAGE_CONTENT'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.content'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64690057742471174002)
,p_data_profile_id=>wwv_flow_imp.id(64690056627161174001)
,p_name=>'MESSAGE_REFUSAL'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.refusal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64690058040848174002)
,p_data_profile_id=>wwv_flow_imp.id(64690056627161174001)
,p_name=>'LOGPROBS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logprobs'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64690058345015174002)
,p_data_profile_id=>wwv_flow_imp.id(64690056627161174001)
,p_name=>'FINISH_REASON'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'finish_reason'
);
end;
/
prompt --application/shared_components/data_profiles/openai
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64707095095957620363)
,p_name=>'OpenAI'
,p_format=>'JSON'
,p_row_selector=>'choices'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64707095284235620363)
,p_data_profile_id=>wwv_flow_imp.id(64707095095957620363)
,p_name=>'INDEX_'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'index'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64707095577461620363)
,p_data_profile_id=>wwv_flow_imp.id(64707095095957620363)
,p_name=>'MESSAGE_ROLE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.role'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64707095801061620363)
,p_data_profile_id=>wwv_flow_imp.id(64707095095957620363)
,p_name=>'MESSAGE_CONTENT'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.content'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64707096163039620364)
,p_data_profile_id=>wwv_flow_imp.id(64707095095957620363)
,p_name=>'MESSAGE_REFUSAL'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.refusal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64707096410401620364)
,p_data_profile_id=>wwv_flow_imp.id(64707095095957620363)
,p_name=>'LOGPROBS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logprobs'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64707096700096620364)
,p_data_profile_id=>wwv_flow_imp.id(64707095095957620363)
,p_name=>'FINISH_REASON'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'finish_reason'
);
end;
/
prompt --application/shared_components/web_sources/ai_gratis
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64690058616938174002)
,p_name=>'AI Gratis'
,p_static_id=>'ai_gratis'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(64690056627161174001)
,p_remote_server_id=>wwv_flow_imp.id(64690056497679174001)
,p_url_path_prefix=>'/chat/completions'
,p_credential_id=>wwv_flow_imp.id(64690056146055174000)
,p_version_scn=>15585854754856
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64690059210377174003)
,p_web_src_module_id=>wwv_flow_imp.id(64690058616938174002)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64690415476714878172)
,p_web_src_module_id=>wwv_flow_imp.id(64690058616938174002)
,p_name=>'PROMPT'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64690058879534174003)
,p_web_src_module_id=>wwv_flow_imp.id(64690058616938174002)
,p_operation=>'POST'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_request_body_template=>'{"model":"gpt-4o","messages":[{"role":"user","content":"#PROMPT#"}],"max_tokens":512,"stream":false}'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/openai
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64707097055352620364)
,p_name=>'OpenAI'
,p_static_id=>'openai'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(64707095095957620363)
,p_remote_server_id=>wwv_flow_imp.id(64706440055851275337)
,p_url_path_prefix=>'completions'
,p_credential_id=>wwv_flow_imp.id(64707094752863620360)
,p_version_scn=>15585907711206
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64706590703836320750)
,p_web_src_module_id=>wwv_flow_imp.id(64707097055352620364)
,p_name=>'PROMPT'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64707097630819620365)
,p_web_src_module_id=>wwv_flow_imp.id(64707097055352620364)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64707097277939620365)
,p_web_src_module_id=>wwv_flow_imp.id(64707097055352620364)
,p_operation=>'POST'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "model": "gpt-4o-mini",',
'  "messages": [',
'    {',
'      "role": "user",',
'      "content": "#PROMPT#"',
'    }',
'  ],',
'  "temperature": 0.7',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(64575900698340048184)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15585937125779
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64580195816042048505)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64773307773549823661)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Temas STEAM'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-cards'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64814172423356530923)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Tecnolog\00EDa')
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(64773307773549823661)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64820548550694882543)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Ingenier\00EDa')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(64773307773549823661)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64828454450735005670)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Ciencias'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(64773307773549823661)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64830482464533077086)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Matem\00E1ticas')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(64773307773549823661)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64873796092739148896)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'CHAT-BOT'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'59'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(64580054182507048485)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15585843016708
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64580419952472048510)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64580422184875048510)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64580424729566048510)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(64580422184875048510)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64580427049827048511)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(64580422184875048510)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000026F494441545847ED95CB6B135114C6BFCC4D32792A49274DA6C1146975231A5F9B2EC42748A5880B11B4B5F8A795D680B8D376';
wwv_flow_imp.g_varchar2_table(2) := 'D54AB56E0A521053BB90628B864CDAE65175923169E651EEB4098944E7C68822CCC02C3239F39DDFF9CE9D731CDBE3770DFCC3CB6103D80ED80EFC970E688681AAA69937BD3C8498377138BA9E285DCD013AB1F29A8E4032097F4C042F0866C25AA1808A';
wwv_flow_imp.g_varchar2_table(3) := '24414EBF43BF93A01B0C6680BAAE438E443170FD0688CFDFB1525DA920BB308F60310F17C731B9C104402B2F8505246EDF6112CDCC3E43B898678A6502281940FCC13838DECB24AA5515645329F411EB663001C843C3885DBA6226D72A65285B3904874E';
wwv_flow_imp.g_varchar2_table(4) := 'B4C1C81FD7E18B8920FE80F93CB7B488239B1B96C09600F4A4BB2F5F4570F8A42946137D5E5EC6A989C936F1B5C7D3488C8C34C1BEAD7F80FAFA1578427E09610950ACD530303109A73F68594D6B80569621A5A611E6F9DE01E20F1F354F7EF1ED0AB47A';
wwv_flow_imp.g_varchar2_table(5) := 'BDA32871B9D177EEC241AB940AA499A9DE01145585FFE6287CC7064DE1E2DA2AC4F176FB1B34D99929444E27CD9FE54F9BA82ECCC3EBECB105F413AC9E390BE1FC455338BBF412722603DF0FC28AAAE1E86002E2E1612DACBC81E77DDA7228599E019AB4';
wwv_flow_imp.g_varchar2_table(6) := 'E472217EEF3E38971B86A662636E166E55452814826118D8FDB20B95E771FCD6181C1C81BE5743F6E91384D5CEAD6AED1F130075E16B3486F8E858F35D459250CD6F9909BD82008F186FFE97997B8E5061C7B27AFA0213000DDCD37554FAA310AFFD7C14';
wwv_flow_imp.g_varchar2_table(7) := 'D383975B7C81C0CEF69F1DC58DD25A97912F1A832712010CA0563C5846E5D534228463AABCA1C9EC40DB377EB88EBFAB1AE806FE6BEBB8AB49C418FC5B0E306A3385D900B603B603FB88882410832C13D70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64580082921851048489)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE9000012A849444154785EED9D7B7454459EC7BF75BB3B9D4E771E904727208F240410A2A848440735B3333BEA8C8292B42349D0E83AE8';
wwv_flow_imp.g_varchar2_table(2) := '1CCFCCB867F7ECEB8FDDD9B37FEC9CB367F7E80E67678765944142183B010507DDC7ACE01179C88AC34320210F1112BAF32049A7937EDE5AEB4A9C8881DCAE7BBBEFD5AEFB1FA47EF5FBDD6F7DBAAA6E3D09C42314D0A000D1602B4C8502100009083429';
wwv_flow_imp.g_varchar2_table(3) := '2000D2249F301600090634292000D2249F301600090634292000D2249F301600090634292000D2249F301600090634292000D2249F301600090634292000D2249F303625407D4FADCEA6B2DD49A9E4443CE2022C4E8038695CCE4C872223162904D02010';
wwv_flow_imp.g_varchar2_table(4) := '0FC292314A881C24523858F8D2EE80D9DEDF5080284006D6D52C9225DC4109EEA0945411E0660036B309659278A214384E80C304F48824E3707E73EB590250A3E24B2940BD1E4F21B1E34E49A6775042AA00BA0240AE512FFF35F13B0C90F709E4C3B28C';
wwv_flow_imp.g_varchar2_table(5) := 'C3D19874608ED73B98AA774B1940ACB6F1D5D5AE26047F01E0AE54BD607AF9210728E8CFDC4D2DBF4D55AD947480E8860D365F70A09150FC390859985E056AD8DB9EA594FC93DB35632BD9B4299ACC28920A50FFE39ED9B1387D9D00CB93F91222EFA915';
wwv_flow_imp.g_varchar2_table(6) := 'A0144769947CB7C4EBED4B96464903A8B7DEB34402FD2F00B39315BCC85785028476C871AC29696E3DA52275C2499202907F9D671595E81BA2839C707924CB605892C99AC266EF7EBD1DE80ED0959AE77D00597A072BF2D3A4C0982CD32ABD6B225D01EA';
wwv_flow_imp.g_varchar2_table(7) := 'D9F05096256867F02CD1F4AAC238590A9C8A3BC355B336ED19D3CB81AE00F9EA6BB7007842AFE0443E4951E0D7EEA69646BD72D60D207F9DA79112FAB25E81897C92A700A1E4C9A2ED5EF663D7FCE802D0271E8F2323835E043043734422835428301877';
wwv_flow_imp.g_varchar2_table(8) := '86E7E8D194E90290AFBEE65980FC22156F2E7CE8A500FDA1BBA9F5DFB5E6A619203645E1AFAF3D0D6091D660847DEA1420A0A70B9B5A976A9DF2D00C90BFC1733FA5F4CDD4BDBAF0A497028490078AB679DFD2929F66807CF59EB7007A9F962084AD510A';
wwv_flow_imp.g_varchar2_table(9) := '90FF743779EFD7E25D13405D8D8D9959D1D12000494B10C2D63005E44884B8E678BDE3BC116802A8B7A1B65AA2789BD7B9B0335E0199E09B25DB5AF6F146A209207FBDE7AF28E83FF23A1776C62B4040FEBAA8C9FB33DE483401E4ABAF7D0DC01A5EE7C2';
wwv_flow_imp.g_varchar2_table(10) := 'CE140ABCEE6E6A799837126E80AE7CBEB37526F9BCCE859D2914F0B99B5A8A7923E106C8DFE829A651DACBEB58D899470187255E90B375D7004F44DC000DACAB591A93C8491EA7C2C65C0A58655A99CFB9E08C1BA0DEFAB52B244847CC25858886470119';
wwv_flow_imp.g_varchar2_table(11) := '725549D34EB60C27E1871FA0759E7B2589727FFE251CA930489A02B24CAA4B38572B720324A63092569E29CFD8027CBBA0A9E5773C8EB901F2D5D5AE05412B8F5361632E05B4CC897103D4D7505B2F536C339714221A2E05286ADCDB5B76F2D872032456';
wwv_flow_imp.g_varchar2_table(12) := '20F2C86D4E1B89A0A1705B4B134F74DC00F9EA6B1A00F20A8F5361632E0504401ACB2322CB188944118EC711A3145159464CA6885259C9D946245825029B24C12611644816E466D8947F7F1D1E011047298E4663188946118846118AC7BF9443A62B1B8E';
wwv_flow_imp.g_varchar2_table(13) := '6C1728A5080783180F7CF9681E87C50297CDA6C0E4B45A39A230878900288172180C87E11B0F81D53A134FFEDC7928AC5880AC9259B0B9B261C9724E99A33C1644643480B1DE1EF4B5B763E0FCF9CFD36548128A1D0ECCB06724108D39920A805494C370';
wwv_flow_imp.g_varchar2_table(14) := '248A4BE3E39FD73645E5E5285A74235C65A59032F80E3E8B874318EDEC80FFEC59F475762851645A2C0A48AC56FAAA3C02A0EB94944C293E1E0D2ACD157B0A4BCB30F71BAB602F72EB5ABE61BF0FDDEFECFBBC566200CD753A2111EEEF145DE3BB5E6602';
wwv_flow_imp.g_varchar2_table(15) := 'A06BA8C39AA9AEC0A852EBCC701763FE1F7D0B8E9259492D98F10BE7D1B57F3F867C97C0FA48A5D92ED377B605405320C13AC7ACE689538A0577DF8DA215770029BB5F8FC277F03D741C7C0F164230DFE582CB66DE4EB600E82A80FCE321F48E8FC36AB3';
wwv_flow_imp.g_varchar2_table(16) := 'E1C6075723BBB42CA9B5CEB5320F74B4E3A3BDBF851C8DA1242B1385997C7DAD64072F009AA430EB28B3AF2CF619BEB4D603FB4C63174C86FBFB70AAD58B5030A874AEDD0EF3412400BA02D05024A2345B593939B8A9AEE19A9FE3C9FE455F9D7F3C388A';
wwv_flow_imp.g_varchar2_table(17) := '13DB9B301618519A33B37DA10980008CC7E23817088058ADB8AD613D6C338CAD79AE8688D5441F6EDF061A8FA322275BF9DC37CB93F600B1E987B6E111650AE2E6B53570CD37A6CF331D1081F6769CD8F31AD8A063456E0EAC26F9C44F7B8058B3C59AAF';
wwv_flow_imp.g_varchar2_table(18) := '05ABEE4651D5CAE9CAD1D0BF5F7AEF003A0FBD8719191998EB9A7AC43BD501A63540ACE96A1B1951C6796EAC5F9F6AED39FC519C7A652B86FBFC58949B638AA62CAD013A3712403016C3F2FAF5B0BBB9B7377180C06F32DE7301C7763423DB664359B68B';
wwv_flow_imp.g_varchar2_table(19) := '3F239D2CD316203658D8191845F1C285287BF0ABB541F6DCEBBBE0EF38870539D986CFE4A72D40EDC32318A714554F6F80C595ADD3EF3135D944878670F4E5CDCA7407FB2A33F2494B80D8FCD6D9E111CC5E528979F73F60A4FEDCBEBBF7BE819E33A7B1';
wwv_flow_imp.g_varchar2_table(20) := '38370776033FEBD312A089E98A9BD63C8CECF20AD585E83F7210BD274F221A0EA378E162CCBEE71E101BDF1A1E391AC1C5FD6FC3D7DE0E9BDD8E599537A3B08ACDB9A97B46DACFE2E49EDD2871385064E008755A02D43E1250060F57FEE8C7AA01183E73';
wwv_flow_imp.g_varchar2_table(21) := '1AA7F6B21B18FEF09456AD44C9AABBD595F855A97ADED987EEA35FDCD059F9D06AE454A83B2E9246C238B4F1E7C8B25A94BE90514FDA01C4060E4F5D1E42515939163CBC56B5EE531578C1BC795858F3A8EA3C26273CFBEA0E0C5CF8441390ED3B5BD0D7';
wwv_flow_imp.g_varchar2_table(22) := 'DD85A533F20C1B584C3B80D8B2D44F82635872DFFDC85B7A93EAC2F71F3E887307DEFD42FAE28A85287B88EF0BAE63F76BF09D6BFF427E15ABEE49A8191B3CFE21CEFCCF7F2B8BCF8C5A0E9B76005D0C8EA13F1CC6EDEB9F404661916A806281617CF8CA';
wwv_flow_imp.g_varchar2_table(23) := '56444221C5868060D9A38F22EB86B9AAF3989C3078BE1BC75B5A40AF5C596A77646159C37A58B37354E717EAEDC107CD4D28CCB463569631F7D3A41D40DDA3A3606B9CAB9E79165667627D07B68E39D8D58558248CDCB272CD9FFFB1C008863B3B61CBB4';
wwv_flow_imp.g_varchar2_table(24) := 'C3559AF8FAEAD8C8308E6CDE84BC8C0CCC33686A23ED00621DE8B1580C773DFF67C0577C6F1695E338F8C2BF2883894675A4D30EA0D343C320F64C2CFFE173AA9B0A33277C7FE38B9062712CCE53DFF4E9F93E6907D0F1C121641714A0F271DD6E2DD2B3';
wwv_flow_imp.g_varchar2_table(25) := '3C12CEEBF8CBBFC2F8D06554CEC84BD8560F83F404283F1F954F3CA9877E86E77162CB4B085E1EC44D02A0D494C599A111C8362B563CF763D50E237D7EC4AFEC0D536DC499D062B325F4757864E30BB0C665657987114FDAD540134B38EEFCC99F8258A6';
wwv_flow_imp.g_varchar2_table(26) := 'DF2E3376BE1B1FB678535A36B778BE8FAC39D30F0FB0E990433F7F112EAB15E5068D46A71D40132B10AB7EF08CAA319789B19682B272B897DF9E54907CFF7714FD9D1DB8B5AE1E8EE2E9373146872FE3FD5F6D36748562DA01D4333686BE5018B7D53720';
wwv_flow_imp.g_varchar2_table(27) := 'D35D322D1072681C87FE6D238A162FC692BFF9DB69D36B4970F21F7E8AFEF636ACFCD1F3906CD3EF8F1FEBE9C1873BD8406226666539B4B8E6B64D3B802E8723381F0C62D1B7FE18F9CB6E5125DC892D2F63747808F7FC6213489236F8C9C120DE7DEE59';
wwv_flow_imp.g_varchar2_table(28) := 'B858077FBDBABB87FB8F7D80B6B77FA70C22B2C144239EB403E8F3C9D4D2322C78A44695E6BE830794ADC66CEC28FBCE6FA8B24934D1F0BBFB716CD32FB160D52A1455DDA9CABCADF5550C7C7C1E4B67E42ADBA08D78D20E2026321B8D0EC565DCC19673';
wwv_flow_imp.g_varchar2_table(29) := '58A76F2A2203FD38FAEB97E19C998FEC92E99B3D9E821CE9B988B1CB97B1BCF129553B625907FAF0C67F85D36231AC03CDDE332D01E25950D6B6D38BFEEE6E1E3654DB149695A342E5129340FB599CD8B35BE9FB18B96F3E2D01E259D21A1D19C6D1CDFF';
wwv_flow_imp.g_varchar2_table(30) := '018B45C2E2C58B9161B7AB06E37A09C3E130CE9C39034A24DCFEE453AABE0C597E6249ABC1A7B42A8BEA65192B9EFE01ACD9B9AA60186E6FC3A93DAFC39195858A8A0A5835AE458EC5E3686B6F47686C0C892CAF65B3F8EF6FDE04C7955DAAAA824F52A2';
wwv_flow_imp.g_varchar2_table(31) := 'B4AC81989613DB7A662FADC4BCFBD42FACF71F3D8C73EFBC03479613A5A5F391C9591385C26174767523341644C5BDD5285CBE42751177BFB5173D1F9D52F685B1FD61463E690B10137D62547A45E393B0CD2C505D0EBEC307D171E05DE53086B9B36F40';
wwv_flow_imp.g_varchar2_table(32) := '7EFE4CD5B62C61FFC0203EB9780134164BE8AB8BD946FAFB7074EB1643479F27BF6C5A0334B1B5D95DBE00E56B1E4908824057274EBFB11BB16854A98D0A0A0B90979B079B75EA9333A2B138868687D0DFD78FF1B120AC19362C7D700D9CF34B13F2DBBE';
wwv_flow_imp.g_varchar2_table(33) := 'AB157D5D9D626BB3594EAA9F58A158F9DDEF2167F192840A33361A40EFA1F770E1C409E54C68F6D83333E1B0672233C30AF65FE1680CE3E110C2134B6109C19C9B6F41F1CA95B03A13DB9A3C74FA143E7A73AFA12B10AF1628AD6B2026063BD6858D0BB1';
wwv_flow_imp.g_varchar2_table(34) := 'D3E597791E55358979B588B191215C6E3B8B81CE2E0C5EB5D36222EDCC1BE620BFAC0C790B17C196A3AED33ED94FF0FCC7F87DCBABCAA19B0BC5F12EE6BA2B8335650C22AB3D03B7D637C09A97589FE64B400547111F1D5596CC5AB3B26049B0A6B93ABF';
wwv_flow_imp.g_varchar2_table(35) := 'C8E08072C0941C8D624176361CD7682613AA3E754A9CF635D0848E1347DC3973F350B9AECE3447DCB113EE8F6F7F0563230171C4DD446199F5B69E2F1CB2B9B606F682429D7EA77CD9B0A3ED3EDAD5AADCB5210ED99CA4A159016221B2535A1948EC13BD';
wwv_flow_imp.g_varchar2_table(36) := 'F27B0F26B4779E0F93A9ADD8A0E5477BDF50CE45342B3C2C72D1844D517E6CDF185BF2C1AE3A285B79178AEFBA2BA5078DF71E78175D870F29571DB0A51A39060F165EEF872100BA863A6CBE8C5D75C0AE3CC82B72637E7535F72E54B53513FBD2EADEBF';
wwv_flow_imp.g_varchar2_table(37) := '4F39C28E1DA6C9469A8D3CBA454DDC02A0EBA8C4AE3A604D5A7F28AC6C41CE9F3B17F3EFA9D6FDB29590DF878FF7BDAD1CB6C0B64C1764DA51ECC81497AD5CAB6CCCDC079A2A66761BE185E018466331E5CF6CD945E1C245C85950AEE9BAA7404707FADA';
wwv_flow_imp.g_varchar2_table(38) := 'FE70DD139BD79A9DE5307DAD3359235103A9A9A7AFA4617D23B6A67AF285730573E722BF62119C25C52A2F9CEB455F7BDB972E9C63872398ED147A35D20880D4A874551A76B22B8349CB9597ECB47956E3882B2F390AE0ABD6845DEF15D95408832922C7';
wwv_flow_imp.g_varchar2_table(39) := '116597ED8A4B775513C1BD8AFBEB04906AB5BEA6094513F6352DD854BD963100D5D5AE05416BAA5E52F849A2021435EEED2D3B793C703761FE06CFFD94D237799C0A1B7329400879A0689BF72D9EA8B801EA5DE7B95792E83E1EA7C2C65C0AC832A92E69';
wwv_flow_imp.g_varchar2_table(40) := 'F6EEE7898A1FA0FAB52B244847789C0A1B73292043AE2A69DAF9C503AF5586C80DD0C0BA9AA531899C54E9472433B102569956E637B79EE209911B205FDDDA3210A983C7A9B0319902542E776FDFD9C913153740FE464F318DD25E1EA7C2C65C0A101B29';
wwv_flow_imp.g_varchar2_table(41) := '29DAE2BDC41315374047376CB0CD090E8E0030DF3DD63C4AA4AF4DE813E7CC9CDB376D8AF248C00D107376A9A1761FA1B897C7B1B031870294607FF1B6966ADE683401E46BA8FDE9A78B6CFE8ED7B9B0338102047FEFDED6F253DE483401D4DB505B2D51';
wwv_flow_imp.g_varchar2_table(42) := 'BCCDEB5CD819AF804CF0CD926D2DDCE3799A00EA6A6CCCCC8A8E5E16FD20E341E08C20346673CD28DDB2E5B3DB67381E4D0029FDA0FA9A1D04E4FB1CBE8589C10A50D0DF1437B53EA6250C1D005ABB92403AA82508616B8C0214F29DC54D3B0F69F1AE19';
wwv_flow_imp.g_varchar2_table(43) := '20E6DC575FCB82507F59A8968885AD5E0A1C7637B5ACD49A992E005DAAAB7D8C10346B0D46D8A74E014AB1AE787BCB0EAD1E75018856575BFDB30BBA00DCA03520619F12052E165DEC9F4FF6EDFB6C8B8A8647178094CE745DED1A42F09A865884698A14';
wwv_flow_imp.g_varchar2_table(44) := 'A0325D5DDCDCBA470F77BA01C482F1D7D5BC4009F9891E81893C92A300A1F4C5A2EDADCFEB95BBAE00D10D1B6C7DC1CB0728A8FAD326F57A1391CFB40A10605FA173E67708E7BCD7540E74058839E87DECB1F99225760C8031D7EF4D2B63DA26F041B62D';
wwv_flow_imp.g_varchar2_table(45) := '733737FBF45440778094A6ECB19A5BA9053B01325FCF60455EDC0A7C0C125FE3DEB6EBF7DC395CC3302900315F171E7F24DF16B7EE00E8B7F50E5AE497800214FF1BB5C61FBD61EBAE8104AC54274D1A402C02EAF158FC1974E3A71F69CFAA8E4824D453';
wwv_flow_imp.g_varchar2_table(46) := '817F2E8A90BF245E6F5CCF4C27E7955480261CF9EA6B9E05C88B008CB9102B59EA9937DF710AF2647193F737C90E312500B197E87FDC333B1EC79F50C84F139039C97EB134CDFF0228365BAC6473C156EFC55468903280265EE6B3660DAB3FFD607B06A0';
wwv_flow_imp.g_varchar2_table(47) := 'DF49E1B973A9D0D3081F7142C85E02FCB2208CB792D95C4DF5722907687210831E4F6ECC165F264B965B09A5B702B80DC08D00A6BF8AD988A232DE279B7A380D8A6394E0984526C7E0087F50F8D2EE8051A1190AD0B55EBAEFA9D5D954B63B29959C8847';
wwv_flow_imp.g_varchar2_table(48) := '5C80C50910278DCB69B1809F58A4104083403C084BC62821729048E1A091A05CABAC4C099051BF26E13771050440896B262C26292000123868524000A4493E612C00120C68524000A4493E612C00120C68524000A4493E612C00120C68524000A4493E61';
wwv_flow_imp.g_varchar2_table(49) := '2C00120C68524000A4493E612C00120C68524000A4493E61FCFF65F65DFACC7BA5470000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64580087077312048490)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE9000016B449444154785EED5D7970556596FFBD7DC97B2F3B842004B282847D9145686D5BBB1DA715951E17D09E2E97B69DB6ADA9997F';
wwv_flow_imp.g_varchar2_table(2) := 'BBAAFF9FA9AE1A47DB6EA59C1915DB5119DA85D2EA855659C31644A0C90E0102647B792F6F5FA7CE7D0B0F48E0BEDC9B907CF77C552931F9EE77BFF33BE777BFED9CF3E92E6FDE9404174640A308E898001AD53C8B2D21C0046043D034024C004DAB9F85';
wwv_flow_imp.g_varchar2_table(3) := '6702B00D681A012680A6D5CFC23301D806348D001340D3EA67E199006C039A468009A069F5B3F04C00B6014D23C004D0B4FA59782600DB80A6116002685AFD2C3C13806D40D308300134AD7E169E09C036A0690498009A563F0BCF04601BD034024C004D';
wwv_flow_imp.g_varchar2_table(4) := 'AB9F856702B00D681A012680A6D5CFC23301D806348D001340D3EA67E199006C039A468009A069F5B3F04C00B6014D23C004D0B4FA59782600DB80A6116002685AFD2C3C13806D40D308300134AD7E169E09C036A0690498009A563F0BCF04601BD03402';
wwv_flow_imp.g_varchar2_table(5) := '4C004DAB9F856702B00D681A012680A6D5CFC23301D806348D001340D3EA67E199006C039A468009A069F5B3F04C00B6014D23C004D0B4FA59782600DB80A6116002685AFD2C3C13806D40D308300134AD7E169E09C036A0690498009A563F0BCF04601B';
wwv_flow_imp.g_varchar2_table(6) := 'D034024C8071527F3C994420164324914034FD138927904826114F02F4F7583221BDDDA8D3C3A0D3C1A003F43A1DCC063D4C7A3DCCFAD47F0B8C46E9F75CD4478009A022A6E1781CDE6814DE4814FE581C492455695D071D0A8C06B8CC26B84C26580C06';
wwv_flow_imp.g_varchar2_table(7) := '55DAE546002680422BA0AFBB3B1C813B1241281E57D89ABCC76D06038ACC66145BCCD208C165EC083001C6881D19FD40380C7F2C366A0BAED252D8CBCA60292880C96E87C9EE80A9C00E83CD065341010C36BBF46C3C1840D4EF472C10402C104434E097';
wwv_flow_imp.g_varchar2_table(8) := '7EC27E3F7C7DFDF00D0E8CFA0E9A1E95592D1221B8E48F0013204FCCC8F02F0743082746FEDA17CF9881F2BA7A14D5D6C258549267EB23578FBA0730D4D18EFED656B82F5D1AB192D560C0749B95899027E24C0099800D4522B818084A8BDADCA2D3E950';
wwv_flow_imp.g_varchar2_table(9) := '3A7B36CAEAEAE0AAA985B1C029B3C5B1558BFB86E1E968435F5B1B06CE9D039257AF339808F9E1CA04B8095EB493732110947674728BC962C1DCD56B50B27021F4666B7EA8AB543B1E0EC1FDED7174351D40341CBEAA559A1ACDB4DB6133F282F9467033';
wwv_flow_imp.g_varchar2_table(10) := '0146418716B73D8120E8CB9F5B0C4623662F5F81E92B57DE32C3BFB6CB897008BD079B70B6F928E2D710B5D86CC60CBB8D17CBA3E899093002309E4814DD7EBFB4679F297A9D1EB72D5E8CCAD56BA0B717A8F40D57B799986F1817F7EFC3F91327904C9F';
wwv_flow_imp.g_varchar2_table(11) := '31D01BE80CA1CA51206DA172B91A0126400E1E64EE34CFEF0B85AEFC56A743E5BCF998B9761D4C854553C27EA2EE419CDFB30717DB5AAEEAEF34AB551A0DB8E4A8F7F2E64DEA9CD64C7154E96B7FC6E7C770349A9584E6F90B1E7C08F6595553523A5F67';
wwv_flow_imp.g_varchar2_table(12) := '074EEDFC14B11C996814A0D1804F96532AE51100402C9944977718819C832C5769191A1E7E042657E19434FE4CA763438338B57D3B7C9EA1AC1C768301735D4E18D9BD8209408BDD0EAFEFAA7DFDE9B575A8BEFF01E804993327A36174ECDC89DECE8E2C';
wwv_flow_imp.g_varchar2_table(13) := '092C7A036A5C0ECD2F8E353D02D09E7E9B6738EB94069D0EF5EB37A06CC54A1A1CA7F497FFFACE27D17B603FDAF7EDBD32C5D3EB51E7726A9A049A25004D7BDA3CDEECC1D6549FEFCB656BE06C174E7EFA31A291D45A874682DA42ED4E873449007245EE';
wwv_flow_imp.g_varchar2_table(14) := 'CC99F393F12F7972334CC5A572ED684AD78B0EF6A3F9BD6D88A5CF38684D50E3726A7261AC3902D096578777F88A139B4E87A58F3D0E5BE56D53DAA8F3EDBCBFFB0CBED9FE51D695C26134A2DAE5146EE277335C3447800BFE00FA73DC06EAEFBE07654B';
wwv_flow_imp.g_varchar2_table(15) := '97DD0C2721FF3E70F4305ABEFC6B56B672AB15951A3B27D014012858A56BD89755F8CC058DA8FAFEFD421AB75CA1CE7EB113174E9DCA56AF763AE01464F74B0E069A21006D77B678BC52282295A21995B8FDB127008D07942413719CFEFD7B705F4EB959';
wwv_flow_imp.g_varchar2_table(16) := '53786643914B3367049A21C0199F0FE4E343C5E67462F1D33F86DEC26E0184473CE0C7F16DEF20383C2CE1430E74B31D93D3DF49CE573D9F3A9A20802F1A43475AB90693094B9FDC027369593E38095F37DCDF87E66DEF22114FB97DD7BA9C5230BEE845';
wwv_flow_imp.g_varchar2_table(17) := '7802D084A765C89B3DE9AD5BBF01E52BEF105DAF6392AFB7693FDAF7EE919EA5C09AFA4297F0BB42C21380C2172F058392524D162B563CFF82302E0E63B2F21B3C442E13877FF75B44D3E703B423443B432217A109400BDE53439EAC5F7FFD86BBD26E0E';
wwv_flow_imp.g_varchar2_table(18) := '22AB54996C7D070FA06DCF6EA911CA5534BFA850FAAFA8456802D0979F46002A169B1DCB9EFF297406F1E7B54A8C35198DE0F01BBFCD8658CEB0D930CD26EE28202C01C8BF9FBEFE996DCF86BBBF8BD2A5CB95D886669EED3F7C10AD5F7F25C94BDBA2F3';
wwv_flow_imp.g_varchar2_table(19) := '8B5CC2BA49084B008AEAA2985EFEFAE7CF5B1A058EBCF13B44C2A9D19382EB29F790884558029CCED9F99977CFBD2859BC4444FD8D9B4C03470FA1E5CB2FB33B420D85AE717BD7AD6C584802500A93366FEA508782D957FDFC25E84D9C392D1F434B44C2';
wwv_flow_imp.g_varchar2_table(20) := '687AEDD56C707DBDCB25648A152109D01308A02F94CA9353563507F58FFE281FDDDFB02E25BCBDB4FB6BF47574C0EFF5C0E12A44595D2D66ACDBA0DA3B6ED6D044F5A1F5A3FF457F77B7D41D511DE58424C049B7271BE5A5F6F4E7D4B6B73174F9F27536';
wwv_flow_imp.g_varchar2_table(21) := '5A545181DB9F7CEA66B6ABCADF27AA0F83CD4771FAAF7FC92E8617144FEDF8E891C0178E0094ACB63D3DFD2181573DF753189DEACC5F734F4A4702B37E0385538EEF29F344F621E6F5E0E0D637B2A252F8A45D30F708E108907BF25B386D1A166CF9B12A';
wwv_flow_imp.g_varchar2_table(22) := '5F5D6AE4E4BBFF034F6FEFA8ED15575460FE388F0213DD87136FFF17BCFDFD92CC229E09084780CE615F36B74FCDDAB598BE7A9D6A04D8F7EB7FBB615B145AB9F29F7EA1DAFB466A68A2FB7069EF6E74361D90BA423985E63A1DE32ADF44372E1401C8F1';
wwv_flow_imp.g_varchar2_table(23) := 'ED847B28EBFAB0FCA9A761299FAE1AA6A3CDBD332F107104085DEAC1D1F7B649225232AD85C553233B9E5CA50B4500BAA185825EA8581D4E2C7BFE05B938C8AA97EB2733F21AE03B285BB14A565B63ADD4DB7400ED7B53BE3A13D58723AFBF86703020BD';
wwv_flow_imp.g_varchar2_table(24) := '6E5EA14BA82B9A84220065723EEBF34B8A9A5E538B9A871E1EAB9D8DFADC68737029C2EC89CDAABF6FA40627BA0FED3B3E426F5797D495390E070ACDE224D9158A00B90BE0AAC54B30F39E7B553748690F7EEF6EF4B5B54B5717394B4AA573808A75EB41';
wwv_flow_imp.g_varchar2_table(25) := '97D94D4499E83E74FFF17329E33415D116C24211A0DBE7972EABA352BBEE4E4CBB63CD44D8A3F0EFC85D089758CC9855204EB8A4500420F787CC4D2EF3EFFB3E8A1B17096F9C1321E0E0B1669CDEF567E955142649E192A214A108F0B7214F36D5E1A28D';
wwv_flow_imp.g_varchar2_table(26) := '8FC0515D238A9E6EA91CC3ED2DF8F6934FA43E502AC57945EA1C2CDE52A1D22F178A00B92E10CB9EDC026BC58CC980F194EF43B0E73C9ADFFFBD2407DD4B7C7B91382E114211E0DB9C3300355D20A6BC052B14203AE4C6A1B7B64AAD507864A340670142';
wwv_flow_imp.g_varchar2_table(27) := '11E09B417756D56BFFF95F001DDFA2AED0F6A5C7C935FAC0ABAF48FFA69DAE4525E21C86094580E38343A02D422A6B5E7A193A8E0150C3FE411162FBFFF33FA4B6443B0D168A00E4069189015EF9CC7353E6523B55AC741C1B890E0DE1D05B6FF222781C';
wwv_flow_imp.g_varchar2_table(28) := '3156A5E9DC5DA0A58F6F86ADB2529576B5DE48B0E7029ADF7F4F8281B74127B135901F10F9035169FCE14370D5D52BEEADFBC471B47FF5E57537B12B6E789C1B20CFD4DAEFDC8DE2C6858ADFE46D6BC1894F53DBA04566B374CBA42845A829105D7CE14B';
wwv_flow_imp.g_varchar2_table(29) := 'DF943EEF9EEFA164F152C57A3AFED656F886AE2CAE153738810D388A4BB0E827CF287E637FF351B4A623C3CAAD1654DAED8ADB9C2C0D084580F3FE0006D2975F54DFB15AF2CF515A5A3E7C1F03E7CE296DE6963C5F3A7B361A363DA6F8DD17F77E8DAEA6';
wwv_flow_imp.g_varchar2_table(30) := '26A91DD1D2250A4580DE600817D37940672D5C8859F7FE40B1F2CFEFFA13BA8F1D93DA59FED2CB704EF2C4BAC3079B70E4D5D48E4DD5B2659879D73D8A3138FBC5E7B8702AE50C47D31F9A068952842240AE3BF4B4B9D5A87DF851C57A1AFCE6284EFF25';
wwv_flow_imp.g_varchar2_table(31) := '1518DEF0770F60C6E313E3F23CD68E5F78EF1DB47DF1B9F4F8BCEFDD8B9245CAF321B57EF401FABBCF4A6DD6389D7098C4492F29140182B1385ABDA980188BBD00CB5FF899E2FB7E03E7CEE2D8871F486D96D5D5A3F197BF1AAB6D4EC873277EF54BF4A7';
wwv_flow_imp.g_varchar2_table(32) := '2FC4962EFF9B394BD97B93091CFACDABD94D000E885106E7B83E4DF9404FE664835EB6790BACD395F90325A2111C7CFD3748C4A2D0E974B8F395D760289C9C27A109AF075FBFF4A274F3235D04B2EAC59F2B4E061CE8E9C1B1F7532191E406B1A0B86882';
wwv_flow_imp.g_varchar2_table(33) := 'A21EC6D554B28D0B35029054B93B41D5ABD7A262ADF2A0F8335F7C869E537F93406B7C6233CAEE7F6062B493E75BFA3EFB04273F785F7A6A66E34254DDA77C0D94BB0016F1EA24E10890BB10769595A3F1E97FCCD38CAEAFEE3F4B77EA7E28FDC139AD02';
wwv_flow_imp.g_varchar2_table(34) := 'CBFFFDD78ADB54BD812470E45F5FC6705F9FD4F4927F780CF6DB662B7ECDF1FF7E4B8A7CA322DA029864128E00B97941494055BC4293091C7EFD354442A96CC993BD986C76ACFCD98B8AD73FD1610F0EBD994A8C454E7094194EB4CB32842300298BEE05';
wwv_flow_imp.g_varchar2_table(35) := 'A06B51A9A8752076F9C07E74EC4BDD9F35D94BCDBAF5987EC76AC5DD1C3876042DBB76A5463E93097487B068454802E426C72D9F3317758F6C52ACB7643C8EE6B7B622349CDA659AACC5E67261C94F9E85CE6050DCC5D6ED1FA0FF6C6AFBF3B6023B4A2D';
wwv_flow_imp.g_varchar2_table(36) := 'E2DD1120240172B743293DFA1D2FFD023AA3F2541EDE8E769CF87847764A505F5F8F825BEC17E3F3F9D0D6DA9675035FF4C8A370CCA9566CFCB4FBD5F4EA2B48A62F16A728308A0613AD0849005252EE05190D777D17A5CBD4B91EA965C7760C74754A76';
wwv_flow_imp.g_varchar2_table(37) := '400E670DF5F5309B94936B2C8615894671BAB515B1B4FB47797535EA362A3FFCA3BEF41F3984D6AF521764D80D06D4F105196351D1AD7B26F78A24B3C58665CF3D07BD59F9104EB7AA7FB3ED1D84D2176FDB1C0ED4D5D6C1A89F989C401944638924DADA';
wwv_flow_imp.g_varchar2_table(38) := 'DB10F4F9A45FD99C2E2CDABC0506BB724F4DFAFA1FC9B9284F34FF9F5CAB147604A0C0188A0FC804C854AF59878A356B556164D43D88E66D6F2316894AED399C2ED4D5D64807651351685AD2D6DE015F7A3D62B458B0E4C92D301797A8F2FA8B7BF7A0AB';
wwv_flow_imp.g_varchar2_table(39) := '69BFD416EDFAD0F48722C1442CC2128094957B4D2A9D8CAE78E63955BE90D4B6FFDC591CFFE8C3EC1CD95E5080B973E6C262195F47B1703882AE335D08F8532920F57A0316D19E7FE54C55EC331E0C485B9F74F24D65BACD8A0A9B4D95B62763234213E0';
wwv_flow_imp.g_varchar2_table(40) := 'DA8BB2D5F28ECC28D2D3DA82939FA50245A8E88C4654CD9A8592E2E271D1F5C0A01BDDE7CF21998E79A0972C7C70239CB575AABDEFDCAE3FE3DCB1E614B9D25F7FD1F6FE353105CA08993B0AD08ED08A679F85D1A95E5E9B707F2F4EEDD88160CEF66861';
wwv_flow_imp.g_varchar2_table(41) := '7131AA2A2B415313354A341C46774F0F3CEE2B8139F6C242CC7F68232C65D3D47885D4061D7C1DDEFA667654A32F3F8D002217A14700521CE588A0B540E6606CE6ED8DA8FAC1FDAAEA341E0EA17DE767183893CAA02C8D06D0A1A4A418C525A5708D3195';
wwv_flow_imp.g_varchar2_table(42) := 'A0D7EB857B70108383EEEC3627B55D36672E6AFFFE87AA2CEA7381E8DCF9192EB5A47C9ECC7A3DE615150AE5F83692D2852700099D1B2740FFBF78D38F50307B8EAA2420AA79DBDBD0B57B37FCEEC1ABDAA6F54799AB10B6023B8C6633CC160B0C46238C';
wwv_flow_imp.g_varchar2_table(43) := '7ABD44D0783C2EFD44C261C4221104FD01F47B3D884753F3F04C71969461CE863BE1ACAE55ECE670ADF0B9671CF437D1D2A08FA66C4D108084A78BF3E8023D2A64844B373F05934ABB2657819B4CC0D3721A5D7BF720E0F1A842B282A222CCBD733D5CF5';
wwv_flow_imp.g_varchar2_table(44) := '0DAA1B3E753042BB5AEFBC8D787AE1EB301A5133C6514B158127B011CD1080A640943522B32D4A79FD1B373F05DD381E62D157D5D3D581CB6DED88A46F5891AB5BB3CD8E8AFA3AB8E654C355435FFCF129B4E7FFEDBB6FC39F5E5FD082976E8517F1D457';
wwv_flow_imp.g_varchar2_table(45) := 'B353A08CE09E481467D20747F4BBE9B575A87970E3F858D635AD867A2FC3D7DD8D90C783A0D7231DA405BD43D0E90C20FF1D8BC3015BA10B5657111C5555B096ABB7B8BD91806D7FD88EBECED4C93615727823C737AD14CD8C0019855EA0F975DA75807E';
wwv_flow_imp.g_varchar2_table(46) := '5777E77A94AF52EE3939150DE6D2FEBDE8DCBF2FDB75D1529EC8D189E608408BCE368F17C174022DE87458FCE8A6715814CB81FFD6D5C90DF2A15ED8D2FE3E629EF78E8EB3E6084050D07A8016C59174CC0039B5912BC1B82C8A6F9D8D8FFAE6E8D0209A';
wwv_flow_imp.g_varchar2_table(47) := 'DF7D47DA71A2425B9E74EB8B56E6FDB9C06892000400193F9120733E402458F0D04655C20827A1CD67BB1438DF8D931FFF219BE5818CBE4EA3C64FA0689600239180A6430D77DF8DD225EAB84E4F362248290EBFDC25658DA042C64F5F7E1A01B45A344D';
wwv_flow_imp.g_varchar2_table(48) := '8091A643F4BB990B1A31FBDEFBA0D32B8FAA9A0C86954CC4D1FDA73FE2C2C95476372A74D7578DCBA1C9690F4F81AEB1CA5832894EEFF095853165419E518986871F86C13AB513C1C64301B4ECD881A18B3D59A929C065AECB09A3A02ECEF97C74343F02';
wwv_flow_imp.g_varchar2_table(49) := '64C0A203B233C3BE6C7669FABDD5E1C482471E85A5AC3C1F4C274DDD707F1F4EFEDF76847CC3D93ED129EF5CA74358FFFE7CC16702E4204633E38B8120289A2C53C8DF7ED692C5A858B55AB558827C95946FFD44C08F8B070FE0DCB16F9048A4EE4BA032';
wwv_flow_imp.g_varchar2_table(50) := 'CD6A4585DD26BC835B3E7831014640CB178DA1DBEFCFEE10511572689BBD6C19A6AD5805836572BA08C74341F41E3E8CEEA38711CF8919A0C5EEEC8202A192DAE663E437AACB0418051D9A12D16890B96F2053CD4437A4AC5A85B2A5CBA19F2497F0D12D';
wwv_flow_imp.g_varchar2_table(51) := '8E7D478FE2ECE183D9BDFD4C7FCB2C16E9AB2F72508B123230016E821E659AA38B37B227C7E9FA169B1D73D6AC46F1ED0BA037DF9A1181E210DCA74EE2CCFE7DD765ADA3935DCAE563378A93CA5C89A18FF62C134006AAB436E80F857029180265A0BEAA';
wwv_flow_imp.g_varchar2_table(52) := 'E874289D791B4A6B6A50585D0D5371A98C16C75E25E21E80B7B3137DEDED70F75CC8EEE967D72C3A1D2A6C569459AD3CD797013313400648992AB45D3A100A4BD3A2CC09F2B58F17B88A30ADA11E453535B0CDA8547E59773281604F0F863A3BD0DBD20A';
wwv_flow_imp.g_varchar2_table(53) := 'BF7768C41ED33C9F32B7955A2DBCBD99874E99007980955B75301CC66038920DB219AD19BAA8CEE22457E742589C4E585C2E981D4E989C2E181D8E544498CF87E8B01711DF30C25E2F42DE6184BC1E84BD3EF886AE8E2EBBF63DE4BA4C69CB8BC7391BC5';
wwv_flow_imp.g_varchar2_table(54) := '18619AF48F310114AA884602773802772492BDA2556193377CDCA8D3C365364A3EFB2E9389F7F31582CD04500860EEE3E460E78FC6A451817E3277162B7D85D560908CDD653649175573510F0126807A585ED7122D988904577E128827128827218566C6';
wwv_flow_imp.g_varchar2_table(55) := '9209697B92E6EFF4434E69A97FA77E97F97F51B3B28D23F4B29B6602C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B';
wwv_flow_imp.g_varchar2_table(56) := '8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C886';
wwv_flow_imp.g_varchar2_table(57) := '8A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002';
wwv_flow_imp.g_varchar2_table(58) := 'C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB211';
wwv_flow_imp.g_varchar2_table(59) := '6002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A8800134044ADB24CB2116002C8868A2B8A88C0FF0335E536881D008C720000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64580090395776048490)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED9D797415D79DE7BFF7ADDA85D627C422406217AB17BC25C14BDA7137984D328B84439CD8B133C98C933FBA';
wwv_flow_imp.g_varchar2_table(2) := '93CECC343DDD6792F4999EB8DB994EECC42B128B25B0C176ECA49318E30563C006B38B5D80D086F6A7E52D75E7DC27E921B0048257756BFBD5391C7C4CD56FF9DC5BDF5775EBDEDF65A083081001DB1260B6CD9C12270244002400D40988808D099000D8';
wwv_flow_imp.g_varchar2_table(3) := 'B8F12975224002407D8008D8980009808D1B9F5227022400D40788808D099000D8B8F12975224002407D8008D8980009808D1B9F5227022400D40788808D099000D8B8F12975224002407D8008D8980009808D1B9F5227022400D40788808D099000D8B8';
wwv_flow_imp.g_varchar2_table(4) := 'F12975224002407D8008D8980009808D1B9F5227022400D40788808D099000D8B8F12975224002407D8008D8980009808D1B9F5227022400D40788808D099000D8B8F12975224002407D8008D8980009C0558DCF7FF090B7A5DD1B1F843BCEC99C6E6728';
wwv_flow_imp.g_varchar2_table(5) := 'EC0A8415579839DC0E4571399CDC05C549DC8C78D338C25C09B390E270849C5C097A9C8E50D8E50C857938E846B07B44724F177BF69D1E2386AE574CB6ECC875CB97E7C3199E05C667016C16803C00D90072F56A08F22B95400D807A006701BE1F9CED07';
wwv_flow_imp.g_varchar2_table(6) := '947DBEF55B4E498DC200CE6C2100F5AB8A6773075F08CE1E00F82D00120DC09E42301E013F67D803057F628EF09BBEB2D7F71B2F447523B2A4001C2A2EF664B99507B8030B38C7020636465D6C64CD26044E33CEB7298CBD7929C03E985E5111B05ADE96';
wwv_flow_imp.g_varchar2_table(7) := '1280FAD2E20285F3C718F0288051566B2CCA4757021718C72B70B097B2CB2A4EE81A898ACE4D2F00F5C5C549F0288F70C6BE058E7B546443A688C050043E609CBD88202AB32B2A3ACC8CC9D402505752BC04E0FF0460BA991B81623727010EEC659CFFD4';
wwv_flow_imp.g_varchar2_table(8) := 'B77EF31FCC9901CCB93BF0C5D2A2F90ECE7E06F03BCC0A9EE2B61201F689C2F84F4696556E375B56A67A02883CEE7BF96F39C70AB381A6786D41A08C05D853667A2D308D00D49516DD058E750026D8A22B5192E624C0F84987E2589EB5BE62AF19123085';
wwv_flow_imp.g_varchar2_table(9) := '00D495163D0A8EDF02F098012AC5687B0201303CEE2BAB7CD5E8240C2D001C600DAB8AFE9933FCBDD141527C44E06A020CF8E7ECF2CAFF616432861500319927D3C33700586A6480141B11B826018E571B83EC71A34E2232A400F0F9F35D0DA3325FE7C0';
wwv_flow_imp.g_varchar2_table(10) := '02EA5E44C00204B6655F685CC6B66F0F192D17430A405D49D17A002B8D068BE22102311028F39557AE8EE17A4D2E359C00D49516FD1C1C7FA749B6649408E84980E117BEB2CA1FEB19C220E314C609A7B6A4E86906FCD23811512444405D021CF8614E79';
wwv_flow_imp.g_varchar2_table(11) := 'E533EA5ABD796B867902A82B597A37E0D801C071F3E9D09544C0F004C24C61F3B337547C6884480D210091117FAF72189CE51B010AC54004342670A231C0A61BE1CB80210480DEFB35EE6E64DE78040C321EA0BB00D4AE5E52C814E73E004EE3B5124544';
wwv_flow_imp.g_varchar2_table(12) := '04342310E6607372CA2B0E68E6611886751780BA92A237002C1A46AC740A11B01A81ADBEF2CAC57A26A5AB00F42DF0F9484F00E49B08E8498029EC2B7A0E08EA2B002545E2E6BF4BCF0620DF44404F029CE1FD9CB2CAF97AC5A09B00D4952E5B0CCE5ED7';
wwv_flow_imp.g_varchar2_table(13) := '2B71F24B048C428031F6507659C5BB7AC4A39B00D496166D671C5FD32369F249048C4440CFA7005D04A066D5D23C27739C86494B9219A9F3502C9620C0B983E5E7ACAB10F784D4431701A82B2D5A0B8E7F909A293923024626C0F08FBEB2CAB5B243942E';
wwv_flow_imp.g_varchar2_table(14) := '00A2C8477D4991503AB11D171D448008F412389D5D5E99CF002E13887401A82D597A078363A7CC24C917113003010EE5CE9CF22D9FC88C55BA00D0B45F99CD4BBE4C454087D700F9025052BC0F10BBF2D2410488C0550476F9CA2BA5EE752155001A56AC';
wwv_flow_imp.g_varchar2_table(15) := 'C8559CA1F334FA4F1D9F080C4A80BB032C2DBDA2A255161FA90250BFAA780D67FC2559C9911F226036029C6365CEFACA8DB2E2962A00752545BF01F05D59C9911F22604202CFF9CA2B9F9415B76C0110239CF36425477E88800909481D079026007CED5A';
wwv_flow_imp.g_varchar2_table(16) := '47FDF183622BE57813360A854C046411E8CC9E5898CCD6AE556438942600F5AB8A6773C63F979114F920026626E054F8D4CC0D9B8FCAC8419A00D4952C7B1260BF969114F92002662620732050A200D000A0993B25C52E9180C47A811205A0F85D803F28';
wwv_flow_imp.g_varchar2_table(17) := '1123B92202662520AD54984C01A0198066ED8E14B764026CBFAFBC62B60CA71205A0A816804F4652E48308989C409DAFBC3247460E520460EDDAB58EA78E1FEC01E0929114F92002262710CC9E581827E353A014016878ECE164A5C7D366F246A1F08980';
wwv_flow_imp.g_varchar2_table(18) := '3402E1B69EC4DC37DFECD4DAA11401685EB3784420E86AD63A19B24F04AC42C0E30EA5A5BDFC468BD6F9481180DAD54BB299E2ACD33A19B24F04AC42803BC2BE9C75AFD76B9D8F140168285D3A52E18E1AAD9321FB44C02A041C4CC9CD2ADB7251EB7CA4';
wwv_flow_imp.g_varchar2_table(19) := '08C085158BC6B89CEE6AAD9321FB44C02A0442E1E0D8511BB79ED33A1F29027071C5E2710EA74B7AC963ADE1917D22A01501251C1A3F72E31B67B4B2DF6F578A00D47D73793E42E1135A2743F689806508B89C05BE57369DD43A1F2902D0B87AF9D4B012';
wwv_flow_imp.g_varchar2_table(20) := '3EAC7532649F08588580C3E99C9CF5EAA62AADF391220035AB974F75920068DD9664DF4204C28EF0B4DC75AF1FD13A251200AD09937D2270130448006E021A5D4204AC428004C02A2DA9631E01454157288C9E70183D8AF85B81C239C29C43E14088F756';
wwv_flow_imp.g_varchar2_table(21) := '9D7231071C0C7032060763F03A1DF03A9C88733911E774C2E370E898853D5D9300D8B3DD6F3AEB10E7F00743E80CF5FD09872337BB1A87108504A713092E57E44FA2DB051793F2F6A846F8A6B4410260CA66931BB4B8C15B03415CEAE9813F1492EA3CD1';
wwv_flow_imp.g_varchar2_table(22) := 'E54286D78B548F3BF2D44087BA044800D4E569296BDDE1302E75F7A02910B8EEAF7C527A06E25392119792024F52325C71F1707A3C70783D7079BD80A220D4D585B0DF8F507757E4BF039D7E7477F8D1EDF7C3DF76ED459CE2E64FF7789011E78DBC2ED0';
wwv_flow_imp.g_varchar2_table(23) := 'A10E01120075385ACA4A473084FAEE6EB4078343E695E6CB417A7E3E468C9F00AF4FD45F89F5D799A3A7AE162DA74EA1F1C409B4360CBD3E25C5ED46767C1CC4D3011DB1112001888D9FA5AE168FF9E2C617EFF7571FE21738BBA00069E3272065FC0438';
wwv_flow_imp.g_varchar2_table(24) := '139334CD3DDCD18E969327D17CE634EA4F0E3EB9538C1364C7C5455E0FE8B83902240037C7CD525789D1FB6A7FE7A037FEC82953903DAD100963C68039F5F9C5E5A1203ACE9D43E39143B878F4CB65ECC593C098C40478E9D5E086FB2509C00D23B3CE05';
wwv_flow_imp.g_varchar2_table(25) := '6270AFB6AB0B8DDD01700C18C9670C23274FC2E83BEE823B3DD35009072F35E2FCCE8F70B1EACAD9AB0C0C59715EF8E2E368B0F0065A8C04E0066059E954F1987FB6C30FF10D7FE09133793246DF79373CE919864E5708C1D90F76A0FED495EB58C4BC82';
wwv_flow_imp.g_varchar2_table(26) := 'BCA444C4BB68A070380D4802301C4A163BA7BEAB1BB55DDD57FCEA276766A2E081BF427CEE285365DB557D16A7B6FF05AD8D8DD1B8C5D3406E423C32E3BCA6CA458F604900F4A0AE934F3189E76C7B073A060CF279131250F0D5AF2175DA741546F2754A';
wwv_flow_imp.g_varchar2_table(27) := '8C2B683E7400A73EF8103D5D97EB5B26BBDD91A70131F3908EC1099000D8A4678881BE93ED1D080E78E4CF1A371EF90B16C2E1B1C62FA5D2D385E3DBB6E1D2B9CB45A1C4F4E209C949344038443F2701B0810088EFFAA73B3AAE98CC5370F73DC89E7787';
wwv_flow_imp.g_varchar2_table(28) := '797FF5876A37AEA0F6E30F716AD7AEE819E209605C521292DCFA7CC530721723013072EBA8105B734F00E7FC9DD1F77D077360FAC30F23397FA20AD68D6BA2EDD8111CFAFDEFC1FB1622897181B1490918E1F11837681D222301D001BA2C974D3D3D919B';
wwv_flow_imp.g_varchar2_table(29) := 'BFFF602E17662D5D8684D1636585A0AB1FFFD9D338B8F50D84078C798C4D4C449A9744A0BF61480074EDA2DA396F0B0671BABD23EAC01B9F80C26545F066DB6BDBC4EEDA1A1CD85C89608FD8314E4C5866189F9C0831404807400260C15E2056EC9D686B';
wwv_flow_imp.g_varchar2_table(30) := '8F66E6F67A317B5529DC69E916CCF6FA29052E3560FFC60D511110D39AF39393224B8EED7E900058AC0788157CE2E617C538C4E174BB317BC54A78B3ECF5CB7F75B3765FACC1FECAD710EE5BE024060627A624DBFEEB000980850440DCF455AD6DD1D97D';
wwv_flow_imp.g_varchar2_table(31) := '62C06F6671B16DDEF9AFD794FEEAB391D701A56F6050CC1A9C949A6CEBA9C32400D7EB3526FA7731B5B72510E88D9831CC58B408C913AC3DDA7FA3CDD35E751407DE7A337A59BAD783318989376AC632E7930058A429C5E7BE6ABF3F9ACD84797720E7EE';
wwv_flow_imp.g_varchar2_table(32) := 'AF58243B75D3B8B8E33D9CDEB3276A54CC16B4EBE741120075FB962ED6C414DFA32DADD1F7FED4AC6C4C2F5D0D302AB239588370258C43EB5E45DBA5DEF503623C60CA88545BD61F2401D0E59655D76975871FCD7D8FFE62D06FEEEA35708F18A1AE138B';
wwv_flow_imp.g_varchar2_table(33) := '590B345DC2E765AF46E708D8F5558004C0E41DFBEA4F7E93EFBD1719736E35795672C26FDCB30B553B76449D89AF0276FB34480220A7AF69E2457CE813A3FEE2D39F3852323251B8FA9B00D5D71F1E6F45C1172FBF848E96A6C8F9F14E2726A6A6C45CDD';
wwv_flow_imp.g_varchar2_table(34) := '7078CE8D7116098031DAE1A6A2B87AAAEFDC9252C4F946DE942DBB5ED479FE3CF6BDB6219ABEDDA60A930098B8E71F1BF0EB9F3B751AC63DF43726CE46BFD0CFBCB50D3555C722018892E3935353F40B46B2671200C9C0D572272AF89EE9E89BEBCF18E6';
wwv_flow_imp.g_varchar2_table(35) := '3DFE5D389392D5326F2B3BC1D666EC7EF105A06FF6A4A81F6097B502240026EDEAC75BDBD0D9F7EE3F6ADA34E47D837EFD6369CA814F01492E17F253EC21A62400B1F41A9DAE15053D8F0F58EC73DBB7BE6DDB853E6A3541A0A11E7BD6BD1235372925C5';
wwv_flow_imp.g_varchar2_table(36) := '1685454900D4EA4112ED9CF77746F6E91347F6F8092858B24CA277EBBA3A56B1295A4E2CD3EBC5A8C404EB26DB97190980C99A58D4F23FD4D21A2DEF35E3E145482E9864B22C8C19EEC075026276E0F4B41196FF24480260CCBE38645462B18F58F4230E';
wwv_flow_imp.g_varchar2_table(37) := 'B1E9E66D4F7E4FF51D7B946000E7FEFC67B45C380F7F6B0B92D3339135793272EEBC4B175AB51F7F8486AA2AB4373522317504D2C68CC198FBEE0773A95BD4838743D8F3EB5F2118E8DD1351D411B4FAB6632400BA74E99B772AAAFC886A3FE218337316';
wwv_flow_imp.g_varchar2_table(38) := 'C63CF057376F6C902BC33DDD38B4BE1C1DCDBD9363061ED9F9052858B444557FD7337662EB16D49FBC72F30F718DD8C7A070E52A30B7BA158DABFFF80ECE1F3C18094B2C10120B85AC7C900098A875C5CCBF034D2DD1029F7356AC447CEE68553338BEA5';
wwv_flow_imp.g_varchar2_table(39) := '120D674E0F6973E257BE8AACDBE6A9EA732863F59F7E82131F7E30A4AF91932661FC8245AAC6D279EE2CF655BC16B1292A07155AFC35800440D5EEA3AD31B15DF7A9BE3A7F2E8F07B77FFFBFAA5AD63BD8DC84DD2FBD70CD24DCDE38DCF65F7EA06DA27D';
wwv_flow_imp.g_varchar2_table(40) := 'D6773DFB4CB482CF500E6FFFCE1370A5A4AA170F57B0EB57FF1EF55B90926CE96DC84900D4EB3A9A5BBAD8D915D9BE5B1CBE8289C87F78B1AA3EDB4F1CC3816DDBAE6BF3B6EF3C01B79A37DD201E83AD2DD8FDC26FAF1B8B1683A0039F8272E2E3231B8E';
wwv_flow_imp.g_varchar2_table(41) := '5AF520013051CB8A6FFF620E803826DF771F3266DFA26AF45D35E7F1F9C6CBF3E287327EE77FFBA1EA038F57FB125B82EFFCF767AE9BDF9C152588CFCDBDEE79377242E39E4F51B5E3FDC825569F14440270233D43C773C5E7BF03CD2DD1086E5DFD4D78';
wwv_flow_imp.g_varchar2_table(42) := 'B2B2558D488CFEEFF9CD7F20D437C83898F1B4DC5C4C5D51A2AADFA18C1D2E7B152DF57543FA8A7C0579E22930954B7C8B52E29FAD2F8FF81565C40BD3522D5B379004404A578EDDC9C075FFA2D8E71D4FFF50938A3F97F6EDC5B1BFFC65C88065AE38EC';
wwv_flow_imp.g_varchar2_table(43) := 'AAADC1E77D37E260014DB9FF01A4CF9A133BDCAB2C888A413B9FF9BFD1FF6BE53A012400AA771F6D0C0EACF99798968E59DFFAB6368E005CFCE07D9CDEFDE915F65D1E3726CEBF0F69853335F33B98E1E683FB51F5DE7B5F1A0C1C7FDB6D18F995F99AC5';
wwv_flow_imp.g_varchar2_table(44) := 'B2EF85E7D1D9DA1AB16FE59A8124009A7521750DD77675A1AE4BBB01C0ABA31525B3BAEAEB10F4FBE14D4D41C2C851702626A99BD430AD85FCEDE8ACA941A0AD0D9EC424C4FBB2E14ECB18E6D537779A5D060249006EAE7F48BF6A60DDBF09B7CF43CE3D';
wwv_flow_imp.g_varchar2_table(45) := '5F951E839D1CD6BCFF179CD9BB3792B295EB05920098A4579F6C6B4787865F004C82415A988D7B76A36AC7F6883F2B7F09200190D6A562733470FDFFF46F3C84D46985B119A4ABAF49A0F9E01738F2C73F44CE118542C540A0150F120093B4EAD19636F4';
wwv_flow_imp.g_varchar2_table(46) := '28BDC53FB598FC62120CD2C21CB832D0CA65C24800A475A9D81C1D6A6E45A86F4FBBD9C58F20614C5E6C06E9EA6B12F0579FC1FECA8AC8396E8703D346A838DDD840EC49000CD418D70A657F5373F49FE7AE2A455C0E55FFD5B2E9BA2ED6E0F30DBD9381';
wwv_flow_imp.g_varchar2_table(47) := 'C4A2A01969D6DC68850440CB5EA4A2ED2F06AC02BCA56435BCBE1C15AD93A9AB09745E388F7D9B7AA7458BD98033D3490062E9252C968B877B6DCDEAE5539D4AF8F070CF37D379079B5BA27BFFCD7E64396DF9AD71E3B51D3F86836FF62E8C723107A6A7';
wwv_flow_imp.g_varchar2_table(48) := 'D12B402CC8490062A107E0484B2B028A12B13273C952248DCF8FD1225D7E2D028D9F7F86AAF7FE1C39C5E370602A8D01C4D461480062C2070CDC04A470C102A44C9A1AA3C5DECB95400F1AF6EE416BCD0555ECE96524357734B26EBD150EB74795106A3F';
wwv_flow_imp.g_varchar2_table(49) := 'DC81539FEE8AD8125B864DB2E866213406A04A77D1DE88564B815B0E1FC2E1777FAF7D02123C14FEF502A44C514718CFBEFB0E2E1CEE2D0D46F300626F3C7A028891A1D80548EC06248E7173E72277FEFD315AECBDBC69FFE738FAE73FA9624B6F23531E';
wwv_flow_imp.g_varchar2_table(50) := 'F83AD267CE56258CAACAD7D0587D3662CBCAB501E9094095EEA2BD9181D580D4DC0BA0F37C35F6BDB62992803B2E0E9316AA5B634F6B32C7B66D45A8A77791949A83A3075F7D096D8D8D11BBD97171189910AF752ABAD82701D005FB8D3B1DB81370D288';
wwv_flow_imp.g_varchar2_table(51) := '34CC7CEC3B376E64902BC44ABB4F9FFB4DF45FBEF6FC8B6071E62881A5F8FDD8F1D4E3D1D8EF78F27B7024A853C577F7FF7B16C13E61B1F28EC12400AADC46DA1B195810048CE1AEA77FA45A41905DCFFE1BC2C1402489DBFFF62748289CA17D422A78F0';
wwv_flow_imp.g_varchar2_table(52) := 'EFDF87DDFFFA2F114BA25EC1EDDF7F5A05AB00B8828F7FF9AF515B54102476AC34061023C3AB4B82DD52FA28BCD9BE18ADF65E7E787D195A6A2F46FE7BEAD222F8162F55C5AED646EA3657E2C8D62D113769A34663EAF295AAB8ECBE5883CFFA66015249';
wwv_flow_imp.g_varchar2_table(53) := '305590CAD961C9CA138144330CFC123069FEBDC89C7BAB2AAD53BBF3639CDAF951C4564ACE48CCFD97CBBF7EAA38D0C208073EFBDB1FA1ADAE36623DFFEEAFC037EF0E553C5DFCF0039CFEF49388AD44970BA234B8550F7A053051CB0E1C08CC1A3F0113';
wwv_flow_imp.g_varchar2_table(54) := '55DA1434D8D686DDBF7B2E4A62DE4FFF27E2274F313499CE4307F1E92FFE7734C6DB1FFF2E5CC929AAC4BCFF85DF46B6441387950700457E2400AA74193946C49660626B307138DD6ECC131B8330872ACE8F566C44D3B973115BB9B36663ACCA7B0EA812';
wwv_flow_imp.g_varchar2_table(55) := 'E4002367B654A2F650EF77FA8CB16331B968B92A2E822D4DD8FDE2E5CD512624272159E5AAC3AA04AA921112009540CA3013E61C624D40FF3173591192F2C6ABE2BAE5C8211C7EC79C1382A6FFF5DF2075CA34553834EEDD8DAAF77B2B018943AC0214AB';
wwv_flow_imp.g_varchar2_table(56) := '01AD7A900098AC650796061B35AD1079DF7848950C945010FB5EF81DBAFDBD4F186639E2929231FBB16FC3A1D24EC14737AD47D385DE69D1E2975F3C0158F920013059EB0E2C0F2E5E036EFFDEF755DBA5A7B5EA080EBDF596A988142E58889449EA8C57';
wwv_flow_imp.g_varchar2_table(57) := '889D9177FDC7AF002EB661B57639F0FE46260130557707C4E7C0432DAD91BF238FA80F2F4272C124D5B238BAB11C4D3535117B2E970B53264F81C7ABCE029B58830CF40470F4D85184FA8AA3AAF9E94FC4D67CF8108EF4AD8B108FFDD347587747201280';
wwv_flow_imp.g_varchar2_table(58) := '587BA38ED79FF3FBD1D4D33B71276BDC784C5C5AA45A343D8D0DD8FBEACB517BF14949985830112E87BEEFC12185E3F889E3E8EAB8FC8A72EB9AC7E049576F7F8081F3FF33BC5E8C4E4C508DAB510DD11380515BE61A71890D42C59C80FEE396358FC1AB';
wwv_flow_imp.g_varchar2_table(59) := 'E28DD0F8D91E546D7F2F6A3F252D1DF9E3F2C0741A0CE39CE3E499B3686B6E8AC634F9BEFB91317BAE6AADD7DD508FCFD6BD12B567E5D97F03A19100A8D685E41A3AD1D60E313D581CB953A762DC430B540DA0FA3FFF80F307BE88DACCC8CC42DED831AA';
wwv_flow_imp.g_varchar2_table(60) := 'FA18AEB133D5E7D0D4D8103D7DF48C9918FBF507877BF9B0CE3BF5F636D41E3B1639D7CAFB005C0D83046058DDC37827B5078338D5372740AC0DB8FD3B4FA8361126922D57707473059AAAABA3C98F484FC7D8B179D25E07C4637F75F559B4345DFEE58F';
wwv_flow_imp.g_varchar2_table(61) := '4C805ABC44B5F90F22B9606B0B76BFF8BBE8E09FD5BFFDD31380F1EEE79B8AA8AAB50D5DE1DEBD02B4780A10DB851F285F07FF801BD0939088717979488AD776C5A0BFAB1BA7CF9E45A0D31F6593949189C255A570A83C31E7D45B5B515B5515F193E074';
wwv_flow_imp.g_varchar2_table(62) := '62A245ABFF0CD6C9E809E0A66E3D635CD41208E06CC7E51B64CE8A12C4E7E6AA1A5CB8BB0B27DEDA864B039E04C41347CEC85C8CF465AB3E2E20DEF72FD6D5A3F6624DF41759242466FB152C7818CE3875D7E5779E3F8F7DAFF556FF15C7B8A424A47ADC';
wwv_flow_imp.g_varchar2_table(63) := 'AA3234B231120023B7CE30621BB865584A56160A4B1F55F5F1B8FF75A076E74E9CFAE4E32B22F278E391999D85CC8C8C985F0B826105979A9AD058DF80404FD7157E26DC793772EEBC3352A05BD54351F0C5CB2FA1A3A5F715C36EBFFE22671200557B94';
wwv_flow_imp.g_varchar2_table(64) := '7C63DDE170A46068FF31E5FE07903E6B8E268188DD720EBFB90DC19E9E2BEC33970BA9A92390999686E4A424B0617E32E40A475B473B1A9B5BD0D6DA02DE37A8D96FDCED8DC3B4850B9138769C26F90CFCDA2196FD4E4A4D86D806CC4E070980055ABBA6';
wwv_flow_imp.g_varchar2_table(65) := 'B3130DDDBD37A5CBEDC69C47D7C09DAACD4616E1AE4E34ECFB1CD59FED45E82A21E847E9898B87C7EB85DBE381C7E582DBE98498B6140A87110885100C0410E8E941A0FBCA5FFAFEEB5DDE38E4CDBD059973E6A8FEC8DFEF23D4D682BDAFBC8C70B0B7CE';
wwv_flow_imp.g_varchar2_table(66) := '62565C1C722D5AF6EB5A5D9C04C0020220160989A78060DFBE01299959985E52AADA14E1C1108972E297BED88FB3BB7723D0D5A90A454F7C02C6CD9B87F41933552BEF3D58603C1CC2C1F232B4F77D5A147BFF4D494DB1F4A29FA11A88044095AEABBF91';
wwv_flow_imp.g_varchar2_table(67) := '8E600827DB2F4F0ECA9B3317A3EE55A772F035B3531474D5D6A2ADFA0C9ACE9C41F3558377D7BC9631A4E7E6227DDC78A48CCD439CD8EECCA1CEF2E66BF93DFBA73FE2C217FBA3A7E4272723C9EDD2BF11758880044007E85AB9ACEDEA425D576F855C71';
wwv_flow_imp.g_varchar2_table(68) := 'CC58B818C913276AE56E50BBE2D361775D2D821DED08B477A0A7C38F9EB6D6C88D2D56EE799212E1494E823B293972C3ABB591C770936C3B760407DFBEBCE029273E1E3E8D3F690E37363DCE2301D083BA863E07CE1014E301331F598E381FED242C900B';
wwv_flow_imp.g_varchar2_table(69) := '61DAB76923C4D26771D869C61FBD026878D319C9748873884F83FDFB08BABD5ECC5AB1129E8C2C2385293D96C0A546ECDB508E50A0771195D72126FC24C3A9D3FA06E9008670484F0046690915E31037BF9825280607239D3D21113357AC847B449A8A5E';
wwv_flow_imp.g_varchar2_table(70) := 'CC634A94F9DABF613D025DBD5F1DC44D2FF6FA139B7EDAFD2001B0680F10838262AD008F7C8003C493C08CE24710979D63D18C074FABBBBE0E072A5E8B6EF221BEF717A42445F6FBA383260259BA0F5C3D555854109AB1642912468FB574DEFDC9896DCF';
wwv_flow_imp.g_varchar2_table(71) := 'BED8B225FACE2FFE7F5E526264AF3F3A7A09D01380C57BC2C02DC544AA624D7FE1C285482E986CE9CC4579B3C36FBF0DB1B6A0FF1893988074AFD7D279DF68722400374ACC84E78B72E267DAFDD1D70191C2F8DB6E47CEDDF78039AC35F5952B615CFCE0';
wwv_flow_imp.g_varchar2_table(72) := '039CD9BB3BDA52E2B17F5C722252545E4568C2AEF0A5904900ACD08AC3C841140F117B0AF40F0C8A4B46F87C98B87011DC29A9C3B060FC53822DCD10BB05B70D281E2206FCC4FA7E7AE71FBCFD48008CDFAF558B507C1D38D3DE11AD21200C8B7181FC3B';
wwv_flow_imp.g_varchar2_table(73) := 'EF42C6DC5B4CFB34207EF51BF6ECC6A99D3BA1847BAB248923DEE9C47831E98846FB87EC432400AADD5EE63024DE882FF83B71E9AA853C4969E998F8E043AAD713D09A4AD785F3A8FAE3BBF037375FE12AD3EB456E6282DA0B88B54E47BA7D1200E9C88D';
wwv_flow_imp.g_varchar2_table(74) := 'E1507C2138E7EF8C9617EF8F6AF4B46918F5D5F97026241A23D021A208FB3B706EC7FBA83972F88A334439EFB18989B62AEA114B439100C442CFE4D78AD583173A3BD11AE89D1ADB7F88D782313367217BEE2DEAD619548157B0AD15F59FEDC1F90307A2';
wwv_flow_imp.g_varchar2_table(75) := '4B79FBCD8ACF7B62492F3DF20F1F3409C0F05959F64C5160F482BF0B3D4A6F7DC181C7E8E9D391397D061246EB531158C42296EFFA4565E0AA23387FE8D0976214D37A450D7FBBAEE88BA5639200C442CF42D78AB181D64000F55DDD570C12F6A7283608';
wwv_flow_imp.g_varchar2_table(76) := 'C9993E1D1953A64A595710EEF4A3FDCC69349D3C8186D3A711BEAA5A90884B94F0CA8A8F43AAC743EFFA37D91749006E129C952F134F04A2C290F87BB0233E2919197963913C6A34127347C1939EAE4ABDBEC0A506B49D3E85861327AF5957406CDA9915';
wwv_flow_imp.g_varchar2_table(77) := 'E7B5F4B6DDB2FA1709802CD226F423EA0D8A2DC8C49341FFEAC2C1D27079DC48CEF22139330BF1191988CB4887C379E55C7BB10437DCD98580BF03C1EE6E043B3BD1D3D1815077177AFC9DE86E6FFBD280E4405F62E18E78C74FF37A6C57B74FCBAE4302';
wwv_flow_imp.g_varchar2_table(78) := 'A0255D0BD916DB91B50482680B04071D2BD0225551A053FCDA8FF0B869228F1680692D8046542D6E563C0D88D703F147AC3A1C38BB3096D4C5AC3D3190276E7A316D9746F363A139BC6BE90960789CE8AC6B101082205E17BA43E1C8D3414F58893CCE0B';
wwv_flow_imp.g_varchar2_table(79) := '61503810E24AE46A177340540C1737BAF85EEF753A228539E25CCEC8633DADCF97DFCD4800E433278F44C0300448000CD314140811904F8004403E73F248040C438004C0304D41811001F9042C25000D8F2E9FA484C3C7E463248F44C0A4045CCE02DF2B';
wwv_flow_imp.g_varchar2_table(80) := '9B4E6A1DBDCADBBA0E1E6EDD3797E723143EA17532649F08588580120E8D1FB9F18D335AE72345002EAE583CCEE1749DD63A19B24F04AC4220140E8E1DB571EB39ADF391220017562C1AE372BAABB54E86EC1301AB1070302537AB6CCB45ADF39122000D';
wwv_flow_imp.g_varchar2_table(81) := 'A54B472ADC51A37532649F0858850077847D39EB5EAFD73A1F2902D0BC66F18840D075656D28AD3323FB44C0C4043CEE505ADACB6FB4689D821401E0C5C59E7A0FEFD13A19B24F04AC42203BC0BCACA2A277C3440D0F290220E2AF2B2DEA0607EDFEA061';
wwv_flow_imp.g_varchar2_table(82) := '6392698B1060E8F19555C6C9C8469E009414894F1A793292221F44C0E404CEFACA2BC7C9C841A6007C02609E8CA4C80711303301CEF07E4E59E57C1939C8148037002C929114F920026626C0C137E5946F5E2123077902505AF47370FC9D8CA4C8071130';
wwv_flow_imp.g_varchar2_table(83) := '3501865FF8CA2A7F2C2307690250BBAA680563D8202329F24104CC4C8073ACCC595FB951460ED204A071E5B229612BEA3A9A000005AB49444154073B222329F24104CC4CC0A9F0A9991B361F9591833401E06BD73AEA8F1F14F5AC1D3212231F44C0A404';
wwv_flow_imp.g_varchar2_table(84) := '3AB3271626B3B56B7BEBB5697C48130091475D499150B5C91AE744E689809909ECF29557DE212B01A902505BB26C23035B2E2B39F243044C48E0395F79E593B2E2962A007525CB9E04D8AF6525477E8880F908F0A77CE59B7F232B6EA90270A964E9E810';
wwv_flow_imp.g_varchar2_table(85) := '1C6259B054BFB260921F22102301EE08BB46676DDC286DE5ACF41BB1AEA4781FC067C5088A2E27021624C0F6FBCA2B66CB4C4CBE00D0842099ED4BBECC4440E204A07E2CD205E06269D17C07C77B666A178A9508C820C0A1DC9953BE45AC999176481700';
wwv_flow_imp.g_varchar2_table(86) := 'FEC413EE7A7FD3715A1928AD8DC991390854675F68CC67DBB78764862B5D00447275A5456BC1F10F3213255F44C0D00418FED15756B956768CBA0840CDAAA5794EE610558275F12F1B32F92302D721100A3B587EEEBA0AE9857375BB01EB4A8ADF05F883';
wwv_flow_imp.g_varchar2_table(87) := 'D435880011C0565F79E5623D38E826003418A84773934F23125018EE1D5956B95D8FD8741380C858003D05E8D1E6E4D35004D81F7CE515DFD02B247D05A074C92C70E73EBD9227BF44406F021C6C664E79C501BDE2D055007A9F028AA854985EAD4F7EF5';
wwv_flow_imp.g_varchar2_table(88) := '26A0DBBB7F7FE2BA0B407D697101E7FC7300497AB706F927021209F81172CEF26DD27E07E06BE5A4BB0088E06A4B8A9E66C02F25C22757444067027257FD0D95AC21048017173BEBBD7C3B38EED1B955C83D119040807DE42BAF30445F37840008E2F42A';
wwv_flow_imp.g_varchar2_table(89) := '20A1DF910B231030C4A3BF61C60006B6485DE9B265E0EC35AA1B68847E4A31684040015891AFBCE2750D6CDF9449C33C01F4475F5F52FC630EFEB39BCA862E22020626C0811FE694573E63A4100D27009141C155452F32866F190914C542046221C038FF';
wwv_flow_imp.g_varchar2_table(90) := 'B7ECF59B9F8EC58616D71A5200224B863B9ADE06C3D7B5489A6C1201C9045ECF9E585824ABD4F78DE46648011009D43CB130C1E9F7AE03B0F44612A2738980C1086C0D27F6ACCA7DFECD4E83C51509C7B0022082E3006B2829FA5F1CF8EF468447311181';
wwv_flow_imp.g_varchar2_table(91) := '6B11E0C0CF7CE5953F6591AE6CCCC3D002D08FACAEB4E85170BC08C0694C8C141511B88240001C8FF9D657961B9D8B29044040AC5DBD6C1E53D82BB4B390D1BB94EDE33BE070F0C7B2D66DDE630612A6110001F3F49A357109A18E1F83E3EF01B8CD0098';
wwv_flow_imp.g_varchar2_table(92) := '62B40D8120387E9E9D94FE4FECF9E7C51E98A6384C2500FD441B1E5D3E892BCAFFE19C2F3405650AD2CA04C4FBFD66C6D84FB2CB2A4E982D51530A40746CA064E9DD80F31700BFDB6CE0295EF31360C07684F98FB2376E16AB594D79985A00FA89D7962C';
wwv_flow_imp.g_varchar2_table(93) := 'BD83817D0F8C3D020EAF295B8282360701861E0095E0CAAF7DE55B3E3247D04347690901E84FAF66E5CA4C270BAE81833F09CEF2CDDE3814BFA1089C02F05C5871BF98BB6143A3A1228B21184B09C0400E75AB963D08C61EE6E00B19D8981818D1A53625';
wwv_flow_imp.g_varchar2_table(94) := 'C0C1CF3186B700C7EBBEB28AFFB42206CB0AC0156250BA6416579C0B19635F07F82D0012ADD8989453CC04FC00DB0BC6FFC414F666F6FA0ACBD7ABB485005CDD2DEA562D9D00386683895D8A99D8A9380F403680DC98BB1019300301B1FD763D80B300DF';
wwv_flow_imp.g_varchar2_table(95) := '0FCEF623ECDCAF77792E3DC0D95200AE059AFFE0216F4BBB373E08779C9339DDCE50D815082BAE3073B81D8AE27238B90B8A93B8E9D15BAFE7D311E64A9885148723E4E44AD0E37484C22E6728CCC3413782DD23927BBAD8B3EF88413C3AFA085047A6AE';
wwv_flow_imp.g_varchar2_table(96) := '40046C4C8004C0C68D4FA913011200EA0344C0C60448006CDCF8943A112001A03E40046C4C8004C0C68D4FA913011200EA0344C0C60448006CDCF8943A112001A03E40046C4C8004C0C68D4FA913011200EA0344C0C60448006CDCF8943A112001A03E40';
wwv_flow_imp.g_varchar2_table(97) := '046C4C8004C0C68D4FA913011200EA0344C0C60448006CDCF8943A112001A03E40046C4C8004C0C68D4FA913011200EA0344C0C60448006CDCF8943A112001A03E40046C4C8004C0C68D4FA913011200EA0344C0C60448006CDCF8943A112001A03E4004';
wwv_flow_imp.g_varchar2_table(98) := '6C4CE0FF03B291CAD327302EAB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64580094224489048491)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD077064D7BDE7F75F2774421ACC60000C30099313C9190E4991A21845314862A6288A9256C14FF25B97CB';
wwv_flow_imp.g_varchar2_table(2) := '656FAD5D4E55AE72D965D7D6AE5DB5E55D5BA5A7557824C524668999A298E3E49C079801663098416A74373AB94E93438D2874026E037DEFFDDE572CEA91B7CF3DE7F33FC3FEF7B927784E3D786F4E5C08208000020820E02A010F0980ABE24D63114000';
wwv_flow_imp.g_varchar2_table(3) := '010410C80B9000D01110400001041070A10009800B834E931140000104102001A00F208000020820E04201120017069D262380000208204002401F400001041040C0850224002E0C3A4D4600010410408004803E800002082080800B0548005C18749A8C';
wwv_flow_imp.g_varchar2_table(4) := '00020820800009007D00010410400001170A9000B830E834190104104000011200FA000208208000022E1420017061D069320208208000022400F4010410400001045C284002E0C2A0D3640410400001044800E803082080000208B8508004C08541A7C9';
wwv_flow_imp.g_varchar2_table(5) := '0820800002089000D00710400001041070A10009800B834E931140000104102001A00F208000020820E04201120017069D262380000208204002401F400001041040C0850224002E0C3A4D4600010410408004803E800002082080800B0548005C18749A';
wwv_flow_imp.g_varchar2_table(6) := '8C00020820800009007D00010410400001170A9000B830E834190104104000011200FA000208208000022E1420017061D069320208208000022400F4010410400001045C284002E0C2A0D3640410400001044800E803082080000208B8508004C08541A7';
wwv_flow_imp.g_varchar2_table(7) := 'C90820800002089000D00710400001041070A10009800B834E931140000104102001A00F208000020820E04201120017069D262380000208204002401F400001041040C0850224002E0C3A4D4600010410408004803E800002082080800B0548005C1874';
wwv_flow_imp.g_varchar2_table(8) := '9A8C00020820800009007D00010410400001170A9000B830E834190104104000011200FA000208208000022E1420017061D069320208208000022400F4010410400001045C284002E0C2A0D3640410400001044800E803082080000208B8508004C08541';
wwv_flow_imp.g_varchar2_table(9) := 'A7C90820800002089000D00710400001041070A10009800B834E931140000104102001A00F208000020820E04201120017069D262380000208204002401F400001041040C0850224002E0C3A4D4600010410408004803E800002082080800B0548005C18';
wwv_flow_imp.g_varchar2_table(10) := '749A8C00020820800009007D00010410400001170A9000B830E834190104104000011200FA000208208000022E1420017061D069320208208000022400F4010410400001045C284002E0C2A0D3640410400001044800E803082080000208B8508004C085';
wwv_flow_imp.g_varchar2_table(11) := '41A7C90820800002089000D00710400001041070A10009800B834E931140000104102001A00F208000020820E04201120017069D262380000208204002401F400001041040C0850224002E0C3A4D4600010410408004803E800002082080800B0548005C';
wwv_flow_imp.g_varchar2_table(12) := '18749A8C00020820800009007D00010410400001170A9000B830E834190104104000011200FA000208208000022E1420017061D069320208208000022400F4010410400001045C284002E0C2A0D3640410400001044800E803082080000208B8508004C0';
wwv_flow_imp.g_varchar2_table(13) := '8541A7C90820800002089000D00710400001041070A10009800B834E931140000104102001A00F208000020820E04201120017069D262380000208204002401F400001041040C0850224002E0C3A4D4600010410408004803E800002082080800B054800';
wwv_flow_imp.g_varchar2_table(14) := '5C18749A8C00020820800009007D00010410400001170A9000B830E834190104104000011200FA000208208000022E1420017061D069320208208000022400F4010410400001045C284002E0C2A0D3640410400001044800E803082080000208B8508004';
wwv_flow_imp.g_varchar2_table(15) := 'C08541A7C90820800002089000D00710400001041070A10009800B834E931140000104102001A00F208000020820E04201120017069D262380000208204002401F400001041040C0850224002E0C3A4D4600010410408004803E800002082080800B0548';
wwv_flow_imp.g_varchar2_table(16) := '005C18749A8C00020820800009007D00010410400001170A9000B830E834190104104000011200FA000208208000022E1420017061D069320208208000022400F4010410400001045C284002E0C2A0D3640410400001044800E803082080000208B85080';
wwv_flow_imp.g_varchar2_table(17) := '04C08541A7C90820800002089000D00710400001041070A10009800B834E931140000104102001A00F208000020820E04201120017069D262380000208204002401F400001041040C0850224002E0C3A4D4600010410408004803E800002082080800B05';
wwv_flow_imp.g_varchar2_table(18) := '48005C18749A8C00020820800009007D00010410400001170A9000B830E834190104104000011200FA000208208000022E1420017061D069320208208000022400F4010410400001045C284002E0C2A0D3640410400001044800E803082080000208B850';
wwv_flow_imp.g_varchar2_table(19) := '8004C08541A7C90820800002089000D00710400001041070A10009800B834E931140000104102001A00F208000020820E04201120017069D262380000208204002401F400001041040C0850224002E0C3A4D46209BCBFD0D82D7E3010501045C264002E0';
wwv_flow_imp.g_varchar2_table(20) := 'B280D35C6709A47339A532596595532A9B95F962CFE472CAE6F4F9DF3FFBE7E69F992BF7A52FFE2F6B783C1EF93C1E9D4F08025E6FFE16F3CF02DECFFEB9F9677E73DFE77F779628AD41C03D022400EE89352DB5A180F942375FDDE6EFE6AFE4E75FF2C9';
wwv_flow_imp.g_varchar2_table(21) := '4C36FFC56EFE4A67B39AC8E694CE6567A485260908FB7C9F2705DE7C42609283A0CF974F0CCCBF378984491D1859989190F01004A62440023025363E8440F504CCAFF5583AADB1545AB1542AFFE56EFED967A9803D2E336210F47A150D04D45417C8270C';
wwv_flow_imp.g_varchar2_table(22) := '2403F6881DB5748F0009807B624D4B6B50C0FCAA37BFE2E3998CC6D3992FBEF0CD90FE97DFD3D760F5CBAA92F9E2372303219F4F11BF5F419F379F109811032E0410983D011280D9B3E7C92E1530BFE613F92FFC74FE4BDFFC6FF3975BAEF3A30361BF5F';
wwv_flow_imp.g_varchar2_table(23) := '11BF4F619F5F753E6FFE9502170208CC9C0009C0CC59F324970B9861FD73C9090D4D4C7C3129CFE5245F34DFEFF1E65F15CC0D0615F6333240BF40602604480066429967B852C00CE19BA1FDE189948627266466EC3B6558BF5A01F5C84C30F4AAB1AE4E';
wwv_flow_imp.g_varchar2_table(24) := '8D8140FE75017307AAA54DB96E172001707B0FA0FD960A98697A6656FE68CA7CE9A7F243FC33353BFF7C43F2B3F02F6895C7E3CDFFFF5EDF674BFAE4FDEB97AAD7E753D6BC7EF87C7581F9D739F3BFCD3A42F3BF2F9878787E29A1A560450A33A302E615';
wwv_flow_imp.g_varchar2_table(25) := '8119193009819947C0850002D6099000586749492E16305F97E64BDF0CF18FA45233FA4BDF7CDD9B5FCA753E9FC2918842F551F90275F20602F24722F2D7D5C9138EE4FF7F5F342A8FDF2F6F382C4FA04EB9744A4AA7954BA5948E8D2B979A50763CAE5C';
wwv_flow_imp.g_varchar2_table(26) := '7A42A9584CB9745A99F8B8521329251309C5C7C79548A795CACEECAA0493D498118179A1607E2221A9808BFFB0D174CB0448002CA3A420370A2433190D4DA4F2EFF5AB3D91AF2E1C56D3DC790A45A30AD647158CD62B34678E7C91883CA170FE8BDD6366';
wwv_flow_imp.g_varchar2_table(27) := 'D67F3EBBDEFCBACFFF8AFF7C331F79CB78B76EF612C8E5E4C9FE754F81FC0881B93219E5CC5F266148C4958A8D6B62E89C92B13125C7624AC4621A1938AD643259D5AE60260BB604839A1BAC63254155A529DCE90224004E8F30EDAB8A80190E3F9B4CEA';
wwv_flow_imp.g_varchar2_table(28) := '4C22A9890BBE2CAD789819B2F707020A3737293AB755D1B92D0ACF99A3BA4834FF65EF6F6890FC012B1E655919D9F198328984B2F1B852A9098D9F3DABE1DE5E25CE0E2A3116533A9552CEE28D8AEABC5E3504026A0D0549042C8B2405B9498004C04DD1';
wwv_flow_imp.g_varchar2_table(29) := 'A6ADD31630BFF8071249EB67F29BDDF5C26135CC6F53537B9B1A172F5570C102C9F3F97BFB69D77C960AC86634D1DFA7E1A34734D47B42636707158FC7F3A30C565DE6F580593D601281F35B175B5536E520E064011200274797B6592660DEEB0F26921A';
wwv_flow_imp.g_varchar2_table(30) := '4BA72D79BF6FDEDB4783756AE95AA886258B1559B8588196B996D5B7660BCA65951E1A52ECF8518DF49ED0B9E3C7346E460E2C48088CA99930C83C819A8D3E15AB310112801A0B08D5A91D01F31BD56CD66386F9CD04BFE9CE823787E7449A9B356741A7';
wwv_flow_imp.g_varchar2_table(31) := '9ABB972A34BF5D81484439BF5F72E1B4364F3AA5899111C57B8F6BB8AF5F674F9E506278589969BE52317304CCAB81F9A1107B0AD4CE1F276A5283022400351814AA34FB02667BDE53F18406A739A1CD1C8A13088534B76B91E62EEB56B463817C735A66';
wwv_flow_imp.g_varchar2_table(32) := 'BF81355883CCB9B31A3B7952670E1FD2505F9F266263254F2F2CD50CF36AA03D126609612928FEBD2B0548005C19761A5D48C06CD6733A9EC82FE79BCEFAFDA059B2B6B45B7357AF527449B73C353669AFD67B40369950ECF8319DD9BB4F03470E299D4E';
wwv_flow_imp.g_varchar2_table(33) := '4FB9CA6644A03514CABF1A60BBE12933F241070A90003830A834A9720133DC6F76EB1B8827343EC57DF9CD3BE839CB9669FEEAD56A5CBC44BE60287F2C2ED7D40572B99CD2C984C64F9E50DFA79F6AA8A747D929AE2688FAFD9A1F0EE55F0F1095A9C784';
wwv_flow_imp.g_varchar2_table(34) := '4F3A478004C039B1A42553143033FBFBE389FCCCFEA95C1EF36B7FD97275AC5DABFAAE8535B7446F2A6DAAC9CFA4531AED39AEBEEDDB3578FC587EF3A24AAFF313051744C2AC18A8148FFB1D274002E0B890D2A07205CE0FF79BF7FC5399856E36DD69EF';
wwv_flow_imp.g_varchar2_table(35) := '5EAE8E4D9B14EAEC2AF7B1DC678140E2446F7E44E0F49143CA4CE1F5C0F9CD84CC88005B0C5B10108AB0A50009802DC346A5A72360BEECCDB2BEA90EF707EA826A5FBB56AD9B2E55B0B9597FBBF3FE746AC6672B11309B11270707D5FFD1473ABD7FEF94';
wwv_flow_imp.g_varchar2_table(36) := 'E609847C3EB585436A32DB2557F270EE45C0010224000E08224D285F603AC3FDA1E666B5AD59A7796BD72AD8D4E4CAA57BE54BCFE49D39A5C6C6D4BFE553F5EDDEAD746CACE28737D7D5A9331A6134A062393E60670112003B478FBA572460DEF1F7C6C6';
wwv_flow_imp.g_varchar2_table(37) := '2B5ECFEF0B85D4B5F152B5AE5AA53A376CD653916A6DDD3C717650A776ED54EFD62D15CF1130A70F7646C332C90017026E1020017043945DDE46F3AEDFECE267D6F55F78BC6D49168F47F3BA9769E1B5D7C9FCFA67A8BFA4584DDC60621C3F7346BDEFBC';
wwv_flow_imp.g_varchar2_table(38) := '9DDF53A0926D87CFCF0D30AF0558325813E1A41255142001A8222E45CFBE8019F2EF898D2B56E144B1C8BC795A72F5D7D4B4B45BE6701E2EFB09982584E70E1FD2D137DF506268A8A20698A387BBA211560A54A4C6CD76132001B05BC4A86FD902E6B4BE';
wwv_flow_imp.g_varchar2_table(39) := '13E3F18A66F8FB4361756CD8A005975D2E5F285CF6B3B8B17605D2B1D1FC8A81933BB6E74F2C2CF732AF043A22A1FCD1C35C0838518004C0895175799BCC9EFD7DE3719D4D4E943FE46F768B5BB65C0B2EBF5C91F60E86FB1DD88762BDC7D5F3FEFB3A7B';
wwv_flow_imp.g_varchar2_table(40) := 'FC58D9AD3B7FD220AF04CA26E3461B099000D8285854B5B4C05486FCCD213D2B6EBD4D7356ADE68BBF34B1ADEF30F3030677ECD4E1375F57BA828D9FCC2B01B37950D0E7B375FBA93C02170A9000D01F1C236066F99F88C52BDAC3BF65D16275DF7023B3';
wwv_flow_imp.g_varchar2_table(41) := 'FB1DD30BCA6B88592D70F8F5D72A1A0D3093029736D4CB6C29CC8580130448009C104597B7C1ECE37F2E99D4C9F178D94BFC7C75755A74C926CDDFBC9977FD2EED3FE6C0A1FE0F3F54CF271F957D04B17925B0301A61A9A04BFB8CD39A4D02E0B488BAAC';
wwv_flow_imp.g_varchar2_table(42) := '3DE6CBFF4C22A1BEF1F297F885EA1BB5FCBA6BD5B872B5CBB468EE640223FBF76ADFCB2F2B35912C1BC8BC0E30270C722160670112003B47CFE575375FFE2762E3327BF9977BB52E5FA1EE6FDCCCAFFE72C15C725F7A6458875E795983C78E96DD629300';
wwv_flow_imp.g_varchar2_table(43) := '7444C26C215CB61837D69A000940AD4584FA94256036F7E9198BE5F7F42FE70A84C35AB869B3DA365F2673880F17025F1630AF04CE6CDBAA23EFBF57F60143738341B547C26C214C77B2A50009802DC3E6EE4AA7B2D9FC96BEE57EF947E7CC51F775D7AB';
wwv_flow_imp.g_varchar2_table(44) := '61E93277C3D1FAD202B9ACC68E1DCDBF12488E8D96BE5F925921B0A83ECACE81656971532D099000D45234A84B4901B3CCEFF0E89826B2D992F79A1B1AE7CFD7AA6FDFA140537359F773130246C09C32B8EFA9273536325C1648C4E7D392867A760E2C4B';
wwv_flow_imp.g_varchar2_table(45) := '8B9B6A458004A05622413D4A0A98ED7C8F8C8E953DD3BF63C52A2DBDF556C91F2859363720F06501B383E0A1279FD0E0993365E19824604134C232C1B2B4B8A9160448006A210AD4A1A480F9F23F3A1A2B7B8DFFE28D1BD5F9B56BF9F22F29CB0DC50432';
wwv_flow_imp.g_varchar2_table(46) := 'C9848E3EFB8C4EF51C2F0BAACEEBD592FA7A85FDCC33290B8C9B665580046056F97978390266D8FFC0C868D9BFFC975DF115B55D7995E4E53FC2E5F8724F71014F3AA59E179ED7F14307CBA2321B06AD686C60D7C0B2B4B8693605480066539F679714A8';
wwv_flow_imp.g_varchar2_table(47) := 'E49D7F7E4BDFAF7F432DEB37942C971B10A8442097CD68E0F5D77478C7F6B20E9732AF03CCC440B60EAE44997B675A800460A6C5795ED90266B6FFB1B1585947F906EB1BB4F2FAEBD5B06255D9E5732302150964333AFBC1FB3AF8C1074A6733253F6AB6';
wwv_flow_imp.g_varchar2_table(48) := '0C365B079B11012E046A518004A016A3429DF2C3FD874746359E29FD1FDA4843A3D6DCF64D053BBB9043A0BA02B9AC463E785FFB3EFC50A974E93D284C12B0ACB181CD82AA1B154A9FA20009C014E1F858F504CC97FFF13237F9696C6CD28ABBEE5170EE';
wwv_flow_imp.g_varchar2_table(49) := 'DCEA55889211F8924062E736ED7CED354D9491A0B26320DDA7560548006A35322EAD573697537F3CA18144A2A480D9D37FDD3DF7F2E55F528A1BAC17C829B1778F76BEF4625949407B38ACB6306707581F074A9C8E0009C074F4F8ACE502E644BF72BEFC';
wwv_flow_imp.g_varchar2_table(50) := 'CD3BFFF5DFFC16C3FE96478002CB17C829F6C1FBDAF5DE7B65CD092009285F963B6746800460669C794A1902E68BDFFCFA37A300C5AE3A9F4F6BEEB853D125DD6594CA2D08545320A7A1375ED3DEAD5B4BF65B538BC5F5518E12AE663828BB220112808A';
wwv_flow_imp.g_varchar2_table(51) := 'B8B8B95A02F1744687464BAFF537E7B16FB8EB6EBEFCAB1508CAAD5C209BD199375ED3C1EDA59708FA3D5E2D6988B25B60E5CA7CA20A0224005540A5C8CA04CA9EF1EFF168DD0D37A8E9E24D953D80BB11A8B280D92CE8C41F9FD7B183879453F1112CB3';
wwv_flow_imp.g_varchar2_table(52) := '478059196092592E04665380046036F579765EC0ACF51F9A9828A9B1FCEAAF69FEE55F29791F3720301B022609E8FDC3E33AD67BA2E4E3CD31C25DD148C9FBB801816A0A9000545397B24B0A98F7FE7DE38992BF9A966DBA546DD75E2779BC25CBE40604';
wwv_flow_imp.g_varchar2_table(53) := '664B203B3AA2234F3FA55303A74B5681F9002589B8A1CA0224005506A6F8C202669BDFFD23A325274F75AE5CA5C5DFBA1D4A046C21609280FD8F3EA2B3232345EB6BE6032C6FAC67BB605B44D59995240170665C6BBE55669BDFA3A3632577FA9BDBD9A5';
wwv_flow_imp.g_varchar2_table(54) := 'D5F7DCAB1C47FAD67C4CA9E05F055203A7B4E7B14735964C1665613E00BD66360548006653DFA5CF3653A44EC4C63558E23F8EF58D4D5A75EB6DACF577693FB17BB363DBB76AE7EBAF2993CD166D0AF301EC1E69FBD69F04C0BEB1B36DCDCD7B7FB3E14F';
wwv_flow_imp.g_varchar2_table(55) := 'A96BCD0D376ACE25CCF82FE5C4BFAF51815C56A75F784E07F7EF2F5941E6039424E2862A089000540195220B0B98F5FE0746464B4EFA5BB86AB5BA6EBD4D1EAF0F4E046C2B903D7756479E7FAEE4A440F607B06D886D5D7112005B87CF5E954FE772F9F7';
wwv_flow_imp.g_varchar2_table(56) := 'FEB174BA68C5CDD0FFFA1FFC50DE207BA7DB2BC2D476328154CF51ED7EFA69C552C54F0F6C0C04F23B05B23F00FD68A6044800664A9AE7E854DC6CF55B7CE83F5017D4BA5B6E5164F94AC410708CC098990FF0DAAB2557BC2C8884654E0FE44260260448';
wwv_flow_imp.g_varchar2_table(57) := '0066429967C80CFD1F1D1BD344890951AB366FD6DC6BAE9338419D5EE3308193CF3EA5A3070F166D95F9F5BFBAA951012FFB5D382CFC35D91C12809A0C8BF32A757064B4E4D0FFFC8E762DFDE6EDF23536390F8016B95EC0EC0F70E0A9273578E64C510B';
wwv_flow_imp.g_varchar2_table(58) := '3302D011099302BBBEC7541F8004A0FAC6AE7FC2482AA523A363451DFC5E9F36DE7FBF021D9DAEF702C0B902E37B766BDF6BAF285E64EB6B8F3C5AD658CF8141CEED0635D33212809A0985332B620EFA31BFFE13994CC1069AFFE02DFFCA156ABDEA6BCE';
wwv_flow_imp.g_varchar2_table(59) := '44A055085C2030F8EEDBDAF7FE7B454DA27E7FFEC0208E0BA2EB54538004A09ABA94AD72D6FCCF9BD7AA55DF7B90DDFEE82FAE10C86532DAF54FBFD0C858F151B1F670586D612604BAA253CC522349006609DE0D8F3513FF0E8F8E299D2BBC139ADFEBD5';
wwv_flow_imp.g_varchar2_table(60) := 'BA9B6F5574CD5A3790D04604F202B13DBBB5ED4F2F147F2DE6F16A5573A3FC1C1B4CAFA99200094095602956F9F7FEE6FD7FB16BF1EA35EABCED9BCCFAA7C3B84B2097D5E1471F56FFC9BEA2ED669B6077758B996E2D09C04C8BBBE479E68BFFE868ACE8';
wwv_flow_imp.g_varchar2_table(61) := '8E7FC16050177FEFFBF2CF6971890ACD44E0AF0213C78F6ACFF3CF299648146559DA502FB349101702560B9000582D4A792A67E29F59EFBCF2EAAFA965F365928735CF741B170AE4B21A7CEB4DEDFBF8E3A28D371302BB1BEAD921D0855DA4DA4D2601A8';
wwv_flow_imp.g_varchar2_table(62) := 'B6B00BCB2F67E25F734383D6FCF047F2B0DDAF0B7B084D3E2F90397756FB9F7A52E786860AA29855325DD1B05A8241E010B0548004C0524E0A33FBFD1F1919D57891657F66E2DFDA9B6F51FD9A758021E07A01332170C78B7F2CBA4D70C8E7D3CAA64696';
wwv_flow_imp.g_varchar2_table(63) := '05BABEB7580B400260ADA7EB4B3B9B4CAA27365ED461D1B2E5EABAFD0E86FE5DDF5B00F84C20A7438F3FA6533DC78B82301780FE62B5000980D5A22E2F6FDFF048D14D7FCCAFFF8DF7DCA3C0C2252E97A2F908FC552079EC88763CFD94268A8C9C715A20';
wwv_flow_imp.g_varchar2_table(64) := '3DC66A011200AB455D5C5E395BFE2E5ABF415D5FBF49F2FA5C2C45D311F8B2404EBDCF3CADE3878A1F16C428003DC74A0112002B355D5C564ED2A11207FED479BDBAF8FEEFB2DFBF8BFB094D2F2C903874403B9E7B4EA96CE16DB39BEBEAB4A83ECA5C00';
wwv_flow_imp.g_varchar2_table(65) := '3A9225022400963052482C9DCEEFF95FECEA5CBC588BEFBA875FFF7417042611C82513EAF9D31FD57BF850411FBFC7AB250D510E0AA2075922400260092385F4C6C635984C16FE0F97D7A78BEEBA4BA1C54BC14200810202C94307B4E5D9678AAE0830A3';
wwv_flow_imp.g_varchar2_table(66) := '008BEBA31822306D01128069135280F9F56F76FD2BB6E7FF82050BB4E4FE0798F94F7741A08880279DD2BE871FD299330305EFF2793C5ADDDCC41901F4A4690B90004C9B90024AFDFAF77ABCBAE8965B15E1C01F3A0B022505C6F6ECD2AE17FF94DF51B3';
wwv_flow_imp.g_varchar2_table(67) := 'D0C549812519B9A10C0112803290B8A5B04036979359FA37912D7CE25FDBC2455A7ED7DD1CF74B4742A01C816C46FBFFF977454701CC84DA154D9C14580E27F714162001A0774C4B60686242C7C66245872BD7DF721BC7FD4E4B990FBB4D60F4938FB4EB';
wwv_flow_imp.g_varchar2_table(68) := 'ADBF285B24B16649A0DB7A85F5ED2501B0DED435259A01CAA3258EFC9DD3365FABEFBA579E0893965CD33168E8B405CC8A80437F785CA7FBFA0B96C564C06933BBBE001200D77781A903243319ED1B1E2D7AE4EF9A1B6ED49C4B364AAC5C9E3A349F74A5';
wwv_flow_imp.g_varchar2_table(69) := 'C0C8F62DDAF9EAAB05DB6E5E03985302833E36D5726507B1A0D124001620BAB58852FBFE87FC7E5DFCD37F902F5AEF5622DA8DC09405D203A7B4E5A1878A6E0CB42012566B2834E567F041770B9000B83BFE536EBD99FC67DEFD9BED7F0B5DF98D7FEEB9';
wwv_flow_imp.g_varchar2_table(70) := 'CF1DBFFEB319E58C4526238FF90F325B1D4FB96F4DF641B33C2E3B3121F97CF20402AEF035AF018EBFF2B24EECDF57D032E2F3E5270372213015011280A9A8F119955CFBEFF1E862874FFECBE5B21A3F33A8E19327141F38A5B1D39FADDDAE9FDFAA6867';
wwv_flow_imp.g_varchar2_table(71) := '971A3B3A146E6A96C7E3A5C74C4120A79CE243E73474ECB8C64EF42A7666405E7F20EF1B6E6D53D3824E455AE7C9E3E0D74B23BB776ACF4B2F165C12E8357B0234352AE0A58F4DA18BB9FE232400AEEF02530338391ED7402251F0C3C160501B7FFC5379';
wwv_flow_imp.g_varchar2_table(72) := '1D38F92F9B49EBF4C71FA977DB364DC4C6A402EBB53D1E8F02D17A2DBAF22ACD5BBF41E63FD65CA505B2D98CCE6CDDA2DEAD5B941C1E56AED07A788F47A1A626755DB251F32EDE28AF03DF8567C763DAF1AB5F2A66463F0A5CBC0628DDA7B86372011200';
wwv_flow_imp.g_varchar2_table(73) := '7AC69404F60C0D175DFBBF68D97275DD71D794CAAEE50F8D9FE8D1C177DEC9FF222DF4C5FFE5FA9B44A061C952755F7595226DEDEE782532A520E6141F1CD481D75EADC8571E8FEADBDAB5FCC61B1569EB98D2936BF643B9AC8E3FF374D1F301CC6B80EE';
wwv_flow_imp.g_varchar2_table(74) := 'C606991D02B910A8448004A0122DEECD0B98E1FFC3A36305F72BF77BBD5A7FB3F376FE1BDABF47FB5E7D559922231FC5BA883F5AAFE55FBD5A2DEB37D093FE4E20A7A1FD7BB5E7A5973E9B4B3185CBCC0D5873F32D6A5EB97A0A9FAEDD8F989D0177BCF8';
wwv_flow_imp.g_varchar2_table(75) := 'A2CC2BA742D7F2C6060E08AADD10D66CCD48006A3634B55BB1525BFF9AB5FFAB6EBF4BDE06E74C4E8AF59FD4B6471E2EFB577FA1E899D1808B1EF89EA2ED0B6A37C0B35033E3BBFDF1C7A6FCE57FBECA2609B8E8AEBB15ED5A340BADA8CE23B3C984F6FC';
wwv_flow_imp.g_varchar2_table(76) := 'A77FD2F0F878C107B0357075EC9D5E2A0980D3236C71FBCCFEE4FB4B6CFDBBEA2B576AEE55575BFCE4D92B2E9D886BEB43BFD3C4F0B0259588747569FDED77CA1F0A5B529EDD0BC964D2DAFACFBF557270D092A6D4353569E30F7F245FA0CE92F26AA190';
wwv_flow_imp.g_varchar2_table(77) := '532FBEA043BB7717AC4A6320A045F5515E03D442B06C540712001B05AB16AA6A36FFD93B3C52B02AE63DE4C6FBBFABBA055DB550DDE9D7219755CFDB6FA9E7A30FA75FD605252CBCEC722DFCDAB5969669CFC2723AFEFAABEADDBAD5D2EA7FE67B8D63E6';
wwv_flow_imp.g_varchar2_table(78) := '5B24F6EED6B6975F52269D9ED4C96C0A641280A8DF6FA92385395B8004C0D9F1B5BC75A5F6FE9FDFD1AEEEBBEF9337E88CCD49527D27F4F1EF1F293C137D8AC21E9F4F9BBFF7A002AD6D532CC1191F4B9DEED7C70FFDB3F5BE1E8F367FFF078EF135AB01';
wwv_flow_imp.g_varchar2_table(79) := 'F6FEE1090D9D3E5D30F0AC0670C69F89996C0509C04C6A3BE059A596FFE587FFAFBC4A72C8DAF78137DFD0814F3EAE4AE4566EDEAC79D75C5F95B2ED51684E03EFBEA303EFBF5795EAAEFADA359A7BD91555297B360A3DF9E7D774F4D34F0B3E9AB30166';
wwv_flow_imp.g_varchar2_table(80) := '232AF67E260980BDE337A3B54F65B3F9DDFFCC2A8042D7A5F7DCABE0E2A5335AAF6A3EECC0B34F6BE0E081AA3C626E679756DDFF5DC70C53578A6476BA3BF8D28B55F36D5BB356CB6EB9D531C9E8D8C17DDAF5DC7305370532AF01D63437551A06EE77B1';
wwv_flow_imp.g_varchar2_table(81) := '0009808B835F69D34B2EFFF3FBB5F9E7FFE898E17FE3B3FDB1DF6BACB7A752AAB2EE0F35376BD38F7EE28A6D6D2703C98E8E68DB534F2A7EE64C595E95DED4B8B45B6BBF7E936356A3A4CF9DD5F6DFFD46890209B8D968CA24007EF603A8B4ABB8F67E12';
wwv_flow_imp.g_varchar2_table(82) := '00D786BEF2869B9DFFCC2B8042D7DC79F3B4EA873FAEBCE05AFD442EAB2D8F3CA4787FE12359A75375B30AE08A9FFD5C397F603AC5D8F6B3D97367F5D1230F4D795F85520D8FB477E8A25B6F93774E4BA95B6DF1EFF32326CF3CAD810209A9D912794943';
wwv_flow_imp.g_varchar2_table(83) := '546645001702E508900094A3C43D790133FC6F260116BA966DBA546DD7DDE020AD9CB63FF668D5460002E1B02EFB03908D0A0000200049444154F93FBA7A0460EBE38F2A313454953E53DFB550EB4D02E094FD28B2199DFACB9B3AF4E9278593F060509D';
wwv_flow_imp.g_varchar2_table(84) := 'D188834F47A84A57716DA12400AE0D7DE50DDF373CA2442633E907FD7EBFD6DEF40DD5AF595779C135FC893D4F3FA573870F56A5868DADF3B5FEFB3F70CC3BEA4A91CC2FDABD7FFA53D57CE7AE5AA3955FFFBA3C0E5991627C63470F6BDB1F9E2C481DF2';
wwv_flow_imp.g_varchar2_table(85) := 'F9647605645BE04A7BA33BEF27017067DC2B6EB559FF7F6064B4E004A44843A336DCFF5DF91A9D3509E9F8EBAF58BE46FD3CFE82B5EBB5C44C5273ED9553CF5B7FB17C8F85F39C8BAFFCAA3ACD8A14075DE9D8A8B6FFD32F0BCE03304D35A703061D7830';
wwv_flow_imp.g_varchar2_table(86) := '9283C258334D2101A89950D47645CE2693EA8DC5658E689DECFA6C46FB03B5DD8829D4EEDCAE1DF9E3582DBFCC84ADEB6FD09C4B36595EB49D0A1CDEBF57BB9E7FAE2A555EF7AD6FABC961E702989311F7FFFA9F3478EE5C41B3A50DF5CC03A84A8F725E';
wwv_flow_imp.g_varchar2_table(87) := 'A12400CE8BA9E52D325FF9C74BBCFF5F7AF957D471F5D72C7FF66C17981A1ED296DF3FA2B439F6D7C2CB6C577BC977BF277340909B2FB3CDF227BFFAA5E51301CD990097FFC3CFE573E076CBFDAFBCA4C33BB617EC369C0BE0E63F5195B59D04A0322F57';
wwv_flow_imp.g_varchar2_table(88) := 'DE9DCDE5F2C3FF85DEFF1B947537DFAAA675EB1DE97362EB161D7BFD55EBDAE6F168E157AED242870D4F4F15E8F8BBEFA8F7FD77A7FAF1BFFF9CC37D63DBB76AFB6BAF16DC3D910D81ACEB4A4E2F8904C0E911B6A07DE600A03D43C3853720F1F9B4E1DE';
wwv_flow_imp.g_varchar2_table(89) := 'EF28D8E990FDFFBF6496554E5B7FF36B2506AD59AFDEB0B45BEB6EBF435E1FFBB61BEA6C6A425B7EFB1B2587AD590D106DEFC8CF4771AA6F7AE0943E7DFC7199D193C92E731EC092867AF603B0E0BF7D4E2F8204C0E911B6A07D6607C0DD43854FC233C7';
wwv_flow_imp.g_varchar2_table(90) := 'FF2EBFF55B0AB4CCB5E069B559C4F899016D7BE877CA155805516EADCD190097FC8B1F2BDC3CA7DC8FB8E2BE58EF716D7FF28969FBFA42A1FC498BD1AE85CE754BA7F209537C68F279006625C0A2685461BFCFB906B4CC120112004B189D5D483C9DD1FE';
wwv_flow_imp.g_varchar2_table(91) := '91C2270076AC58A5C537DE206FC4D9EFB3CFEEDCA1037FF9F394DF579B2FA7555FBF49CD0E9B986655EF1FDABF577BFEF4C7292701E6BDFFDA6F7E5B4DDDCBACAA52CD96B3F7F70FEBECC91393D6CF2C01EC8A46645E057021504C800480FE5152A0D409';
wwv_flow_imp.g_varchar2_table(92) := '809F6D00640EB5F1942CCBEE379875D8FBFFF266C5DBD746CC2E89377E5DE14E07FF32B520B8C677DFEBAF55BC3990D95679CDCDB7B8C6F7D073CFE8D481FD05C53919D082CEE8822248005C10E4E936B1D416C06B6EB8D155CBD9B299B48EBEFCB2FAF7';
wwv_flow_imp.g_varchar2_table(93) := 'EE9672932F8BFCC2DCE3D1828B2ED6A2EBAE77EC3BE9E9F6AF2F7F3E9388ABE79DB7D5B77D5BC963823D1E8F3A8CEF35D7CA1B70CF2FDEBEB7DFD2910FDF2F483F3718CC8F027021C008007D605A02BDB1710D269305CBD878CFBD0A3BE804C072B19243';
wwv_flow_imp.g_varchar2_table(94) := '438A9DEAD3F8E8A89243E7343EFAD952C14843BD82CD7354DFD6A6C8BC56D585F90F71B9A67FBD2FA7E4D89862277A153B7B4E13B1D1BCAFF9920F85EA54176D50B4658EA29D5D0AD69B574FCE1F7DBAD0F0DCD64FB5FF8DD70B4ECC35E70198FD00B810';
wwv_flow_imp.g_varchar2_table(95) := '2001A00F4C59C0AC00307B008CA45205CBB8EC473F71F404C029E3F14104AA24307E70BF763EF79CD2B9ECA44F30130157353556E9E914EB14015E01382592556A879900D81B8B69BCC0EC779FD7ABCD3FFBB97C0E9F0058255E8A45604A02E9BE13DAFD';
wwv_flow_imp.g_varchar2_table(96) := 'C20B1A1B997C758EDFE3D5DA394D2E1B179912A5AB3F4402E0EAF0976EBCF9E56F4600CC48C064573812D1C53FFEA9BC0E3A70A5B40A772030BB02E628E5032FBFA4C113BD9356C4AC0458DDDCC45E00B31BA69A7F3A0940CD8768762B68CE00E8898D17';
wwv_flow_imp.g_varchar2_table(97) := 'AC44FE0C807BEE955C7AA6FDEC4687A7BB5720A743CF3D5B702580D7E3517743BDCCA6405C0814122001A06F141538154FA83F3EF98E63E683660F8025DFFCA63C5E361DA12B2130930227DFFA8B8E7EF4C1A48F3409C042F60298C970D8F2592400B60C';
wwv_flow_imp.g_varchar2_table(98) := 'DBCC55FAE4785C6619E064975982B5E4B22BD47ED55524003317129E84405EA0FF83F775F89DB70A26009D91B05A8241B4102828400240E7282A506C09A0D7E355F757BFAAD6CD979100D08F10986181335B3EC92F059CEC322300F34321B58543335C2B';
wwv_flow_imp.g_varchar2_table(99) := '1E67270112003B456B16EA5A2C01F0FBFD5A76CD359A7BC9A5B350331E8980BB05CCD6D47B5F7E71F2D13979342F14547B3824930C702130E928EEA907EF2DB19519706E1638361693D90A78B2CB24006B6EBD4D0D2B56B99988B623302B0243FBF768F7';
wwv_flow_imp.g_varchar2_table(100) := 'F3CF177CB6D90DD06C094C02302BE1B1C5431901B0459866AF924746C70A6E0214F007B4EEB6DB1459BE72F62AC8931170A9C0E89143DAF1D41F0AB6DEEC06B8A83E2AB324900B014600E803150B144D00EA82DA70D7DD0A7576555C2E1F400081E9098C';
wwv_flow_imp.g_varchar2_table(101) := '9923941F7B9404607A8CAEFE342300AE0E7FE9C61F1C19552C9D9EF4C6405D5017DDF71D05DBDA4B17C41D082060A940ACFFA4B63DFC50C132CD1E00E63C0046002C6577546124008E0AA7F58D2996000483415DF4C0839C03603D3B25225052203E7846';
wwv_flow_imp.g_varchar2_table(102) := '5B7EF39F0ADE67CE0358D6D8C06E802525DD7B0309807B635F56CB8B2500661BE00DDFFBBEFC8D4D6595C54D0820609D4062F08C3E2D9200D479BD5AD1D44802601DB9E34A2201705C48AD6B90591E727078A4E04140D16854EB7FF0430E02B28E9C9210';
wwv_flow_imp.g_varchar2_table(103) := '285BC024005B7EF36BE534F9422E7320D0CAA60605BCDEB2CBE44677099000B82BDE15B5B65402D0D8D8A4B53FF821070155A4CACD0858236012806DBFFB8D32D9C98F0436EFFECD91C02400D6783BB11412002746D5A236954A00EA1B9BF223009C0468';
wwv_flow_imp.g_varchar2_table(104) := '1138C5205081407270505B7FF7EB82090023001560BAF45612009706BEDC66179B0360128075E61500470197CBC97D085826604600B6FEF637CAE6261F013073009637F20AC0327007164402E0C0A05AD9A45293002FFAE1BF600E8095E094854099024C';
wwv_flow_imp.g_varchar2_table(105) := '022C138ADB0A0A9000D0398A0A945A06B8E1810755D7321745041098618152CB00233E9F96B20C7086A362AFC79100D82B5E335EDB523B019A7D0082734900663C303CD0F502E36706B4F5B7BF2EE8C04640AEEF22250148004A12B9FB869209C05D772B';
wwv_flow_imp.g_varchar2_table(106) := 'C856C0EEEE24B47E560462BDC7B5ADC856C02400B312165B3D9404C056E19AF9CA963A0C68EDEDB72BBAA47BE62BC6131170B940A9C3809AEBEAB4301AE1344097F79362CD2701A073141570DF71C03929C709D98EFC63913F15CF3927E3711CB0237BE9';
wwv_flow_imp.g_varchar2_table(107) := '8C368A046046B9EDF7B0DED8B80693C9492BEEF7FBB5E2C6AF6BCEBA0DF66BD805354E9F3BABFEAD9FEA6C6FAF12E371E532931F7E64EB465279797C7E851B1B35A7BD4DEDEB37C8DFDA666B95620980D7E3D1FC5048F3C32107A53CB60E574D569E04A0';
wwv_flow_imp.g_varchar2_table(108) := '26C3523B953A391ED74022317902E0F5AAFBAAAF6ADEE55FA99D0A575893CCC029ED7FED359D3B79A2C24F72BB9D051A5B5AB4F68EBBE49DD362DB669CD9B143FB5F7971D2FA9B04A03D1CD2BC1009806D033C031527019801643B3FA25802E0F178B4E4';
wwv_flow_imp.g_varchar2_table(109) := 'B22BD47ED555F2787DB66CE6C0BB6FEBC0FBEFD9B2EE547A7A022BBF72A5E65D75F5F40A99C54FF77FF0BE0EBFF356C104A03312564B30388B35E4D1B52E400250EB119AE5FA9D8A27D41F8F17ACC582B5EBB5F81BDFB06D0270E0B1DF6BA0B767969579';
wwv_flow_imp.g_varchar2_table(110) := 'FC6C0898BEBBE4965B67E3D1963CB3E7AD37D5F3D1870513003301D04C04E442A0900009007DA3A88019FE37A30085AE96059D5A7DEF7D923F604BC97D8F3EA2C113BDB6AC3B959E9EC0828B2FD6921BBF31BD4266EBD3D98C0E3CFF9C060E1E28980074';
wwv_flow_imp.g_varchar2_table(111) := '37D4CB2C05E4428004803E302581A1890999950085AE6038A28D3FF9A96D0F043AF2DCB3EA3BB06F4A367CC8DE028B2EBB5C5D5FBBD6968DC89C3BAB7D2F3CA7A1D3A727AD3F2701DA32AC335E694600669CDC5E0F8CA7333A1E8B2991C914F8A5E1D565';
wwv_flow_imp.g_varchar2_table(112) := '3FFFB96DCF03E87BFB2D1DF9F07D7B0585DA5A22B0FCBAEB357FD3664BCA9AE942D27D27B4EBD967148B4D9E9C9B9300D73437B207C04C07C666CF2301B059C066BABAA96C363F02104B175E1AB7F9FB3F50DDFCF699AE9A25CF3BBB7387F6BDF68A7205';
wwv_flow_imp.g_varchar2_table(113) := '121C4B1E42213529B0EECEBBD5D4BDAC26EB56AA526307F769F773CF2B5DE024C090CFA7554D8DA58AE1DFBB5C8004C0E51DA09CE617DB0BC07CFEA2DB6F57FDF255E5145573F798ED5477BDF082D2B1B149EBD6BE6EBD56FF77FF43CDD59B0A9516D8FB';
wwv_flow_imp.g_varchar2_table(114) := '7FFEEFEADFB573F21B3D1E5DFCC0838AB677942EA806EF18DCFA890EBEF186320536AD6A0C04B4B4A1BE066B4E956A498004A096A251A37529B51260CD0D376ACE259B6AB4F6C5AB353136AA5DCF3EAD787FFFA437FA83415DFD8B5F49F95DE4B86C2390';
wwv_flow_imp.g_varchar2_table(115) := 'CBE9ED7FF8B1D2131393C7355AAF4BBEFB80EA9A9A6DD3A40B2B5AEAD5D5DC60505DD1882DDB46A5674E800460E6AC6DFBA4521301975DF115B57DF56BB66C5F4E39ED78EA0F1A3B72B860FDAFFCDFFE0F05172EB265FBDC5AE989E3C7F4EEFFF4DF176C';
wwv_flow_imp.g_varchar2_table(116) := '7EFDD26EADBFED9BB69DBC7AF00F4FE8F4D12305DBB72012566B28E4D6F0D3EE32054800CA8472F36D6622E0FE919182041D2B56A9FBD65B95B3E952C083AFBCA4D33BB6176CDF253FF907355F77BD9BBB80EDDA7EEEF557B5EDD7BF2A58EFF64D9BD57D';
wwv_flow_imp.g_varchar2_table(117) := 'CD35924D37B0DAFDFB87355464F7CAC5F551F600B05DAF9DF90A9300CCBCB9ED9E682602EE1E1A2E58EF396DF3B5FCD66F29D032D7766D33153EF9C9473AFAE69F0BD67DE935D76AF17FF6735BB6CDAD953EFA8BFFA8A36F4FBE4B9E31E9BEF11B6ABFF8';
wwv_flow_imp.g_varchar2_table(118) := '625BF26493096D7DE8774A0C0D4D5A7F3301705134AAB0DF9EBB73DA322836AD3409804D033793D54EE772DA3B345C70C25130189499511DEAEC9AC96A59F6ACE1C307B5EBE9A70A96D7D8D6AE4DFFE6DF59F63C0AAABEC027FFEABFD2E8C040C1076DB8';
wwv_flow_imp.g_varchar2_table(119) := 'EF7E35D8F4B54EEA74BFB63CF554C189AB66F31F330210F07AAB0FCD136C2D400260EBF0CD4CE5B3B99C0E8D8C6ABCC852B9F5DFFAB61A57AE9E990A59FC94F8895E6D79F491A2A55EF31F7E216F3DB3AA2DA6AF4A7199E121BDF55FFECBA2656FFED97F';
wwv_flow_imp.g_varchar2_table(120) := 'AEBAFA86AA3CBFDA858EECDEA95DAFBC5C70E92A1300AB1D01E7944F02E09C5856B525A596022ED9B4490BAEBBB1AA75A856E1E638E04F1E79489902A71E9AE75EF6DFFC6B452FD958AD2A50AE8502639F7EAC8FFFEFC223369E404057FEE37F61DBEDAB';
wwv_flow_imp.g_varchar2_table(121) := 'FB5E7949478ACC59690F87D5166602A0855DCAB14591003836B4D636CCAC04E8898DCB8C064C76E5CF04F8EE03920D4F1FCF2513DAF7DCB33A7BFC5841B4EE1B6ED4A21FFDD45A544AAB8AC0B15FFE7F3AF297370B96DDD2D9A5D5F77FD79E7D3597D3FE';
wwv_flow_imp.g_varchar2_table(122) := 'DFFD5A8367CE146C9F59FF6FF601E042A0940009402921FE7D5EC04C04DC373C52701E40A4A151EBEFBD4F7E9B9EAF7E66CB27DAFFC6EB05A31D088574D5BFFF8FF270BC6A4DFF89C825937AFB1F7FA64C3A35793D3D1EADF8EAD56ABDFC2B35DD8E4295';
wwv_flow_imp.g_varchar2_table(123) := '4B25E2FAF4FFFD0FCA64B393DEE29147AB9A1A14F43101D096019EE14A9300CC30B89D1F671280426702F8FC7EADBEF12635AD5B6FCB26A68687F4F1AF7EA95C81110ED3A88D3FFF4735D974BF035B06650A951EFACB9FB5F597BF28F8495F28A48DDFFD';
wwv_flow_imp.g_varchar2_table(124) := '9EEA6CBA6265ECE8616DFFC39305DB6756002C6F6C90390C880B8152022400A584F8F75F08949A07B078E346755EFF757B8AE5B2DAF1FB4734DA77B260FDDB56ADD19AFFF17FB667FB5C52EB9DFFEBFFA23307F6176CED9CEE655A73E7DDF6D4C86575F2';
wwv_flow_imp.g_varchar2_table(125) := 'EDB775F4A30F0AD6DF4C00EC8C466CF822CE9E21B17BAD4900EC1EC119ACFFD964323F0FA0D0D5D0D2A20D3FFA892DDFAD9A369DDEB14D075F7D452A320AF0D57FF3EF1468B3E7C14733D85566E551A953A7F4CEBFFEAF0B3EDBE3F168E56DDFD4DC556B';
wwv_flow_imp.g_varchar2_table(126) := '66A57ED37DA899ABB2FFE9A73478A2B760516C00345D65777D9E04C05DF19E566BCD8980C7C7629A28F0FED1EBF5EAB29FD9F768E089F8B8B6FCA77F2ABA1A60D5ED77AAE3DEEF4CCB910F5747A0EFD147B4EF85E70A165ED7D4A40DF77E47419BEEFF3F';
wwv_flow_imp.g_varchar2_table(127) := '313CA4EDBFFE95260A2CC735C3FEAB9B9BE467F8BF3A1DCC81A592003830A8D56A92D910A8672CA691548109569236DDFF806D3704326E7B5F784E67F7ED2D48186E6CD615FFFEFFE170A06A75B2A9969BCDEADD7FF9334D8C171EA19ABFE9522DBFEE86';
wwv_flow_imp.g_varchar2_table(128) := 'A93E61D63F377AE4507EC3AA422B71380278D64364BB0A9000D82E64B35BE193E3710D14592FBFFCEAAF69FE65974B1E7BEE423674F8A0F63CF76CC14D568CFE65FFEABF55F4E24B6637103CFD6F04C6B67CA28FFFAF7F5B5465DD7DDF51D3C2C5B695EB';
wwv_flow_imp.g_varchar2_table(129) := '79EB4DF57CF461C1FA37D7D5E57700E442A05C01128072A5B82F2F50EA64C0D6AE855A76C79DB63D652D934C68C7934F68BCBF8F883B482034779E363EF87D796C7A609579FFBFFBD96734DC737CD2A8783D1E7546C26A6199AA837A6DF59B4202507D63';
wwv_flow_imp.g_varchar2_table(130) := '473DC1EC07B0676844E618DDC92EBFD7A74B7EFC13DB9EB36EDA74E2BD7775ECBD771C1537B73766E9B5D7A9E3D2CB6CCB903CD1ABADCF3C55707E0A0700D936B4B35A71128059E5B7DFC3CB391760E5F53768DEC64BEDD7B8CF6B9C183CA34F7FFBEBA2';
wwv_flow_imp.g_varchar2_table(131) := 'AB016CDB381756DC6CFD7BE98F7F6ADBBDFF4DC84EBDF3960E7DF07EC1E8999DFFCC0E805C0854224002508916F7E6054EC513EA8FC70B6ACCEDECD2CA3BEF922768D3FDC87359ED7BF6190D1E3A48C41D20306FD972ADBCE32EDBB6C48CB6EDF9E7DF6A';
wwv_flow_imp.g_varchar2_table(132) := 'E8F4E9826D581009AB3564D33F6FB68D8CFD2B4E0260FF18CE780BCC6B80BDC323056723FBEBEAB4E1DBB72BBC78E98CD7CDAA07C607CF680BA3005671CE5A3966E7BF0DF7DCAB485BC7ACD561BA0F4E98E1FF271E5736939EB428F3FE7F755323C7FF4E';
wwv_flow_imp.g_varchar2_table(133) := '17DA859F27017061D0AD68F2C19151997D010A5DB6DE15F0F3461D7EED65F56FDB66051765CC9240E715576AF157AF9EA5A75BF3D8DE975FD4F19D3B0A166686FFCDEC7F930870215089000940255ADCFB8540A9D700E1E639F9C9801E9B2E07340D4D0E';
wwv_flow_imp.g_varchar2_table(134) := '0F69E7D37F50727090C8DB50203877AED6DF79B76D37FE31E46655CACE5FFF4AB158AC70B25D1F955902C88540A5022400958A717F5E209ECEE8E8D858C15D01CDB6AB97DC7D8FAD5F0398769ED8B655C75E7F95098136ECF7DDB7DEA6F635EB6C58F3BF';
wwv_flow_imp.g_varchar2_table(135) := '5639D67B5C3B1E7FACE0EB3673FADFDA39ECFE67EB20CF62E549006611DFCE8F36AB01CCB900665F8042D7A2F51BD4F58D9B6D7B3640FE17586A42BB9E7F4E63470E170DD782F676B52F5860E790DAA6EEFD274FEA647F7FD1FA46BABAB4E1BEFBE5B3F1';
wwv_flow_imp.g_varchar2_table(136) := '089472591D7BFDB57C125AE88AFAFDF9D3FFB810988A0009C054D4F84C5EA0D4A640017F409BCCD900A1B0ADC5864E9DD29E877F57F4A860D3C0E5CB96ABB1A9D1D66DADF5CA0F0F0FEBD0A14345AB6996FDADF9CE036A6E6BABF5E614AD5F7A64585B7F';
wwv_flow_imp.g_varchar2_table(137) := 'FF8826C64627BD8FCD7F6C1DDE9AA83C09404D84C19E95C8E472DA33342CF3F74297590DD0B062953D1BF879ADCD32AC03AFBCA4333B0A4FC432B7FA0201AD5EB94AC120EF63AB11F06472427BF6ED53365DF82C0AF3DCD60D1BB4FCA69B6586C7ED7C9D';
wwv_flow_imp.g_varchar2_table(138) := 'DBFAA9F6BCFE5AC12698CD7FBA1BEA99FD6FE720CF72DD4900663900767FFCB1B158D1D70073172FD1EA3BEE54CEA65BB09E8F8F3929F0935FFE42B9220721997BC3D1A856AD5CC98C6C8B3BB679E5B46FFF7EC58B4C86338F3427FE5D74FF03B6DEF4C7';
wwv_flow_imp.g_varchar2_table(139) := 'B42397C968FF138F153DFA776E30A8AE68C462698A73930009809BA25D85B69A93018F8C8E152CD9E7F56AFD9D7729BAA4BB0A4F9FD922FB3FFD5887FFFC46C98736B7B4A87BC99292F77143F902878F1ED5D0D9B3253FB0EA8E3B3577D98A92F7D5FA0D';
wwv_flow_imp.g_varchar2_table(140) := 'B1A387B5FD99A78B1E4A6576FE334B00B91098AA0009C054E5F85C5EC0FC32DB5DE23540DB8A955AF6ED3BEC2F964E69EF4B2F163D2EF87C23DBDADAD5D9C9A4402B827EE2C4499D3A557CD29F794ECBAAD55A75CB6DF2F87C563C7616CBC869DFA3BF2F';
wwv_flow_imp.g_varchar2_table(141) := 'FAEBDF0CFF2F6B6C909FB5FFB31827FB3F9A04C0FE319CF516943A22D84CCADA74FB1D0ADA7867C0F3C813F9BD019E92392FA0D4D5DEB1400B3ADA4BDDC6BF2F2270A2AF5FA7FA4E96340A3635EBA207BFAF80CD279C9A868E9FEAD38E471E56269B2DD8';
wwv_flow_imp.g_varchar2_table(142) := '6EB6FE2DD925B8A10C0112803290B8A5B8403293D1E1D1C27B02984F77AE5CA5C5DFBADD1194B1A1B3DAF9F043054F66BBB0911D0B3AD5D16EEFD9E8B315B493FDA7D47FF244C9C79BED7ED7DFF75D455B5B4BDE5BFB37E474E0D9673470F040C1AAFACC';
wwv_flow_imp.g_varchar2_table(143) := 'D6BFCDACFDAFFD58D67E0D49006A3F46B6A8616F6C5C83C964C1BAFAFD7E5DFCE00F65766773C275F6F8511D78FE3992802A05B3AFFF94FACAFCF25FF9AD6F6BCE2267CCB99838DDAF8F1FFAE7A21B4F31F9AF4A9DCE85C59200B830E8D568B21905D83F';
wwv_flow_imp.g_varchar2_table(144) := '325A70C732F3CC85EBD66BE1CDB7D87A63A00BED7AB66E51EF5B6F965C19603ED3DEDEAE056C145456D73B79F2A4FA4B6CF4932FC8E351F7B7BEAD769B2F33FD022597D5893FBFAE635BB6144EA43DDEFCD2BFB0DFEEF31CCAEA0ADC54650112802A03BB';
wwv_flow_imp.g_varchar2_table(145) := 'A9F852A3006663A08D3FFDA9FC5167EC5C66F60738FAE107EA7BFBADB2C23C6F5EAB162EEC92D92699EBEF0572B99C8EF7F468F04CE9F915E6CB7FC17537C81C3A65F7F5FEE72512A7FAB4F5B1C7944D15DE5D935FFFFCC9B1528004C04A4D9797654601';
wwv_flow_imp.g_varchar2_table(146) := 'F60D8FCA7C3116BA965C7685167CED1AC7486572591D79E71D9DFEF0FDB2DA54DFD8A8A54B9628E0F79775BF5B6E4AA5D33A7CE4A862A3236535B975D3A5EABEF63A7B6FF5FBA596F6BCF427F5ECDA59B0FD66E7BFE50D0DFCFA2FAB87705339022400E5';
wwv_flow_imp.g_varchar2_table(147) := '28714FD902664F00B33740A12B106DD025F7DDA7408B33E60298769A2460DF334F6BE870F12D6ACF9BF8EBEAB474D16235B0877B9E64746454478E1F53BAC8B91217F6A7791B3668D90D5F97CFE79C24CAAC2AD9F5D8A34AC6C70BFED931BFFE3BA3119B';
wwv_flow_imp.g_varchar2_table(148) := 'EF6F58F67F4AB871060448006600D94D8F305FFEC7C76245B70736C3B69DD77FDD512C66D876EF0BCF979D0498C677742C5087CB9709F6F5F5C9FC55EE35A77B9956DE72ABEDCF97F8DBF6E6B4EFC9273478EC684106F39A6355538382B6DFE3A0DC4873';
wwv_flow_imp.g_varchar2_table(149) := 'DF4C089000CC84B28B9E6106FF8F96180530BB035E7CD7DD0A39605F800B436B92805DBF7F58A303036547BCBEA1410BBB162A1C0E95FD1927DC188F27D4D3DBA3B1D1C90FBA99AC8D0DADAD5A6B4EF873C05AFF0BDB6776FDDBF687278B869553FF9CD0';
wwv_flow_imp.g_varchar2_table(150) := 'EB6BAF0D2400B51713DBD7A8D4F6C0A68173DAE66BF503DF97C7EBACD9CCB9744A075F7E49037BF75414C7F9EDEDEAE8E89059E3EDE42B9DCDA9AFBF4F03E5CCF2BF00A275CD5A75DF70A37C4167254A9964427B1E7F5423A74F170CBB79F7BF301A5173';
wwv_flow_imp.g_varchar2_table(151) := '1D874C39F9CFC66CB48D046036D41DFE4CB33DB0D91828964E176DE9CA9B6E91799FEBB42B679673BDFFBE7A3EFEB0AC2582E7DBEF37EF78172CD0DC39739C46926FCFC0D973EAEB3BA97491FD22BEDC70B3ADEFE2ABAF56C7C64B1D972C9AB69ED9F289';
wwv_flow_imp.g_varchar2_table(152) := 'F6BFF17AD1789B2FFEC5F55147F6091A35BB022400B3EBEFD8A7C7D3665F80E233BA83E1882E7EF0FBF2373639D2E1DCE1833AF0CA2B4AC70A1F963459C3A30D8DF9DD031B1B9CB15C7264745427FBFB355EC170BF71313BFC99F7FD73BA973BB27F2407';
wwv_flow_imp.g_varchar2_table(153) := '07B5EBC92794182BFCE7C4FCFA37EBFECD2B002E04AC162001B05A94F2BE10287554B0B971C9A64DF9F5DC72E8DCE6C4F8B8F63DFFAC62BD3D15F78C4843A3DADADAD4DC506FBBBD03CC9AFE73A3A33A7DEAB4C6CB5CDA772150B46BA1567EE366859B9D';
wwv_flow_imp.g_varchar2_table(154) := '391A62DA7AE0D9A78B6EF96BEE690F87D5E6B2F92115FF41E1035316200198321D1F2C2560F605383A165322932978ABF995B7E18E3B15E95C58AA38DBFEFB4C6A4247DF7947A73EFD784A6DA88B4435BF759E5AE6B4C8EFADED3902E61DFFE0B9B31A18';
wwv_flow_imp.g_varchar2_table(155) := '38A389F158C5ED3543FEED9B2FD7C24B2F95DF6193FD2EC4183FD1A3ED4F3CA16CA6F06B32BFC7ABD5CD8D8E9F17527127E103960990005846494193090C241232A70516BB5A162DD6AA7BEF73CC8E6E93B5D5CC0B18D8B94387FEFC4645F3022E2CCBEB';
wwv_flow_imp.g_varchar2_table(156) := 'F3AB714EB35A5A5A541F89D64C3260BEF44763319D3B775623E7868A7EA915EB07FE68BD965D779DE6AE5C2579BC8EFD0365268AEE7CE4A1A2AB45CCB2BFAE68582DC1A0631D68D8EC0B9000CC7E0C1C5D834C2E27B33950B10981E63F766BBEF54D35AF';
wwv_flow_imp.g_varchar2_table(157) := '5CE3680BD338B3E1CBFE3F3EAFB10A960A4E86E20B06D5D0D8A439CD4D6A88D6CF7832F0D997FE98CE0E0D6B6C6458990A26F64DD69EFAD656ADBCED5B0ACD9DE7F83E707AC7761D7CE5A5A2ED6C0C04B4C4BCFA71BC060D9C4D011280D9D477C9B3CD84';
wwv_flow_imp.g_varchar2_table(158) := 'C083A3C50F0A72FA84C0BF09753AA5813D7B74E4DD772A9E20385997F1F8FDAA8F46555F5FAF7024AA5024ACA0D76BD9BC01F33E3F99CD2A311ED7F8784C6363638AC562CA9558E5514EF736A7432EBAE822CDBB68A3CCF0BFD3AFE4F090763FF984E243';
wwv_flow_imp.g_varchar2_table(159) := 'E70A36D54CFC33B3FE4D12C0854035054800AAA94BD95F0894332170FE9AB55A76D337E4F1BBE33F7C667540DFA79FE8D4FE7D9A181EB6AEB7783CF2D5D5291C0E2B120C2918AC933F1090CFEF97DFE797CFE7CBFF65E613982FF74C4ECA6432F9BFD299';
wwv_flow_imp.g_varchar2_table(160) := 'B432E9B4D2A99492C9098D27138AC7E3CA986D7A7385CF78A8B4F2754D4D5A70C946B5AD5B9F9FEDEFD449A017BA186B33F1EFCCA18345B95A43212D88842B25E57E042A162001A8988C0F4C45C04C083C3832A6742E5BF4E3DDD75DAFF64D9BA7F208DB';
wwv_flow_imp.g_varchar2_table(161) := '7E263934A4135BB76860F74E651209DBB6A39C8A9B2FFBD6B5EBD5B971A3824DCDE57CC431F7F4BDFF9E8EBCFB76D1F6D479BD5AD9C4C43FC704BDC61B420250E3017252F5CA9910687EA5AEFDF6ED6A58BACC494D2FAB2D89F8B84E7EF0814EEDD836E5';
wwv_flow_imp.g_varchar2_table(162) := '8982653D68166EF20402EAD8B459ED9B3629148ECC420D66F791B1DEE3DAF6F863454751CC5C988E48486604800B81991020019809659E9117303B049A5701C54E0B34F785EA1B75F1830FCA17AD77A59C793FDCBF75AB06F6EDB5648EC06C229A99FDAD';
wwv_flow_imp.g_varchar2_table(163) := 'ABD768C1E597CBCCF370E355CE7B7FE36236FB59D6D8C0C43F377692596A3309C02CC1BBF5B1A96C56FB87474BBE0A30F30196DFF40DC925F301FEAE3FE4B28A9F3DAB533B776AF0E861A563B1CF66DA5BF81EBE2A7DD0CC3F0806E58F46D5BA62955A57';
wwv_flow_imp.g_varchar2_table(164) := 'AD5278AE39FAD9A5F3D9D329ED7FF9259D2971368419FA373BFE71DA5F557A258516102001A06BCCB8C0D9645227C6E3F91181629753CF0AA8143C9BCD68EC44AF060F1DD6D0C95E2506076BEE158199C11F6A6D55CBE2A59AD3BD54F5ED1DF23A782D7F';
wwv_flow_imp.g_varchar2_table(165) := 'B931ECFFE07D1D7EE7ADA2B79BA1FF250DCCFA2FD794FBAC132001B0CE92922A10E88D8D6BB0C4DAF140389C9F0F10ED5A542811CAAC0000163D4944415441C9CEBE359333CBF1C63576FAB4CE1ED8A7D1234767ED358199C91F5DB850739674AB71D122';
wwv_flow_imp.g_varchar2_table(166) := '058341F9F8D2FFA2039AF7FEDB1F7F2CBFD2A2D83537185457D49DAF479CFDA7B5F65B470250FB3172640DCBD92028FF5E745EAB363CF03D79031C85FAE58E6076174C25134A9C3BA7D8E9338A8F8D28191B532A36AE6C6A4299785C132323531E2D30EF';
wwv_flow_imp.g_varchar2_table(167) := 'EF7DA1A07CE170DEBFAEA95975C13AD5B7CC5578DE3C051BEA150886E4E14BFFEFFE8CA663A3DAF9F0C325CF4130EFFDCDD0BF59FBCF85C04C0B9000CCB438CFFB42A0DCF90073172FD18A3BEF96D7051BC54CB77BE49493D9A52F151B53726444C9F198';
wwv_flow_imp.g_varchar2_table(168) := 'E2A3B1FCFF9F899BBF8F2B13370942EA8B8D7CCC46425EB34F4038A24034225F38AA40B45E9186A8CC3904E6CBDE17A8CBEF1B60FE8FAB84403AA5032FBFA48132DEFB2FAA8F72D21F1D6AD6044800668D9E071B8172E7032CDEB8317F6A20BF36A7DE6F';
wwv_flow_imp.g_varchar2_table(169) := '4C726006A3CF0F496733197972399904C05C1ECF675FEF7CC94FC3389755CF5B6FA9F7E30F4B166276FB6BAE6364AB241437544D8004A06AB4145CAE80392CC8EC1150F4F278B4F4CAAFAAE32B57965B2CF72130E3023D6FBDA9DE8F3FE2BDFF8CCBF3C0';
wwv_flow_imp.g_varchar2_table(170) := 'A90890004C458DCF582A90CEE574B4C48141F95FA83E9F565C73ADE66DBCD4D2E7531802D317C8E9F48E1D3AF4EACB25BFFC79EF3F7D6D4AB0468004C01A474A99A6803930E8C0C8E8E783D4850B3349C0FADBEF70E54E81D324E6E3551418DABF477B5E';
wwv_flow_imp.g_varchar2_table(171) := '78A1E497BF59EFBFC41CDAE477FEC14755E4A6688B0448002C82A498E90B0C4D4CE8F8D878C924C06C17BCFEEE7B581E387D724AB04060F4C821ED7CF619E53299A2A59999FE66C6BF1901E042A0160448006A210AD4E10B013329B027365E522458DFA0';
wwv_flow_imp.g_varchar2_table(172) := 'B537DFACF0E2A525EFE50604AA2530D67B5C7B9F7B5613F178D147F83C9EFC097F2DC160B5AA42B908542C40025031191FA8B640398706993A849A9BB5EE9BDF56B0ADBDDA55A27C04FE4E20317846BB1E7B54C978F184D5ACAA680B87F27F7121504B02';
wwv_flow_imp.g_varchar2_table(173) := '2400B5140DEAF28540592B0324859BE768ED1D772998DF6F9E0B8199113007FCEC7CF4F74A8E8D967C203BFD9524E286591220019825781E5B5AA09CED824D29E694B975B7DDA610AF034AA372C7B405CC3BFFFD2FBE58F297BF7950632020B3DE9F9DFE';
wwv_flow_imp.g_varchar2_table(174) := 'A6CD4E0155102001A8022A455A2360B60B364980991C58EAAA0B87B5E29AEBD4B46E7DA95BF9F7084C5120A791FDFBB4FFB5574BBEF33FFFE5BFA4A19EBD13A7A8CDC7AA2F4002507D639E300D017362E0A191518D9798616D1EE1ABABD38AEB6E50CB7A';
wwv_flow_imp.g_varchar2_table(175) := '9304B065ED34D8F9E8970572599DDDB54BFB5E7BA5E46C7FF35133D37F6943BDCCE43F2E046A558004A0562343BDBE10306706988D82CA4902CC84AB65D75DA7D68D97E6B7B6E54260FA0239F5BDFFBE8EBCF78ED947B96471219F4FCB1A1BE4A7FF95B4';
wwv_flow_imp.g_varchar2_table(176) := 'E286D9152001985D7F9E5EA680D928A837162B2B0990C7A3251B37AAE3DAEB393BA04C5F6E9B5CC0ACEDEF7DF30DF56EDB5A72931F5382F9F2376BFD035E2FA408D4BC000940CD87880A9E173023018747C79428E3758049023A56AFD5D29B6E92FC0110';
wwv_flow_imp.g_varchar2_table(177) := '11A858209B4CE8D8DB7F51DFF6ED65FFF2E7CBBF62663E308B022400B388CFA32B1730E706F48CC534924A95F5E179CB96ABFBE65BE40F85CBBA9F9B103002E9D8A80EBFFAAACE1C3A58168879E76F26FC31EC5F161737D5880009408D04826A942F6092';
wwv_flow_imp.g_varchar2_table(178) := '801365AE0E30A536B4B468D9ADB729D2D651FE43B8D3B502E3A7FA74E08F2F2876EE5C59062CF52B8B899B6A508004A0068342954A0B98A958C7C762652D1134A5F942212DDD7C99DA365DAA1CAF044A03BBF18E744AA7B76FD3A1B7FE52D64C7F436436';
wwv_flow_imp.g_varchar2_table(179) := 'F9E98C465873E2C6FEE2803693003820886E6EC2A97842FD25F661FFC2E7F379019D575CA1BA16760E7473BFF972DB53C3433AF6EE3B3ABD6777592CE7B7F79D1F0EF1E55F961837D5A20009402D46853A552450EED901E70B6D6C6CD2B29B6EE220A18A';
wwv_flow_imp.g_varchar2_table(180) := '949D7B73ECE8611D7AF5558D8D0C97D548B3B6BF35C4DEFE656171534D0B9000D47478A85CB902E59E2278BE3CAFD7AB159B36A9E58A2BE50972484BB9CE8EBA2F9BD1A9BFBCA9439F7E5276B3CC96BE9D9CEA57B61737D6B60009406DC787DA55206056';
wwv_flow_imp.g_varchar2_table(181) := '0698C98113D96CD99F9ABF64A9965C79A5FC1D9D657F861BED2F3071BA5F3DEFBCA353470E97DD18B3C6BF2B1AC9EFF2C78580130448009C1045DAF085403293514F6C5CB174BA6C95866854DD575EA5E8FA0D92D757F6E7B8D17E02B96442237B77ABE7';
wwv_flow_imp.g_varchar2_table(182) := 'A38F3552E690BF69A599E9BF201256D047FFB05FD4A97121011200FA86E304CC0A01331230984C96DD3633A96B7E6BAB165E7BADEA162DE62C81B2E5EC73E3C4F1A33AFAE73FEBCC99818A2A6D66FA9B2F7F4EF4AB888D9B6D20400260832051C5A90998';
wwv_flow_imp.g_varchar2_table(183) := '5304CD6982E654C1722F9FD7ABAE95ABD476E555F2CF6929F763DC57C302A98153EAFFF043F51F38A0543653764DFD1EAF3AA36135D7D595FD196E44C04E022400768A1675AD58A0A233042E28BDA9A9595D9B2F55C38A55F246A2153F970FCCBE80279D';
wwv_flow_imp.g_varchar2_table(184) := 'D2F0EE9D3AF2DE7B8AC562155528E2F36901EFFB2B32E366FB099000D82F66D4B842013302604602CC8840A557C7A245EAFAEAD50A3049B052BA59BC3FA754DF49F5BCF986FA4FF6555C0FF38BDF6CEEC3B6BE15D3F1019B099000D82C605477EA0266BF';
wwv_flow_imp.g_varchar2_table(185) := '80FE7842D90A5E0998A7E5878257F15A60EAF233F7C9F4B9B3EA7BF71D9DDCBFAFA2573FA686E61D7F7B38A4792136F799B988F1A4D9142001984D7D9E3DE302661460209E28EF58E12FD52E1A8D6AE1DA356A5A7FB17CCDCD9287235F673C80051E68DE';
wwv_flow_imp.g_varchar2_table(186) := 'F38FEEDDAD13BBF768B4C2E17E53244BFC6A2592D4632605480066529B67D58480394CA87F3C5ED12A810B2B6EE60774AC5CAEA6D56BE59BD74A22305B51CD65953A33A0A103FB7562D76E8D8F8E545C13B3FAA32558A7F6489821FF8AF5F880DD054800';
wwv_flow_imp.g_varchar2_table(187) := 'EC1E41EA3F65013341D09C2350EED1C25F7E509DCFA78E152B357FF36605E6B74FB91E7CB032815C2EA7F8E97EF57DF8A1060E1D54B6828D9F2E7C9259DBDF1E0E2BEC676D7F6511E06EA7089000382592B4634A02663EC0583AADBEF1B81299F297885D';
wwv_flow_imp.g_varchar2_table(188) := 'F8B03AAF576647C1D6F51B14EEEE6633A12945A2F487B2A9098D1D39AC939F7EAAE1FE3E65A6F8C56F86FB5B43C1FCF23ED6F69776E70EE70A90003837B6B4AC0201B352C02401679313CAA9FC7D032E7C84DFEF575B67A7E6AD5DAF507BBB7C4D4D2403';
wwv_flow_imp.g_varchar2_table(189) := '15C460D25B73594D8C8C68E8D0419DDAB5536367CF967D54EF97CB335FF673EAEAD4160E29E065FEC67443C3E7ED2F400260FF18D2020B05A6FB5AE07C55C2E6B4B8B56BD5B2B45BE1CE2EE5FC010B6BE9FCA25289B8464F9CD0E0E1833A77F888D2B1B1';
wwv_flow_imp.g_varchar2_table(190) := '69359AE1FE69F1F161870A90003834B0346BEA02E6B580592D3098482A9EC94E7944C0D4C02C21ACAF8F6ADECA956A5ABE52750B16C8C3EA81BF0B8E1975C964B21A3FD9ABC19DBB74F6E81125E3E3530F627E33678F227E5F7E925F535D9DCC31BE5C08';
wwv_flow_imp.g_varchar2_table(191) := '20F0570112007A03020504CC6B81E189099D8A272A3A61B010A8DFEB555353935A972F53E3F2950AB4CE77FDC8403699D078DF499D3B7C5803E64B7F78586692DF74AFF3EFF9E70483E26B7FBA9A7CDEA90224004E8D2CEDB24CC07C1D8DA6523A1D4F54';
wwv_flow_imp.g_varchar2_table(192) := '74CA60B10AD485C3AA6F9DAF96EE6ED5B7B529D8D028AFF9B232FBCE3B75842097556E62421389841223C31AEEEFD7D091238A9DEA572E95B2245EE6A8DEF9E1901A0201BEF82D11A510270B90003839BAB4CD5201F36AC02C193C937F3590A97847C142';
wwv_flow_imp.g_varchar2_table(193) := '953143D375C1A01ADA3BD4DCD5A54867A7EA9A9BE58B446DFFBA2097CB2A1D8B6962E89C867A7A357AA257A3FDFD4A4F4C7DB2E5971DCDE4BE7ABF5F734341990480A17E4BBB3D8539588004C0C1C1A569D511389F084C7547C1726A15F2FB156D6850D3';
wwv_flow_imp.g_varchar2_table(194) := 'BC79AA5FD0A5D0FC79F2CE6D95371CAEDD11825C56D9B131A5074E2B797A40A3A7FB357CE68C864746A6BC56BF98D5855FFC66921F170208542640025099177723F03702B1743A3F2230958386CAA5F4783CF206020A45A30A04020A46EB15A9AF57B0B9';
wwv_flow_imp.g_varchar2_table(195) := '5975F5F50A3537CB1B0ACB635E214422F9E96F55BBB219658787954DC435118B293936A689A1218D9D3BA7646C4C89F18492C9B8944E5BF22E7FB276982FFECF66F58714F4B1894FD5624DC18E172001707C886960B505CC1C81443A937F3D60E60A980D';
wwv_flow_imp.g_varchar2_table(196) := '85CC04C26A5F66A8DBFC9FDFE755B0B151A1B9F3F2AF0E82D1A8BC81A0FC41BF7C81BAFCA88149223CFE80BC7E7F3E3DF8728A606A6BFECA7EFEC59D4BA7948DC795494D289D4C2B9B4A2A991FCA1FD2C4C89026C6624A8EC7F32B2466AAAD66629F79B7';
wwv_flow_imp.g_varchar2_table(197) := 'DF5C1790D985B18A694EB54347F908D4840009404D84814A3845C07C199A518173C9897C4250E9C983D576304B10BD3EAFBC5E9FFC7E9FB2392993492B974EE7FFB779675F4B97D965D17CE937D60578BF5F4B81A12E8E10200170441869442D0A9CDF66';
wwv_flow_imp.g_varchar2_table(198) := '786422A5E18994D235F6E55A8B66A64E6664C36CD33B2758A7C8E72316B55A57EA85809D054800EC1C3DEA6E0B0133B46E4606C652298DA7334A6632F9D7041353DCCBDE168DAEA09266B3A4A0CF9BFFB2371BF79899FC66CF0486F82B40E45604A62040';
wwv_flow_imp.g_varchar2_table(199) := '023005343E82C074044C32601280F1743A9F1098BF9B238A6BED75C174DA58ECB366129FDF6376E9FBEC0BDFFCDDBCDF67F95EB5C4291781C9054800E81908D480402A9BCDCF1D184BA5F313099D363A70FE5D7E7DC09FFF85CF613C35D0E9A882EB0548';
wwv_flow_imp.g_varchar2_table(200) := '005CDF0500A82581F3AF0BCC51B726214864B2F95706E96C363F4A90CA9A79F7D55F61305513F3456F7EDD9B59FAE64BDEFCC20FFB7CF9217DF3CB9F61FDA9CAF23904AC172001B0DE941211B05CC08C1098DD074D22609202F3FF9FFFEBFC323C338BDF';
wwv_flow_imp.g_varchar2_table(201) := '5CD54A10F28B0E3D7F5D4268FEFF3AEF5FBFEC433E6FFE8B3E68FE627DBEE57D800211B05A8004C06A51CA43600605CE8F18A432264148E747084C4260E6135CF8F77C6260FEF9E77533FFDE240C5E8FF9EBB3DFE55EB33FC0E7FFDBBC8F3FFFCFCFFF6F';
wwv_flow_imp.g_varchar2_table(202) := 'F37733592FE8F529E0F3E6DFD9F38B7E0683CDA310B0588004C062508A43603605F21BFA7CBE09D1F917055F7E6130D9697BE7BFF8CFD7FDFC17FB855FF0F9CD8466B3713C1B01042C152001B09493C2104000010410B0870009803DE2442D1140000104';
wwv_flow_imp.g_varchar2_table(203) := '10B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000';
wwv_flow_imp.g_varchar2_table(204) := '010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B';
wwv_flow_imp.g_varchar2_table(205) := '0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5';
wwv_flow_imp.g_varchar2_table(206) := 'A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000';
wwv_flow_imp.g_varchar2_table(207) := 'D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C052';
wwv_flow_imp.g_varchar2_table(208) := '0112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040';
wwv_flow_imp.g_varchar2_table(209) := 'C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000';
wwv_flow_imp.g_varchar2_table(210) := '010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C210';
wwv_flow_imp.g_varchar2_table(211) := '4000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38';
wwv_flow_imp.g_varchar2_table(212) := '514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B054800';
wwv_flow_imp.g_varchar2_table(213) := '2CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B08';
wwv_flow_imp.g_varchar2_table(214) := '9000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040';
wwv_flow_imp.g_varchar2_table(215) := 'C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A43000104';
wwv_flow_imp.g_varchar2_table(216) := '1040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D11';
wwv_flow_imp.g_varchar2_table(217) := '4000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493';
wwv_flow_imp.g_varchar2_table(218) := 'C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC21400260';
wwv_flow_imp.g_varchar2_table(219) := '8F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B05';
wwv_flow_imp.g_varchar2_table(220) := '48002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B5440001041040C0520112004B39290C010410400001';
wwv_flow_imp.g_varchar2_table(221) := '7B089000D8234ED4120104104000014B0548002CE5A430041040000104EC214002608F38514B0410400001042C152001B09493C2104000010410B0870009803DE2442D114000010410B0548004C0524E0A430001041040C01E022400F68813B544000104';
wwv_flow_imp.g_varchar2_table(222) := '1040C0520112004B39290C0104104000017B089000D8234ED4120104104000014B0548002CE5A430041040000104EC21F0FF03E0B401A541DE81590000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64580099215660048491)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_251479_logo_jpg
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'FFD8FFE100BC45786966000049492A000800000006001201030001000000010000001A01050001000000560000001B010500010000005E000000280103000100000002000000130203000100000001000000698704000100000066000000000000006000';
wwv_flow_imp.g_varchar2_table(2) := '0000010000006000000001000000060000900700040000003032313001910700040000000102030000A00700040000003031303001A0030001000000FFFF000002A0040001000000F401000003A0040001000000F401000000000000FFE10E1468747470';
wwv_flow_imp.g_varchar2_table(3) := '3A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B633964273F3E0A3C783A786D706D65746120786D6C6E733A783D2761';
wwv_flow_imp.g_varchar2_table(4) := '646F62653A6E733A6D6574612F273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323273E0A0A203C7264663A4465736372697074696F6E';
wwv_flow_imp.g_varchar2_table(5) := '207264663A61626F75743D27270A2020786D6C6E733A4174747269623D27687474703A2F2F6E732E6174747269627574696F6E2E636F6D2F6164732F312E302F273E0A20203C4174747269623A4164733E0A2020203C7264663A5365713E0A202020203C';
wwv_flow_imp.g_varchar2_table(6) := '7264663A6C69207264663A7061727365547970653D275265736F75726365273E0A20202020203C4174747269623A437265617465643E323032342D31302D32363C2F4174747269623A437265617465643E0A20202020203C4174747269623A4578744964';
wwv_flow_imp.g_varchar2_table(7) := '3E61643062373938642D663133372D343630312D383735612D3934663232363866353632643C2F4174747269623A45787449643E0A20202020203C4174747269623A466249643E3532353236353931343137393538303C2F4174747269623A466249643E';
wwv_flow_imp.g_varchar2_table(8) := '0A20202020203C4174747269623A546F756368547970653E323C2F4174747269623A546F756368547970653E0A202020203C2F7264663A6C693E0A2020203C2F7264663A5365713E0A20203C2F4174747269623A4164733E0A203C2F7264663A44657363';
wwv_flow_imp.g_varchar2_table(9) := '72697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27270A2020786D6C6E733A64633D27687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F273E0A20203C64633A7469746C653E';
wwv_flow_imp.g_varchar2_table(10) := '0A2020203C7264663A416C743E0A202020203C7264663A6C6920786D6C3A6C616E673D27782D64656661756C74273E4C6F676F205469656E64612045636F6CC3B367696361204D696E696D616C69737461204265696765202D20313C2F7264663A6C693E';
wwv_flow_imp.g_varchar2_table(11) := '0A2020203C2F7264663A416C743E0A20203C2F64633A7469746C653E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F75743D27270A2020786D6C6E733A7064663D27687474703A2F';
wwv_flow_imp.g_varchar2_table(12) := '2F6E732E61646F62652E636F6D2F7064662F312E332F273E0A20203C7064663A417574686F723E48C3A963746F72204C75676F20476162696E6F3C2F7064663A417574686F723E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A44';
wwv_flow_imp.g_varchar2_table(13) := '65736372697074696F6E207264663A61626F75743D27270A2020786D6C6E733A786D703D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F273E0A20203C786D703A43726561746F72546F6F6C3E43616E76613C2F786D703A4372';
wwv_flow_imp.g_varchar2_table(14) := '6561746F72546F6F6C3E0A203C2F7264663A4465736372697074696F6E3E0A3C2F7264663A5244463E0A3C2F783A786D706D6574613E0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(15) := '202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(16) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A20202020202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(17) := '2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(18) := '202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A2020202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(19) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A20202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(20) := '2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(21) := '202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A2020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(22) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A20202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(23) := '2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(24) := '202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A2020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(25) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A20202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(26) := '2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(27) := '202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A2020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(28) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A20202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(29) := '2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(30) := '202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A2020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(31) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A20202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(32) := '2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(33) := '202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A2020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(34) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A20202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(35) := '2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(36) := '202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A2020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(37) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A20202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(38) := '2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200A3C3F787061636B657420656E643D2777273F3EFFDB';
wwv_flow_imp.g_varchar2_table(39) := '00430006040506050406060506070706080A100A0A09090A140E0F0C1017141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D302D283025282928FFDB0043010707070A080A130A0A13281A161A2828282828282828282828282828';
wwv_flow_imp.g_varchar2_table(40) := '282828282828282828282828282828282828282828282828282828282828282828282828FFC000110801F401F403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B51000020103030204';
wwv_flow_imp.g_varchar2_table(41) := '03050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A8384';
wwv_flow_imp.g_varchar2_table(42) := '85868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301010101010101010100000000000001020304050607';
wwv_flow_imp.g_varchar2_table(43) := '08090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A63';
wwv_flow_imp.g_varchar2_table(44) := '6465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F';
wwv_flow_imp.g_varchar2_table(45) := '00FA8E8A28A430A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2';
wwv_flow_imp.g_varchar2_table(46) := '8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2';
wwv_flow_imp.g_varchar2_table(47) := '8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2';
wwv_flow_imp.g_varchar2_table(48) := '8A2800A28AA9A8EA365A65B99F51BBB7B5847579E408BF9934D26F613696E5BA2B83BAF8A1A23CCF068506A3AF5CA9C14D3AD9A40BF563818F704D567D6FE20EAA31A5F866C3498CF49B52BAF30E3D762723F1AD561E7F6B4F53275E3D353D169323D6BC';
wwv_flow_imp.g_varchar2_table(49) := 'EC7857C6FA88CEADE3616A87AC3A7D9AAE3E8E7E6A72FC29D2E619D5F57D7F5427EF7DAAFD883F82E29FB3A6B797DDFD217B49BDA276D79AAE9F6448BCBEB580FF00D359557F99ACC93C69E188CE24F1168EADE86F63CFF3ACAB3F85BE0BB41FBBD06DDF';
wwv_flow_imp.g_varchar2_table(50) := 'DE67797FF4226B560F05F862DF1E4F87B49523BFD923CFE78A4D525B3634EABEC33FE139F0AFFD0C7A47FE0647FE349FF09D7853FE863D23FF000323FF001ABE9E1DD153EE691A7AFD2D907F4A73E81A3BFDFD2AC1BEB6E87FA52FDDF98FF79E4505F1BF';
wwv_flow_imp.g_varchar2_table(51) := '855BA789347FFC0D8FFC6AF5B788745BA205AEADA7CC4F4F2EE51B3F91AAF3784BC3B38C4DA0E9520FF6AD233FD2B36E7E1C783EE4112787EC173FF3CD3CBFFD0714D7B2EB717EF7C8EB432B0054820F420D2D79F37C24F0CC649D346A3A6B75CDA5EC8B';
wwv_flow_imp.g_varchar2_table(52) := '8FCC9A8C7813C4361FF203F1DEAD181D12FE34BBFC3271FCA9FB3A6F697DEBFE1C39EA2DE27A2D15E7424F897A4B13241A1EBD08E82376B694FE7F28A917E24369FC78ABC37ACE8EA3EF4FE57DA205FF0081A7F850F0F2FB2D3055E3F6B43D068AC5D0BC';
wwv_flow_imp.g_varchar2_table(53) := '53A1EBCA0E91AADA5D3119D8920DE3EAA791F88ADAACA5171D1A355252D98514515230A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2';
wwv_flow_imp.g_varchar2_table(54) := '8A2800A28A2800A28A2800A28A2800A290900124E00EF5C1EB3F11ED3EDAFA67852CE6F10EAE3831DAFF00A988FABCBF740FF3C55C29CA7B22275230DCEF188504B1000EE6B88D6BE2668565766C74D371AD6A7D05AE9B1998E7DD87CA3DF9E3D2B323F0';
wwv_flow_imp.g_varchar2_table(55) := '46BDE28C4DE3DD69FECCC73FD93A69314207F75DBABFF9C1AEE743D0F4BD06D05B68F6305A43DC44982DEE4F527DCD6BCB4E9EEEEFF033E6A93DB447188BF103C4872ED67E15B06FE1502E6E88FAFDD1FCC55CD3FE18E831DC8BBD63ED5AEDF0FF0096FA';
wwv_flow_imp.g_varchar2_table(56) := '9CC66FC02FDDC7B62BB9A2A5D796D1D3D06A8C7796A436D6D05AC290DB431C3120C2A46A1547D00A9A8A2B16EE6A925B05145140C28A28A0028A28A0028A28A0028A28A00292968A02C72BAFF803C33AE3996F34A852E73B85C5BFEE6407D772E327EB9A';
wwv_flow_imp.g_varchar2_table(57) := 'C66F0CF8BFC3E377863C48752B75E965AD2F9848F6957E6FA0E95E87456B1AF34ACF55E6652A317AAD0F3B8BE257F654A96FE36D16FB42949DA2E36F9F6CC7DA45FE58E3D6BBAD3351B3D52D12EB4EBA86EADDFEEC9138653F88A9A7862B885E29E34962';
wwv_flow_imp.g_varchar2_table(58) := '71864750411E841AE0B52F8676905DBDFF0083EFEE7C3BA81E4FD94E6090FA3447823D8607B55FEEA7FDD7F813FBC879A3D068AF348BC6BAE785596DFC7FA59FB283B46B1A7A99203EEEBD53FCE057A0697A9596AD651DDE9B750DD5B49F76489C303FFD';
wwv_flow_imp.g_varchar2_table(59) := '7F6ACE74A50D7A170AB1969D4B74514566681451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514D665452CC405032493C0A0075731E30';
wwv_flow_imp.g_varchar2_table(60) := 'F1AE95E1711C370D25D6A53710585B2EF9A527A614741EE7F0CF4AC0D4FC5FA9F89EF25D27E1F223A236CB9D6A55CC107A88FF00E7A37E9D3B72373C1DE08D33C345EE54BDF6AF37371A8DC9DD2C84F5E4FDD1EC3F1CD742A71A7AD4FB8C1D494F487DE7';
wwv_flow_imp.g_varchar2_table(61) := '3917873C4BE36226F195D3695A3B72BA3D93E19D7D2693BFB81FA1AEFB46D234FD16C92CF4AB386D2D93A244B81F53EA7DCF357E8A89D594F4D9170A4A3AEEC28A28AC8D028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0';
wwv_flow_imp.g_varchar2_table(62) := '028A28A0028A28A006BA2C88C8EA195860823208AE0356F87A6CAF5F54F035F1D0B516E5E0519B59FD9E3E83EA071E99AF41A2B485494362274E33DCF3FD07E20343A8A68DE37B31A26AE788E4639B6B9F78DFA0FA13ED9CF15DFE73D2B3F5DD174ED7B4';
wwv_flow_imp.g_varchar2_table(63) := 'F7B2D5ED22BAB67FE071D0FA83D41F71CD79FAC3E21F86E736FF0069D7FC24BD62FBD7564BEDFDF41E9DBD80C9D396157E1D1F632E6952F8B547A8D159DA0EB5A7EBFA6C57FA4DD47736B20E1D0F43E847507D8F35A35834E2ECCDD34D5D051451486145';
wwv_flow_imp.g_varchar2_table(64) := '145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451595E26D7F4FF0D6912EA3AB4E22B78F803AB3B76551DC9A718B93B213928ABB2C6B1AA5968DA6CF7FA9DC25BDA42BB9';
wwv_flow_imp.g_varchar2_table(65) := 'E473C0FF0013E80726BCE20835AF89CEB35F09F47F071398ED94ED9EFD7B1723EEA1F4EFEFC116747F0FEA1E37D420D77C690B41A746DE669FA2B7DD51DA4987F137FB27A7E62BD28000000600AE8BAA3A2D65F91859D5D5EC56D36C2D74CB186CF4FB78';
wwv_flow_imp.g_varchar2_table(66) := 'EDED615DA91C6B80A2AD51457336DEACE84ADA20A28A2800A28A2800A28A2800A28A2800A8E79E2B789A5B895228D4659DD8003F134F3D2BE71B4B7BEF8CBE3DD463BDBF9ADB40D3C9D91447A2EE21700F1B9B049620FA7A574E1F0FED6F293B25B9857A';
wwv_flow_imp.g_varchar2_table(67) := 'DECEC92BB67BFE9FACE99A8C8C9A7EA36774EBD5619D5C8FA806B42BC0FC7BF07EDBC3BA0CDAE7852FAFE2BDD3D7CF657901255792CAC00208193F857A3FC21F13DCF8ABC196F77A82B0BE85CC13315DA2420021C7D411D38CE6AAAE1E0A9FB4A72BA269';
wwv_flow_imp.g_varchar2_table(68) := '56939F24D599DAD2330552CC7000C934B591E30BAFB0F85359BACE0C1673483EA109AE68C79A491BC9F2A6CC4F09FC49F0DF8A7515B0D2AEE5378CA5C45242CA481D79C63F5AECABE39F851732691F103C397AE0AC37170600DD8EFCC67F22C2BEC6AEEC';
wwv_flow_imp.g_varchar2_table(69) := 'C7091C34D461B3472E0F10EBC5B96E8292BC3BF696F141B7B2B2F0EDA4844B3917373B4F2114FC83F1604FFC0456C7ECDBF6893C11773DCCD2CA64BD609BDCB614220E33EF9A8960E51C3AAF27BF4296293ADEC923D6A8A28AE23A828A28A0028A28A002';
wwv_flow_imp.g_varchar2_table(70) := '8A28A0028A28A00F3DF10F836FB4CD4A6D7FC072A59EA4FF0035CD83F16F7BF51D15FDC63F0C935B5E08F185A789EDE58CC4F65AB5A9D97761371242DFD57DEBA8AE3BC6DE0D1ACCF16ADA35C7F66F892D466DEF1070FF00EC483F894F4F6FCC1E88CD54';
wwv_flow_imp.g_varchar2_table(71) := '5CB53EF307074DF343EE3B1A2B8EF0478C0EB134DA4EB56FFD9DE24B318B8B463C38FF009E919FE253D7DBF227B1ACA70707666B09A9ABA0A28A2A0A0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280';
wwv_flow_imp.g_varchar2_table(72) := '0A28A2800A28AA9AAEA16BA569D717DA84C905AC085E4918F007F9ED4D26DD909B495D957C4BAF58786F479F52D566115BC43A7F13B76551DC9F4AE37C2DE1FBEF136AF178AFC6509465F9B4CD2DF95B44ECEE3BC8783CF4FAE02C5E19D3EE7C75ADC3E2';
wwv_flow_imp.g_varchar2_table(73) := 'AD7E068B49B739D1F4F9476FF9EEE3FBC7B7A75F427D32BA1B54572C77EA6093AAF99EC145145731D0145145001451450014553D5752B2D26C65BCD4AE62B6B58865E491B007FF005FDAB81FEDFF001278E18C7E1385B47D0DB83ABDDC7FBC957D618CFF';
wwv_flow_imp.g_varchar2_table(74) := '00E847F422B485272D764673A8A3A6ECEAFC53E2FD13C2F007D5EFA38A461FBB817E6964FF00750727EBD2B988F58F1A78AC8FEC4B04F0DE98DD2F3514F32E187AAC3D07FC0BF3ADCF0C780F44F0FCC6EE281EF35363992FEF1BCD9D8FAEE3D3F0C57555';
wwv_flow_imp.g_varchar2_table(75) := '6E74E1F0ABBEEC8E59CF593B08B90A03105B1C9031934B451581B887A57CD31DCEA5F06FE20DFCB3D8BDCE897CC4232F01D376576B74DEB92083EFEA0D7D2F552FE1B1BC8FEC77F1DBCE928FF5130560FF00F013D6BAB0B5FD95E32578BDCE7C451F6966';
wwv_flow_imp.g_varchar2_table(76) := '9D9A387D17E2FF0083B55D88FA83594AFF00C17711403EADCAFEB5DFDBCD15C40935BC892C4E372BA302AC3D4115C07883E107847568A4F2B4FF00ECFB861C4B68E5369FF77EEFE95C27C0FBFBFF000E78FB56F065ECE66B6432188765743F794760CB92';
wwv_flow_imp.g_varchar2_table(77) := '47B0ADA5428D5839D06EEB74CCA356A539A8D55BF53DFAB8AF8CD75F63F865AF499C168445FF007DBAAFFECD5DAD7967ED1F77F67F87462CE3ED377145F5C65FFF0064AE7C2479ABC179A36C4BB52933C7754D39EC7E14783B5E806D962BF9C6EF72E4AF';
wwv_flow_imp.g_varchar2_table(78) := 'FE8A35F542EA56DFD8E35379025A791F682EC7809B7767F2AF1ED5F43F3BF66AB48D5732416D1DF2FB65F7B1FF00BE59AB0FC47E30967F82DE18D174F2D26A5AA20B328BF7BCB89B663EAC428F704D7A75A0F156F2935F2DCE0A53FABDFCD2399BE79BC4';
wwv_flow_imp.g_varchar2_table(79) := 'D6BE33F1C5FA9112E2D2CD5BB33B2A607FBB19E7DDB35EDFF01AD7ECDF0BF4A2461A632CA7F19180FD00AE0BE2E6911F843E0E689A14257CC7BA433B0FE36DAECE7FEFAC63DB15EB5F0DED7EC7E02F0FC2461858C4CC3DCA827F53518CADCD87496D7D3D';
wwv_flow_imp.g_varchar2_table(80) := '12B1585A7CB5B5DEDF99D2514515E39EA183E2DB9F1059DA433F86AC6D2FDD1F33DBCF298D9D31D11BA06CFAF1591E1FF88DA46A37A34ED4D27D13571C1B3D417CB2C7FD963C30F4EE7D2BB5ACBF10787F4AF10D99B5D66C60BB87B075E57DD5BAA9F706';
wwv_flow_imp.g_varchar2_table(81) := 'B584A16E59AF9994A33BDE2CD4A2BCD5F44F13F823F7BE179E4D73445E5B4ABC93F7D10FFA632771FEC9FC324D751E11F18695E2885C58C8F15E43C4F6570BB2784F70CA7F98E29CA8D973475411AAAFCB2D19D151451589A85145140051451401CAF8EB';
wwv_flow_imp.g_varchar2_table(82) := 'C210F892DE2B8B698D8EB967F3D95F47C346DE87D54F7155FC07E2D975679F47D7A1165E25B1E2E6DCF0241DA58FD54FE99FA57655C878FBC26DAE476FA8E9330B2F1169E77D9DD0FD637F543C8F6CFD41DE9CD49724FE5E4613838BE781D7D15CBF80FC';
wwv_flow_imp.g_varchar2_table(83) := '549E24D3E54B984DA6B166DE4DF59B7DE8A41DC7AA9EA0FF0085751594E0E0ECCD632525741451454941451450014514500145145001451450014514500145145001451450014514500145145001451450025798CB9F897E2630A9CF83B499BF78474D42';
wwv_flow_imp.g_varchar2_table(84) := 'E17F87DE35FC8FBF6D0F883AA5DEA9A8C1E0DF0FCA63BFBD4DF7B72BCFD92DBF88FF00BCDD07D7B641AECB45D32D346D2AD74ED3E2115ADBA04441E9EA7D49EA4F726BA23FBA8F3757B183FDECB97A22E2A8550140007000A5A28AE7370A28A2800A28A2';
wwv_flow_imp.g_varchar2_table(85) := '800AE53C65E33B4F0F3C3656F0C9A96B973C5B69F6FCBBFF00B4DFDD5F73EFE86B3FC55E2DBC9F566F0D783A34BAD708FDFDC3730D829FE273DDBD17FF00D4757C1DE0FB1F0DA493867BCD5AE39BAD42E0EE9666EFCF65F451E83AF5ADE30505CD53EE31';
wwv_flow_imp.g_varchar2_table(86) := '73737CB0FBCC4D1FC1779ACDEC7ACF8FE58EFAF57E6B7D3939B5B4FF0080FF001B7A939FC700D7A0001400A3007614B45673A8E7B970A6A1B05145150585145140057857C59F0EEB3E1EF1CDB78EBC376ED72AA55AE63452C5182ED2481CED64E091D39A';
wwv_flow_imp.g_varchar2_table(87) := 'F75A4ADF0F5DD19735AE8CAB5255636D8F136FDA034C3623CBD16F9AFC8C7945D766EF4DDD7FF1DA3E0CF86359BDF166A3E35F11DBB5AC973BFC885D4AB12E796C1E4281C0CF5CFE7ECAB656AB399D6DA1131FF968106EFCEAC56F2C5423071A51B5F7D6';
wwv_flow_imp.g_varchar2_table(88) := 'E631C3C9C94AA4AF60AF2FF8F3E19D6FC53A269B6BA0DA0BA314E66957CD44C7CA40FBC467A9AF50A2B968D57466A71DD1BD5A6AA45C59830688ADE078F439800A74F166C3D3F77B0D7857C09F04EA1378B8DFEBB6773041A4AFEEA3B88D9732B138C03D';
wwv_flow_imp.g_varchar2_table(89) := '87CCDC77C57D27456F4F193A709C17DA329E1A339464FA1E09FB51DC33B7872C63E59DA690AFBFC817F99AF73B0B75B5B1B7B74FBB146B18FA018A8EFB4CB1D40A1BEB2B6B929F74CD12BEDFA6471572A6A57E7A50A696D7FC4AA74796A4A7DC28A28AE6';
wwv_flow_imp.g_varchar2_table(90) := '370A28A2800AE5BC5BE0BB0F103A5E46F269FAD43CC1A8DB7CB2A1EC0FF797D8F6CF4AEA68AA8CDC1DE24CA2A4ACCF3CD1BC65A8689A943A278FA28EDAE243B6D7548F8B6BBF627F81FD8F1F4E33E840E46474AA7AC69563ACE9F2D8EA96D1DCDACA30D1';
wwv_flow_imp.g_varchar2_table(91) := 'C8323EA3D0FB8E4579EADDEA3F0CAE120D45EE351F06BB048AE9B2F369F9E02BFF007A3F43D474F4076E58D6F8747D8C93952D25AA3D3E8A8ADA78AEADE39EDA449619143A3A105581E841EE2A5AE76ADB9BA77D505145140051451401C0F8FB43BCB2D4';
wwv_flow_imp.g_varchar2_table(92) := '21F1778662DDABD9AEDBAB65E05F5BF7423BB01C83EDDF8AEAFC37ADD9788745B5D4F4D93CCB69D770F553DD4FA107835A75E69A867E1E78B8EA1182BE15D66602ED47DDB3B93C097D95BA1F7FC057447F7B1E57BADBFC8C25FBA9732D99E97452020804';
wwv_flow_imp.g_varchar2_table(93) := '72296B9CDC28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002B17C61E20B6F0C787EEB53BBF9844311C63EF4B21E1507B93FE3DAB6ABCDA33FF0009CFC442FF007FC3FE1B930BFDDB8BDC75F7118FD7D8D6B4A0';
wwv_flow_imp.g_varchar2_table(94) := '9BBCB64655656565BB363E1BF87AE74AD3EE353D68EFD7F567FB4DEB9FE0FEEC43D028E31EB9ED8AEC68A2A2737395D9708A8AB20A28A2A4A0A28A2800AE07C57E22BFD5B5A6F0AF84250B7F8CDFEA006E4B18CFA7AC87B0EDFA89FC77E22BE5BC83C35E';
wwv_flow_imp.g_varchar2_table(95) := '160B27882F50B190FDCB287A195FFA0F5FC01D9F067866CFC2BA3258D96649189927B87FBF3C87ABB1F53FA574462A9AE796FD11849BA8F963B7524F0A786F4FF0C696B65A6C640277CB339DD24CE7ABBB7726B6A8A2B0949C9DD9B4528AB20A28A290C2';
wwv_flow_imp.g_varchar2_table(96) := '8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002A3B8822B982486E234961914ABA3805581E0820F515251427606AE797CC971F0BAF44D079D73E0AB893F7B172EFA6BB1FBCBDCC649E476FAF5F4BB69';
wwv_flow_imp.g_varchar2_table(97) := 'E2BAB78E7B6912582550E9221CAB29E4107B8A5B8822B9B7920B88D25864528E8E32ACA460823B8AF33B1697E196B496370EEFE0DBF9716D2B9CFF0067CCC7FD5B1FF9E67B1EDDFB93D3FC65FDEFCFFE09CFAD27FDDFC8F50A2901C8C8E94B5CC7405145';
wwv_flow_imp.g_varchar2_table(98) := '1400552D6B4CB5D674ABAD3B50884B6B73198E453E87B8F423A83D8D5DA29A6D3BA1357566703F0D752BBB19EF3C21AE485F52D28036F337FCBD5A9E11C7B8FBA7D38EF9AEFAB84F8A3A5DD470D9F8A34542DAB68AC65D83FE5BDB9FF5919F5E3247D0E3';
wwv_flow_imp.g_varchar2_table(99) := '935D6687AA5B6B7A3DA6A562FBEDAE631221EFCF63EE3A11EA2B6AA9492A8BAFE66549F2BE465FA28A2B0360A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280393F895AFCDA0F86A4FECF05F56BD75B3B18C75699F8047D3';
wwv_flow_imp.g_varchar2_table(100) := '93F8568782F4087C33E1AB2D2E121DA24CCB2779243CBB7E249FC315CA69C7FE12CF8AB757C7E7D2FC36A6D60FEEBDD3FF00AC6FF808F97EB835E8F5BD4F722A1F36614FDF939851451581B851451400573BE3AF12C5E18D0DAEBCB3717B33082CED9796';
wwv_flow_imp.g_varchar2_table(101) := '9E66E1540FD4FB56FCD224313CB2BAA4680B3331C0007524D79EF83A23E31F12CDE2FBC463A75B16B6D1A27E9B41C3CF8F562303D00FA56B4A2BE296C8CAA49FC31DD9AFF0F7C33368965717DABCA2E7C41A9309EFA73CE1BB46BFECA8E07F8600EBA8A2';
wwv_flow_imp.g_varchar2_table(102) := 'A273737765C22A0AC828A28A92828A28A0028A28A0028A28A0028A28A0028A2928039CF1A78CF47F0758ADC6B1390F267CA8231BA4908EB81E9EE703DEBCC3FE1A12CBED5B7FB02E3ECD9FBFF685DF8FF776E3F5AF23F8A3AC5D6B7E3BD626BB90B886E6';
wwv_flow_imp.g_varchar2_table(103) := '4B78573C2468C5540FCB3F526B94AFA9C264D49D352ABAB678188CCAA73B50D123ED7F05F8CB47F1858B5C68F7059E3C79B04836C9193EA3FA8C8F7AE8EBE30F85BACDCE89E3BD1E6B490AACD711DBCCB9E1E3760AC0FE79FA815F67578D98E0D612A72C';
wwv_flow_imp.g_varchar2_table(104) := '7667A782C4BC442EF742D14515E79D814514500145145001451450014514500154B59D32D359D2EE74ED46259AD2E10A4887D3D47A11D41EC455DA29A6D3BA1349AB33CF3C03A95E687ABCBE0BF104C65B8B74F334CBB6FF0097AB71D8FF00B6BD08F41E';
wwv_flow_imp.g_varchar2_table(105) := 'D93E875CBFC40F0E3EBFA4A4960FE46B560FF69D3EE0705251CED27FBAD8C11D3F2AB1E07F1147E27F0FC37C13C9BA5261BAB73C18665E1D08FAFE8456D5129AF68BE6654DF23E47F23A0A28A2B0360A28A28010804107A1AF39F059FF00844FC6BA9784';
wwv_flow_imp.g_varchar2_table(106) := 'A5F974FBBDDA8E944F40A4FEF221FEE9C903D327BD7A3D70BF16F4DB89342B7D774C5CEA9A14C2F61C7F1A0FF589F42BD7D715BD1777C8F6663555BDF5D0EEA8AA3A26A76FACE9167A8D9B6EB7B9896543EC46707DC74ABD58B567666A9DD5D051451486';
wwv_flow_imp.g_varchar2_table(107) := '1451450014514500145145001451450014514500145145001581E3BD757C35E12D4B5438F320888881FE290FCA83FEFA22B7EBCEBC77FF0013EF1EF863C343E6B7859B56BD5EDB23E2307D417C822B5A31529EBB232AD2B474373E1A682DE1DF06D85A4E';
wwv_flow_imp.g_varchar2_table(108) := '0FDB64537174CDF79A67F99B27B919C7E15D4D14544E4E727265C23CB1490514515250514557BFBB86C2C6E2EEEA411DBC11B4B239E8AA0649A695DD84DD95D9C3FC49BA9F5ABFB1F05E99234736A23CEBF953AC168A7E6FC58FCA3F1F5AEE2C2D20B0B2';
wwv_flow_imp.g_varchar2_table(109) := '82D2D2358ADE0458E345E8AA0600FCAB86F84F6B3EA116A5E2ED4D0ADEEB72EF851BAC56CBC46A3EA39E3AF06BD06B6ACF97F76BA7E66549737BEFA851451581B051451400514514005148C42A9662001C926BC07E237C6EB88B5192C7C1DE49862255EF';
wwv_flow_imp.g_varchar2_table(110) := 'A45DFE637FB03A6DF739CF6E393D386C2D4C4CB969A30AF888505799EFF457CA9A37C6DF16D95DA3DFCD6FA8C1BB2F1490AC648F40C8060FBE0FD0D7D1DE0CF1469DE2DD122D4B4B90943F2C9137DF89FBAB0F5FE75A62B2FAD85579AD08A18CA75F48EE';
wwv_flow_imp.g_varchar2_table(111) := '6ED14515C47505252D1401F1B7C5BD06EB41F1DEAA9728445753BDD40F8E1D1D8B71F42483EE2B8FAFB7BC55E17D23C53A7FD935BB459E30728D9DAF19F5561C8FF39AF95BFE117B0FF8690FF857FBEE3FB1F39F3770F3BFE3CFCFFBD8C7DEE3EEF4F7E6';
wwv_flow_imp.g_varchar2_table(112) := 'BE9F099D538D351A8B547855F2C9B9B70D88FE1268375AFF008EF4A8ED90F956B3A5D4EF8E11118373F52001F5AFB1EB17C2BE18D23C2D606D344B45B78D8E5DB3B9E43EACC793FD3B56DD78F98633EB753992D11E8E0F0DF57859EEC28A28AE03B028A2';
wwv_flow_imp.g_varchar2_table(113) := 'B97F1DF8DF48F05D82CFA9C8CF71267C9B58B99253F4EC3D49FE7C55C29CAA4B962AEC99CE305CD27A1D4515E043F686FF0048E7C39FB8CF5FB67CDF5FB98FC2BD63C0DE33D27C67A6B5D695291247813DBC9C49113D323D0F382383CF7040E8AD81AF42';
wwv_flow_imp.g_varchar2_table(114) := '3CD52364634B154AABB459D2D14515C87405145140051451400579BEB23FE109F1EC3AD4636E87AEBADB5FA8FBB0DC7FCB397D83743F99ED5E91591E2CD120F11F876FF49BAE23B988A86C676375561EE0807F0AD694D45D9ECCCAAC6EAEB746BD15C67C';
wwv_flow_imp.g_varchar2_table(115) := '2BD72E356F0D9B5D532358D2E56B1BC52792E9C06F7C8C1CFAE6BB3A9A9070938B2E12E78A614514541414D750E8C8E032B0C10464114EA2840F53CE7E1693A1EABE20F07CCC42E9F71F69B204F5B697E6007AED2704FA9AF46AF3AF8800683E34F0BF89';
wwv_flow_imp.g_varchar2_table(116) := 'D3E589A53A5DEB0EF149CA13ECAD93F957A20ADEBFBD69F731A3A5E1D85A28A2B0360A28A2800A28A2800A28A2800A28A2800A28A2800A28A28010D79EFC361FDB1E26F16789A4F9966BBFB05A9EC21846095F66273F515D3F8E356FEC2F086AFA929C49';
wwv_flow_imp.g_varchar2_table(117) := '6F6CED1FFBF8C2FF00E3C4555F869A47F61F81746B1618956DC49283D77BFCEDFAB1ADE1EED26FBE8632F7AA25D8E9A8A28AC0D828A28A002BCF7E2CCD26A6DA2F84AD5CACBAD5C817054F2B6D1FCD21F6CE07D7915E855E71E0E5FF008483E25F893C40';
wwv_flow_imp.g_varchar2_table(118) := 'FF0035B69F8D22CCF6CAFCD29FFBEBBFA1ADE868DCDF431ACEE941753D0ADA08EDADE2820458E189422228C05503000A968A2B06EFA9B256560A28A2800A28A2800A28A280389F8D17B3587C32D766B662B218D22C8FEEBBAA37E8C6BE3BAFB9FC49A441';
wwv_flow_imp.g_varchar2_table(119) := 'AFE837DA55DE44375118CB0EAA4F461EE0E0FE15F19F8BBC33A9F85358934FD5A12922F31C8BCA4ABD994F71FA8E86BE9722AD0519537B9E1E6B4E4E4A4B6312BD8FF662BD9A3F17EA564A4FD9E7B232BAFF00B48EA01FC9DBF3AF1E456770A80B331C00';
wwv_flow_imp.g_varchar2_table(120) := '064935EBFF00B316BFE1F83C53AC6957733C1E229008A18E65DA1D5725D149E77E472A4745E33838EECDEAC2387716F5672E5F4E72AC9AD91F4CD14515F187D305145140057CB1FF0037CFFE7FE8195F53D7CB1FF37CFF00E7FE819401F53D1451400514';
wwv_flow_imp.g_varchar2_table(121) := '5140087A57C4BE3BD72E7C43E2CD4B50BA919F7CCCB1027848C121547B01FAE4F7AFB68F4AF893C7D6B65A7F8EB5EB1D3AEE1BA86DEE986626DC1377CDB0FBAE769F7535EE645282AB252DFA1E566AA4E09AD8C1AEA3E19EB771A0F8E349BAB691915E74';
wwv_flow_imp.g_varchar2_table(122) := '826507878DD80607D7D7EA01ED5CBD779F06BC2B73E24F19D948B137D82C254B8B9971F28DA72ABF562318F4C9ED5F458C9423465ED36B1E361D49D45CBB9F5ED2D1457C0B3EB90514514005145140051451401E73AA01E17F8B1A7DFA7C9A7F88E3FB25';
wwv_flow_imp.g_varchar2_table(123) := 'C8FE11728331B1F761F2FE75E8D5C77C59D1A4D67C117A2D322FECF17B6ACBF79648FE6E3DC8C8FC6B6FC27ABC7AFF0086F4DD522C62EA059081FC2D8F987E0723F0ADEA7BF053F91843DD9B8FCCD6A28A2B0370A28A28039DF885A27FC243E0DD574D55';
wwv_flow_imp.g_varchar2_table(124) := 'CCB2C25A1FFAE8BF327FE3C051F0F75AFF008483C17A46A4CDBA59A00253FF004D17E56FFC781AE84D79EFC2ECE97AD78BBC38DC2595FF00DA605F48A71BD40F6183F9D6F1F7A935DB5FEBF03097BB513EE7A1D1451581B8514514005145140051451400';
wwv_flow_imp.g_varchar2_table(125) := '514514005145140051451401E7DF18F37BA5E8BA12E4FF006BEA704120FF00A64A77B9FC368AF4003000AE03C407FB43E30F85ECC72BA7D95CDF3AFF00BF88D4FE75E815BD4D2118FCCC69EB3930A28A2B0360A28A280323C5BAAAE87E19D4F536C7FA2D';
wwv_flow_imp.g_varchar2_table(126) := 'BBC8A0F7603E51F89C0FC6B27E14E96749F00E910C80FDA268BED3313D4BC9F39CFBFCD8FC2B2BE3416BDD174AD0232776B3A8C16CE0751186DCCDF86D15E808AA88A8A005518007402B77EED24BBB315EF556FB0EA28A2B0360A28A2800A28A2800A28A';
wwv_flow_imp.g_varchar2_table(127) := '2800AA7AA69963AB5B1B7D4ECEDEEE03CF973C61D73EB835728A69B4EE84D27A33134BF09F87F49B9171A6E8DA7DB5C0E0491C0A187D0E322BC8FE3F7C1A3E2463E29F06836BE29B6C4AE911D9F6ADBC8208E928C707BF43D8D7BBD14E5394B593B8A315';
wwv_flow_imp.g_varchar2_table(128) := '1D123C37E00FC651E2C51E1BF15916BE2AB60630645D9F6BDBD78ED20C1CAF7EA3B81EE55E11F1FBE0D1F1231F14F8381B5F14DB6257488ECFB56DE410474946383DFA1EC6A5F803F19478B14786FC5645AF8AAD818C191767DAF6F5E3B483072BDFA8EE';
wwv_flow_imp.g_varchar2_table(129) := '04947B95145140057CB1FF0037CFFE7FE8195F53D7CB1FF37CFF00E7FE819401F53D145140051457CE9F1EBE30DD9D40F81BE1D992EB5CB97FB3DC5CDB7CCD131E0C5191FC7EADFC3F5C95003E3D7C61BA3A81F037C3B325D6B972FF0067B8B9B6F99A26';
wwv_flow_imp.g_varchar2_table(130) := '3C18A323F8FD5BF87EB92BBDF08BE0468DE1CF0D49FF000955B43A96B77C83ED0CC72B6E3AEC8C8E41F561C93ED57BE02FC1EB5F87DA78D4B5511DD789EE53F7B2FDE5B653D6343EBEADDFE9D7D7E9C64E2EF1626949599E54BF02FC242EFCE2DA898F39';
wwv_flow_imp.g_varchar2_table(131) := 'F20CE367D33B777EB5E8BA1E8FA7E85A7A58E916915ADAA721231D4FA93D49F73CD68515AD4C455AAAD3936670A14E9BBC55828A28AC4D428A28A0028A28A0028A28A00423208F5AF3CF848DFD9B3F89BC32DF28D2B5066813FBB04BF3A0FF00D0BF3AF4';
wwv_flow_imp.g_varchar2_table(132) := '4AF3B9D7FB1FE375ACBF761D774D68B1FDE9A121B3FF007C6056F4BDE8CA3FD686157494647A251451581B851451400579EDE7FC4ABE35E9F37DD875AD364B7C7F7A585B7E7FEF938AF42AF3FF008A9FE877FE0FD5C7FCBAEAF1C2EDFDD8E50558FF002A';
wwv_flow_imp.g_varchar2_table(133) := 'DA87C5CBDD18D6F86FD8F40A29052D626C145145001451450014514500145145001451450014514500701A07FA67C63F14CE79FB0D8DADA03E9BF32115DFD79FFC36FF0048F1478EAF0F25F5416F9F68D00C7EB5E815BE23E2B792FC8C687C37F30A28A2';
wwv_flow_imp.g_varchar2_table(134) := 'B0360A28A2803CFBC42FF6EF8C7E16B31CAD859DCDEB0FF7C7960FE0457A0D79EE88BF6CF8D7E23B9EBF60D3ADED3E9E61F33FA57A156F5F4E55E5FF0004C68EBCCFCC28A28AC0D828A28A0028A28A0028A28A0028A28A0028A28A002BC23E3F7C1A3E24';
wwv_flow_imp.g_varchar2_table(135) := '63E29F07036BE29B6C4AE911D9F6ADBC8208E928C707BF43D8D7BBD1401E1BF007E328F1628F0DF8AC8B5F155B0318322ECFB5EDEBC769060E57BF51DC0F72AF08F8FDF068F8918F8A7C1C0DAF8A6DB12BA44767DAB6F20823A4A31C1EFD0F6352FC01F8';
wwv_flow_imp.g_varchar2_table(136) := 'CA3C58A3C37E2B22D7C556C0C60C8BB3ED7B7AF1DA418395EFD4770003DCABE58FF9BE7FF3FF0040CAFA9EBE58FF009BE7FF003FF40CA00FA9E8A2BE71F8F5F18AEDF503E06F87464BAD6AE1FECF73756DF3346C78314447F1FAB7F0FD7254017E3CFC62';
wwv_flow_imp.g_varchar2_table(137) := 'BB6D44F81BE1D192EB5BB87FB3DC5D5B7CCD1B1E0C5111FC7EADFC3F5C95EBBE02FC1EB5F87DA78D4B5511DD789EE53F7B2FDE5B653D6343EBEADDFE9D4F80BF07AD3E1F69E352D544775E27B84FDECBF796D94F58E33FCDBBFD3AFAFD00145145001451';
wwv_flow_imp.g_varchar2_table(138) := '45001451450014514500145145001451450015E7BF15DBEC37FE0ED5871F66D62385DBFBB1CAA558FE82BD0AB83F8E10349F0E3519E2199AD1E1B84F62B22E7F4CD6D87FE225DCCABFC0CEEC52D456D2ACF6D14D19CA48A181F623352D64D599A2774145';
wwv_flow_imp.g_varchar2_table(139) := '145218570DF1AE0697E1B6ACF1FF00ADB7F2A743E8524539FC81AEE6B9FF0088307DA7C0BE2087192D613E3EBB091FAD69465CB51333AAAF068DAB4996E6D619D39491038FA119A9AB03E1FCCD71E05F0F4AE72EDA7C058FA9F2D735BF53356934541DE2';
wwv_flow_imp.g_varchar2_table(140) := '9851451525051451400514514005145140051451400521A5A43D285B89EC707F09531178B243D65F105E37FE3CA3FA577B5C4FC2B5C69FAF1FEF6B77A7FF002291FD2BB6AD2B7C6CCE8FC0828A28ACCD428A28A00E07C10BBBE24FC409BFBD2D9A7FDF30';
wwv_flow_imp.g_varchar2_table(141) := 'FF00F5EBBEAE23C0883FE12DF1C49DCEA11AFE50A7F8D76F5B623E3F92FC8C687C3F36145145626C14514500145158BE34D465D23C25AC6A16C409EDAD259632464060A71FAE2AA1172928AEA294B9536727E3EF8B3A2784AE9EC511F51D493EF430B00B';
wwv_flow_imp.g_varchar2_table(142) := '19F477E707D8026B91D3BF684B496E95751D026B7B73D6486E44AC3FE02557F9D7CFB3CD25C4F24D3C8D24D2317776392CC4E4927D6995F5B4B25C3A85A7AB3E767995672BC763EE8D0759B0D7F4B8750D26E52E2D651F2B2F63DC11D411E86B46BE45F8';
wwv_flow_imp.g_varchar2_table(143) := '51F132D3E1E5C5E9D71AEDF48B941FBBB740E56604618024606DDC0FE1E95E8FFF000D3DE03FF9E3ADFF00E02A7FF175F378DC37D5AABA67B785AFEDA9A99EE7457867FC34F780FF00E78EB7FF0080A9FF00C5D1FF000D3DE03FF9E3ADFF00E02A7FF175';
wwv_flow_imp.g_varchar2_table(144) := 'C8741EE7457867FC34F780FF00E78EB7FF0080A9FF00C5D1FF000D3DE03FF9E3ADFF00E02A7FF17401EE75E0FF00B407C1B6F11B1F1578354DAF8A2D8895D216D86EB6F20823A4A30307BE31E86A5FF869EF01FF00CF1D6FFF000153FF008BA3FE1A7BC0';
wwv_flow_imp.g_varchar2_table(145) := '7FF3C75BFF00C054FF00E2E8017E007C665F16A2F873C54C2D7C536C0A0320D9F6BDBD78ED20C72BDFA8EE0715FF0037CFFE7FE8195C17C6FF0017F80FC5DA845E22F079D574CF1346EAF231804693E3A3EE56256418186039EFEB5E79A9F8E75FD43C5F';
wwv_flow_imp.g_varchar2_table(146) := '278A1EF5A1D7248442D7508DAC4790202C3D18A6724639248C714C47D33F1EBE315DBEA07C0DF0E8C975AD5CBFD9EE6EADBE668D8F062888FE3F56FE1FAE4AF5DF017E0F5A7C3ED3C6A3AA88EEBC4F709FBD97EF2DB29EB1C67D7D5BBFD3AF87FC09F1D7';
wwv_flow_imp.g_varchar2_table(147) := 'C37F877666FF00538F55BDF12CEA44970B6AA52053FC11E5C1E7BB6013D3A75F5DFF00869EF01FFCF1D6FF00F0153FF8BA433DCE8AF0CFF869EF01FF00CF1D6FFF000153FF008BA3FE1A7BC07FF3C75BFF00C054FF00E2E803DCE8AF0CFF00869EF01FFC';
wwv_flow_imp.g_varchar2_table(148) := 'F1D6FF00F0153FF8BA3FE1A7BC07FF003C75BFFC054FFE2E803DCE8AF0CFF869EF01FF00CF1D6FFF000153FF008BAA7ACFED21E13D4B48BDB2D197588B52B885E2B691EDD54248548524EFE304835508B9C945752652E54D9BBF117E34DB6837F3E99A05';
wwv_flow_imp.g_varchar2_table(149) := 'AC77F7909292CD2311146C3AAE072C477E40F7AE374DF8FF00AEC774A752D2F4D9ADBF89600F1BFE04B30FD2BC689C9249C93DE8AFB1A59461E304A4AECF9B9E6159CAE9D8FB73C1BE28D3BC5BA326A3A5484A13B648DC61E27C72AC3D79ADDAF993F666';
wwv_flow_imp.g_varchar2_table(150) := 'BD9A2F1A5ED9AC8DF679EC99DD3B16575DA7F00CC3F1AFA6EBE631F86586ACE0B63DDC25775A9A93DC28A28AE33A428A28A002B95F8A91F9BF0EBC42BE967237E433FD2BAAAC0F1FA799E05F10A1FE2D3EE07FE436ABA4ED34C8A8AF064BE0A9FED3E0ED';
wwv_flow_imp.g_varchar2_table(151) := '0A7FF9E96303FE71A9ADAAE7BE1E7FC883E1BFFB06DB7FE8A5AE8694FE2614FE14145145496154B5A884FA3DF427A4903A7E6A455DA64CBBE174FEF2914E3BA14B66733F0B5F7FC3AF0E9F4B28C7E4315D4D723F094E7E1BF87FFEBD54575D575BF892F5';
wwv_flow_imp.g_varchar2_table(152) := '2297C0828A28ACCD028A28A0028A28A0028A28A0028A28A00290F4A5A4342DC4F6389F854D9B0D7C7F775CBD1FF912BB7AE07E1339FF008ABE16E0C7E20BBC0F62548FE75DF56B5BE366747E04145145646A14514500709E047C78DFC7717F76F207FCE1';
wwv_flow_imp.g_varchar2_table(153) := '1FE15DDD79FF0083DBCAF8ADE3D858E0C82C6541EA3CA209FCF15E815BE23E3F92FC8C687C3F36145145606C145145001599E25D33FB6BC3DA96985FCBFB5DB49007C676965201FC335A74538B71774292525667C23ABE9B77A46A57161A8C2D0DDDBB94';
wwv_flow_imp.g_varchar2_table(154) := '911BB1FEA3B83DEA9D7DA7E2FF0003681E2D553AC592BDC28DA9711929228F4DC3A8F63915CBE95F047C23637426952F6F403911DCCC367E4A173F8D7D4D2CF69722E74EE7833CAEA737BAF43CE7E02FC3DB4F107DB356F1269905E69413C9B78AEA30EB';
wwv_flow_imp.g_varchar2_table(155) := '23E412E01FEEE319FF0068FA57B0FF00C2ABF01FFD0A3A27FE0227F8575F6D6F0DADBC705B4490C11A8448D142AA81D0003A0A96BE7B1789789AAEA33D8C3D15429A8238BFF8557E03FF00A14744FF00C044FF000A3FE155F80FFE851D13FF000113FC2B';
wwv_flow_imp.g_varchar2_table(156) := 'B4A2B98DCE2FFE155F80FF00E851D13FF0113FC28FF8557E03FF00A14744FF00C044FF000AED28A00E2FFE155F80FF00E851D13FF0113FC28FF8557E03FF00A14744FF00C044FF000AED2BE71F8F5F18AEDF503E06F87464BAD6AE1FECF73756DF3346C7';
wwv_flow_imp.g_varchar2_table(157) := '8314447F1FAB7F0FD7254038DF8EBA8F83D7541E0AF86FE13D22E75D9A4104F756D668CD1B138F2A2E3EFF00AB7F0F4EB92BE4DA8FC38D76D3E21C9E0B8522BAD763844A628DB866FB30B86404F520657D091EF5F5CFC05F83D69F0FB4F1A96AA23BAF13';
wwv_flow_imp.g_varchar2_table(158) := 'DCA7EF65FBCB6CA7AC687F9B77FA75F38FF9BE7FF3FF0040CA0449F00751F00F8BD07877C53E12D0ED7C556C0A7CF64882EF6F5206389063E65FC47703DBFF00E155F80FFE851D13FF000113FC2BCEBE3F7C1A6F10B9F15F82C1B5F145B112BC709D86E8';
wwv_flow_imp.g_varchar2_table(159) := 'AF21948E928C707BF4EB83567E00FC655F17C63C3BE2922D7C556C0A7CE360BB0BD481DA418F997F11DC006779FF000AAFC07FF428E89FF8089FE147FC2ABF01FF00D0A3A27FE0227F857694500717FF000AAFC07FF428E89FF8089FE147FC2ABF01FF00';
wwv_flow_imp.g_varchar2_table(160) := 'D0A3A27FE0227F857694500717FF000AAFC07FF428E89FF8089FE150DE7C27F03CD693C5078674AB69648D916786D955E32460329C7047515DD514D37177426AEACCF873C53E1FBFF0CEB53E9BAA42639A33F2B63E5917B329EE0FFF005BAD64D7DCDAEE';
wwv_flow_imp.g_varchar2_table(161) := '83A56BF6C2DF58B0B7BC887DD12A0257DC1EA0FB8AC2D2BE1AF8434BBA17367A1DB79C0E4194B4A14FA80E4815F494B3E8A85A71D4F1279549CBDD7A1E79FB38783AEEC05CF88F5189E1FB4C5E45AA30C16424317C7A1DAB8FC7B115EE7480606070296B';
wwv_flow_imp.g_varchar2_table(162) := 'C1C4E22588A8EA4BA9EB50A2A8C141051451581B0514514005739F11E4F2BC01E236CFFCC3E71F9C647F5AE8EB8EF8C13ADBFC34D7DD8E01B7F2FF00162147F3AD28ABCE2BCCCEABB419A3F0F411E02F0D8230469B6F91FF006C96BA0ACEF0EDB9B4F0FE';
wwv_flow_imp.g_varchar2_table(163) := '996E463CAB6893F2502B46A67F132A9FC2828A28A9282A3B86D96F2B7F7549FD2A4AA1AFCDF66D0B519FFE79DBC8FF009293551DD0A5B3307E130C7C37F0F8FF00A75535D6D72FF0BD3CBF877E1D1EB63137E6A0FF005AEA2AAB7F125EA4D2F810514515';
wwv_flow_imp.g_varchar2_table(164) := '9961451450014514500145145001451450014514500701F0F3FD1FC69E3CB13D52FE2B9C7B4B1E7FA577F5E7FA57FA17C6AD6E03C7F6869705D0F7F2D8C7FD6BD02B6AFAC93F25F918D0F85AF30A28A2B1360A28A2803CE81363F1E18748F51D141FABA4';
wwv_flow_imp.g_varchar2_table(165) := '9FFC48FD6BD16BCF7E20E34EF1D781B586E231752E9F21F5F393099FC41AF42ADEB6AA32F231A5A392F30A28A2B0360A28A2800A28A2800A28A2800A28A2800A28A2800A28AF9BBE3E7C63BA96FDBC0DF0EDA4B9D62E1FECF73756DF33231E0C5111FC7D';
wwv_flow_imp.g_varchar2_table(166) := '8B7F0F41CE4A803BE3D7C64BA7BF6F03FC3B325D6B370FF66B8BAB6F99918F0628B1FC7D8B7F0F41CF2BD7FC04F83D6BF0FF004E5D4B5658EE7C4F729FBD97EF2DB29FF96687D7D5BBF41C756FC04F8396BF0FEC1753D5D63B9F13DC27EF24FBCB6AA7AC';
wwv_flow_imp.g_varchar2_table(167) := '687D7D5BBF41C75F62A002BE58FF009BE7FF003FF40CAFA9EBE58FF9BE7FF3FF0040CA00FA9EBC1BE3F7C1A6F10B9F15F82C1B5F145B112BC709D86E8AF21948E928C707BF4EB835EF34500787FC01F8CABE2F8C7877C5245AF8AAD814F9C6C17617A903';
wwv_flow_imp.g_varchar2_table(168) := 'B4831F32FE23B81EE15E0DF1FBE0D37885CF8AFC160DAF8A2D8895E384EC3745790CA474946383DFA75C1AB3F007E32AF8BE31E1DF14916BE2AB6053E71B05D85EA40ED20C7CCBF88EE0007B851451400514514005145140051451400514514005145140';
wwv_flow_imp.g_varchar2_table(169) := '0579D7C746337846D34D5E4EA7A8DB5A003BE5B77FECB5E8B5E7BE3BC6A5F10FC13A48F98453CBA8CA3FBA235F90FE2C48ADF0FF00C44FB6A635FE0B773D05460002968A2B066CB60A28A2800AE6FE245C8B4F00788652707EC33283EEC840FD4D7495C1';
wwv_flow_imp.g_varchar2_table(170) := 'FC6D909F87B796919C4D7B3416B1E3B969578FC81AD68C79AA457999D676833A0F02DBB5AF82B4181F878EC2046FA88D735B94C8516289234185550A07A014FA893BC9B2A0AD14828A28A92828A28A0028A28A0028A28A0028A28A0028A28A00E03C5BFE';
wwv_flow_imp.g_varchar2_table(171) := '81F14BC1B7E388EE92E6C256FAA8641FF7D035DFD703F1A11A1F0A5BEB118265D1EFEDEF940EA42B8523F2635DDC4EB2C49246C191C06523B835BD4F7A9C65F2FEBEF31A7A4E487D1451581B051451401C37C67B096F3E1F6A135B645D5894BD8987F098';
wwv_flow_imp.g_varchar2_table(172) := 'D8313FF7CEEAEB344BF8F55D1EC75087FD5DD40932FD1941FEB53DDC11DD5ACD6F3A878A5428EA7BA91822B87F83572F17872E741BB6CDE687752593E7AB206251BE841C0FA56FF152F47F9987C357D4EFA8A28AC0DC28A28A0028A28A0028A28A0028A2';
wwv_flow_imp.g_varchar2_table(173) := 'B9AF1B78D746F06D9A4FAC4EDE649C456F10DD2C9EB8191C0F5240FD2AA109547CB15764CA7182BC99D2D15E376FF1FB407B8DB3E99A9451138F3004623DC8DDFE35C6FC6FF8D53EA0D07847E1A34F75A8EA01524BB8118380E388E21D7790796FE1E9D7';
wwv_flow_imp.g_varchar2_table(174) := '3B76AD85AB475A91B19D3C453ABA41DC97E3E7C63BA96FDBC0DF0EDA4B9D62E1FECF73756DF33231E0C5111FC7D8B7F0F41CE4AF5FF013E0E5AFC3FB05D4F5758EE7C4F709FBC93EF2DAA9EB1A1F5F56EFD071D4F809F072D7E1FD82EA7ABAC773E27B84';
wwv_flow_imp.g_varchar2_table(175) := 'FDE49F796D54F58D0FAFAB77E838EBEC55CE6C1451450015F2C7FCDF3FF9FF00A0657D4F5F2C7FCDF3FF009FFA065007D4F451450015E0DF1FBE0D37885CF8AFC160DAF8A2D8895E384EC3745790CA474946383DFA75C1AF79A2803C3FE00FC655F17C63';
wwv_flow_imp.g_varchar2_table(176) := 'C3BE2922D7C556C0A7CE360BB0BD481DA418F997F11DC0F70AF06F8FDF069BC4321F15F82C1B5F145B112BC709D86E8AF21948E928C707BF4EB83581E14FDA0B555F060B7D6348693C4B6EFE434D28D91480705D97860E08C15000CF391D2B5A34275E5C';
wwv_flow_imp.g_varchar2_table(177) := 'B4D5D99D4AB1A51E69EC7D31457CB717C76F162DC798F1698F1E7FD518180FCF767F5AF6FF0086BF1074EF1C58BF92BF66D4A100CF68CD9207F794FF0012FBF6EFD467A7119757C3C79A6B430A38DA559F2C5EA76B45145709D614514500145145001451';
wwv_flow_imp.g_varchar2_table(178) := '450015E73E1A0758F8C1E25D4FAC1A5DB45A6447B16277BFE20E47E35DDEAD7F0E97A5DDDFDD36D82DA2699CFF00B2A093FCAB90F839652C3E0E1A8DE2EDBCD62E24D4A6FAC872BFF8E853F8D6F4FDDA7297C8C27EF4E31F99DD51451581B85145140057';
wwv_flow_imp.g_varchar2_table(179) := '9FFC4A1F6EF13781F4807FD6EA66F48F510216FCB9AF40AF3E8B3AAFC6B9DBEF43A2E96A98FEECD33673FF007C0ADA86EE5D918D6D92EE7A0D1451589B05145140051451400514514005145140051451400514514019BE24D3135AF0FEA3A6C98DB7503C';
wwv_flow_imp.g_varchar2_table(180) := '393D895201FC0F3583F093537D4FC03A519F22E6D90D9CCA7A8788ECE7DF001FC6BB0AF3DF066343F889E29D01BE582F0AEB16A3D43FCB2FFE3C056F0F7A9CA3DB5319FBB352F91E8545145606C1451450015E73783FE11BF8C36D75F76C7C496DF6790F';
wwv_flow_imp.g_varchar2_table(181) := '617310CA93F55E07B935E8D5C9FC4DD0A6D77C2D28B025754B275BDB275EA268F918FA8C8FC6B6A12B4B95ECF432AD1BC6EBA1D651589E0BD7A1F137866C3558005F3E3FDE20FE09070CBF8106B6EB2945C5B4CD23252574145145218514514005145140';
wwv_flow_imp.g_varchar2_table(182) := '105EDC259D9CF73364470C6D2363D00C9AF88BC51AF5F78975CB9D535290BCF33642E788D7B22FA01FFD7EB5F6E6A16C97B61736B2121278DA26C7A30C1FE75F0EEBDA4DDE85AC5DE99A84663B9B690A302319F461EC46083E86BE832150E795F73C7CDB';
wwv_flow_imp.g_varchar2_table(183) := '9AD1B6C67D7A1FC04BE834FF0089B6065B78646BA8E4B6595D01788919054F6C95C7D18D79E57A5FC01F0FDC6ADE3DB6BD546FB1E9A0CD2C98E3710422E7D4939FA29AF6F3050FABCB9FB1E6611CBDAC794FABE8A28AF843EAC28A28A002BE58FF009BE7';
wwv_flow_imp.g_varchar2_table(184) := 'FF003FF40CAFA9EBE58FF9BE7FF3FF0040CA00FA9E8A28A0028A28A0064CFE5C2EF8276A93815F08EA57936A3A8DD5EDCB6E9EE2569A43EACC493FA9AFBC08C823D6BE41F8AFE04BCF076B933AC4CFA3DCC85ADA751F2AE79F2DBD187EA0647703DEC8AA';
wwv_flow_imp.g_varchar2_table(185) := 'C21525196EF63C9CD61294535B2384AEB7E13EA33699F1134296DD88F36E92DDC0FE2590ED20FE79FC2B92AF60F805E04BCD4B5DB6F11DF4262D2ECD8B405C60CF28E06D1FDD53CEEF5000CF38F771F5610A12E77BA3C9C2C252AAB94FA6A8A28AF843EB';
wwv_flow_imp.g_varchar2_table(186) := '028A28A0028A28A0028A292803CF7E30CB2DFD9E91E16B4622E35CBB58A42BD5604C3C8DF8003F0CD77D6D0C76D6F14102048A35088A3A280300579EF828FF00C255E3AD63C52DF369F679D334DF4600E64907D4F00FA6476AF47ADEB7BA953EDF99852F';
wwv_flow_imp.g_varchar2_table(187) := '79B9851451581B8514514008C70093C015E7DF0801D460D7FC4B272758D424789BD608CEC8C7E186AD5F8A9ABBE8FE06D4A4B7C9BCB851696EABF79A490ED18F71927F0AD7F0A6909A0F86F4DD2E3C116B024648FE2603E63F89C9FC6B75EED26FB98BF7';
wwv_flow_imp.g_varchar2_table(188) := 'AA25D8D6A28A2B0360A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AF3CF89E0E89AC7873C5A9C476171F65BC3DBECF37CA58FF00BA7047B9AF43ACDF11E930EBBA0DFE9773FEAAEA16889C67692383F50707F0AD28CB9269BD8CEAC79A3A';
wwv_flow_imp.g_varchar2_table(189) := '1A2082011D0D2D71BF0A7569B50F09C5697E71AA696EDA7DDA93921E3E01F7CAE0E7EB5D952A91E49389509734530A28A2A0A0A28A2803CE340FF8A43E245FE8B27C9A56BC5AFAC49E15271FEB631F5E1BF215E8F5CC7C42F0E37893C3CF0DABF93A9DB3';
wwv_flow_imp.g_varchar2_table(190) := '8B9B19C706399795E7D0F43F5F6A7F803C483C4DE1E8EEA54F26FE1636F7B6E460C532F0C31DBD47B1ADEA7EF22AA2F99843DC9723F91D251451581B851451400514514005723E3CF0068BE348A33A9C4F15DC4BB63BA808591475C1E08233D8FA9C6326';
wwv_flow_imp.g_varchar2_table(191) := 'BAEA2AE15254E5CD07664CE119AB491E1F6BFB3E69C970AD75AE5D4B003F32470AA311FEF1271F957AE786F41D37C37A547A7E8F6CB6F6C87381C9663D5989E49F73ED5A9456B5B175ABAB5495CCA961A9D277820A28A2B9CDC28A29280398F1CF8E347F';
wwv_flow_imp.g_varchar2_table(192) := '0659A4BAACACD3C9FEAADA201A493DF19E07B9E2BE5BFF0084B22FF85F1FF0B13EC8FE5E7FE3C778CE3ECDE4677E3AFF001631EDEF517C4ED5EE759F1DEB37177217F2EE648221D923462AA07E033F524F7AE5ABEAF0993D1F64A55756CF9FC4663579DA';
wwv_flow_imp.g_varchar2_table(193) := '86891F69781BC71A378CECDE5D2A5659E3C79B6D280B227BE33C8F71C57515F177C31D5EE746F1DE8D3DA4853CCB98E0947678DD82B03F81CFD4035F680AF1732C1AC254B47667A782C4BAF0BCB742D14515E71DA150DE5ADBDEDB496F790453C120C3C7';
wwv_flow_imp.g_varchar2_table(194) := '2A06561EE0F06A6A284DAD81ABE8CE4A0F871E1082EFED31F87EC7CCCE70C9B947FC04F1FA575688B1A2A46A15146028180053A8AB9D49CFE2772234E31F85051451505851451400514514005717F14F589EC7414D334B6FF89CEB120B2B450795DDC3BF';
wwv_flow_imp.g_varchar2_table(195) := 'B05524E7B122BB0B89A3B68249E7758E18D4BBBB1C055032493E95E77E008A5F15788EF3C6B7C8CB6B86B4D22271F72107E6971D8B1CFBE323A62B6A314BDF7B231AB2BFB8B76769E19D1ADBC3FA0D8E9566310DAC4101C60B1EEC7DC9C9FC6B528A2B29';
wwv_flow_imp.g_varchar2_table(196) := '3727766B14A2AC828A28A430A28A86F2E22B3B49AE6E5D638214691DDBA2A81924FE1425706EC701E28FF8A8BE27E81A227CD69A429D5AEFD3CCFBB0AFD4124FD0D7A2D703F096DE5BCB4D53C517A8CB73AEDC99D15BAA5BAFCB12FE593F422BBEADEBBB';
wwv_flow_imp.g_varchar2_table(197) := '3505D0C68ABA727D428A28AC0D828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00F3BD47FE294F8A36D7E3E4D2BC46A2D673D025D20FDDB1FF7972BF5AF44AC2F1B6811F89BC3579A6BB6C95D77412F4314ABCA303EC71F866AAFC3';
wwv_flow_imp.g_varchar2_table(198) := 'BF1049E20F0E4725EAF97AA5AB1B5BE88F05264E1B8F7EBF8D6F3F7E0A5D568CC63EE4DC7A33A7A28A2B0360A28A2800AF36F1624BE07F147FC259651B368D7C521D620419D87A25C01ED9C1FAFBE47A4D43776D0DE5ACB6D751ACB04A852447190CA460';
wwv_flow_imp.g_varchar2_table(199) := '822B4A53E47AEC67521CCB4DC5B69E2B9B78E7B7916586550E8E8721948C820FA54B5E65E16B89BC05E215F0AEA92B368978C5B47BB90FDC24F36EC7D79F97D7F1C0F4DA2A53E47A6C14E7CCB5DC28A28ACCD028A28A0028A28A0028A28A0028A28A0029';
wwv_flow_imp.g_varchar2_table(200) := '2968A00F8F7E31786EEBC3DE38D45A646FB2DF4CF756F2E3860C7247D549C7E47BD70F5F73F88342D33C4360D65ACD9C5776E4E76B8E54FAA91C83EE2BCF7FE145F84BED5E6EED4BCBCE7C9F3C6CFA676EEFD6BE97099D4214D46AAD51E1E232C9CA6DC3';
wwv_flow_imp.g_varchar2_table(201) := '667897C1CF0D5D7887C73A7B428C2D6C664BAB8971C2856C81F56231F99ED5F60D66E81A1699E1EB05B2D1ACE2B4B6073B5072C7D493C93EE6B4EBC8C7E33EB7539AD648F470786FABC2DD428A28AE13AC28A28A0028A28A0028A28A0028A28A0028A2B9';
wwv_flow_imp.g_varchar2_table(202) := '0F883E279746B6834ED1905CF88B513E5595B8E769EF237A2AF5E7D3D338A841CDD91339A82BB31BC6D79378BBC40BE0AD26465B540B2EB3749FF2CE2EA2107FBCDFCBD79AF42B4B686CED61B6B58D62821411C71A8C05503000FC2B07C09E1787C2DA37';
wwv_flow_imp.g_varchar2_table(203) := 'D9C486E2FA76335E5D3F2D3CA7AB13E9E9FE39AE92B4AB35F047644538BF8A5BB0A28A2B1350A28A2800AE03E2ADC4BA98D33C2360EC2E75997170C9D62B54E646F6CF0067AF22BBAB99E3B6B79679DD6386252EEEC701540C924FA5709F0D61935BD4B5';
wwv_flow_imp.g_varchar2_table(204) := '4F19DEA32B6A07ECFA7A38C18ED10FCBF4DE72C7F0F5ADE8AE5BD47D3F331AAEF682EA7776B0456B6D15BDBA2C70C4811117A2A8180054B45158377364ADA05145140051451400514514005145140051451400514514005145140051451400579BF8909F';
wwv_flow_imp.g_varchar2_table(205) := '05F8EEDFC429F2689ABEDB4D4FB2C528E2298FB7F093FD4D7A4551D6F4BB5D6B49BAD3B508C496B73198DD7D8F71E847507D45694A6A2F5D999D48732D3745D072323A52D707F0DB54BAB39AEBC23AEC85B54D280F2256FF0097AB5E8920F523EE9FC3BE';
wwv_flow_imp.g_varchar2_table(206) := '6BBCA5521C8EC3A73E7570A28A2A0B0A28A280327C51A058F897469F4DD4E3DF0CA3861C346C3A329EC45733E04D5F56B0D4E4F0A78A5649AFEDE3325A5FAA929790020649ECE3201CFF00F5CF7949DF35A46A5A2E2F63374FDEE642D145717E24F8A3E0';
wwv_flow_imp.g_varchar2_table(207) := 'AF0D6ABFD9BAD7886CEDAF8101A1F99CA13D9B68217F1C566687694557D3EF6D751B286F34FB986EAD265DF1CD0B87471EA08E0D58A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028AE67C67E3';
wwv_flow_imp.g_varchar2_table(208) := 'BF0CF82E389BC4FAC5BD819798E360CF238F508A0B11EF8C55DF0AF89F45F1669A2FFC3BA95BDFDAE769788F2A7D194E0A9F62050058F105EDCE9DA2DE5DD8D8CB7F751465A3B68880D23761CFFF00AFD013C5739E02F0BDD584D73AEF88E45B9F125F8F';
wwv_flow_imp.g_varchar2_table(209) := 'DF38E56DD3B431FA01DFD4FAF5AED28AD154718B8AEA438294B99851451599614514500145158DE2EF105AF86741B9D4EF32C231B63887DE9643C2A2FB93FE3DA9C62E4EC852928ABB394F88D752EBFABD878274E9181BCC5C6A7221E61B553CAE7B1738';
wwv_flow_imp.g_varchar2_table(210) := '1FCF835DFDAC115ADB456F6F1AC70C4A11114602A818007E15C9FC37D02EB4DB0B8D575BF9F5FD59FED178C7FE59FF007621E814718F5CFB57635AD5925684764654A2DFBEFA851451589B05145140051451400514514005145140051451400514514005';
wwv_flow_imp.g_varchar2_table(211) := '14514005145140051451401C77C44F0FDD6A105AEB1A0ED8FC43A53196D5BA79ABFC70B7A86191F5F4C9AD7F087886D7C4DA1C3A85A6518FC9342DF7E0907DE461D883FD0F7ADAAF39F14DA5C782FC41278B34885E4D2EE70359B48C64E3B5C20FEF2FF1';
wwv_flow_imp.g_varchar2_table(212) := '7A8FC48DE0FDA4791EFD3FC8C24BD9CB9D6DD4F46A2A0B1BBB7BFB386EECE649ADE640F1C8872194F422A7AC1AB68CDD3BEA828A28A0028A2A2B9328B694DB80D3042501E85B1C7EB401575D92EA3D0F51934E5DD7A96F2340319CC814ED1F9E2BC0BF65';
wwv_flow_imp.g_varchar2_table(213) := 'EF09785BC45F0FEF756D634DB3D5F59BABC9A3BE96FA3599D4F0401BB38C860C4F524F5E063A1FD942E65BAF87FA8CB7FA8DCDD6A8DA9CED7715C484B40E7048DA7EEE4E58FA927D2B23E1A88FC35FB4D78CFC3DA2B87D22F6D45FCB0A1CAC137C8C7D87';
wwv_flow_imp.g_varchar2_table(214) := '3238C7FB4A3B50059FD9F248F4BF883F10FC2FA14CF3F85F4FB9492D4172EB048C487453E99047FC033DCD7BCD67697A2E9BA55C5F4FA6D8DBDACB7D379F72D120532C98037363BF1F9E4F526B9EF89D63E30BBD22DA6F00EA56967A95ACDE73C1731864';
wwv_flow_imp.g_varchar2_table(215) := 'BB5008F2CB1FBA39F4E4E395C66803B2A2BC73E1DFC74D1F5CD464D07C591C7E1FF12C129B79619240609245382124CE01C83F293EC0B57B1D00145145001451450014514500145145001451450014514500145145001451587E30F1568DE0FD164D57C4';
wwv_flow_imp.g_varchar2_table(216) := '37B1DA59A1DA0B0259D8F45551CB1E0F03DCF41401B958DE31B8D62D7C2FA94FE19B582EF598E166B582762A8EFE9F5EB81C64E06475AF31D23F68BF075EEA505B5F5B6B1A4DBDC1C41797D6CA90BFBE558903DF181DC8AF658DD258D648D95D18065653';
wwv_flow_imp.g_varchar2_table(217) := '9041E841A00F9BBF675D27C37E369759D6BC61FF0013BF1B89992F6DF5585585B2E70BE5C678C718CE3E523680075B0DA35B7C39FDA5FC3F67E11FF47D3FC456D21BDD3633F226039DC17B0CAEE1E98603838AD5F8D7E03D5348D697E247C39060D7ECC1';
wwv_flow_imp.g_varchar2_table(218) := '6BEB58D72B791E3E66DBFC471D47F10191F30E790F86BF0DF45F8B7E16B8F14EAFE28D4EE7C5F3CFBA6BA85C2358B8FBB184FEEE304118E3017183401F52D15E1DE18B4F8C5E0EF105969375258F8BBC3F2C813EDB7137952C09EAEC72DD33D449E99AF7';
wwv_flow_imp.g_varchar2_table(219) := '1A0028A28A0028A28A006C8EB1C6CF230545192CC7000F5AF38D0D1FC7DE2B5D7EE15BFE11CD2A429A5C6C38B99870D7047A0E8BF9F0734EF155DCFE35D75FC27A3CCC9A5DB90759BC8CF6FF009F753FDE3FC5E838F515E81656B058D9C36B6912436F0A';
wwv_flow_imp.g_varchar2_table(220) := '08E38D0602A818005747F0A3E6FF00030FE2CBC913D14515CE6E1451450014514500145145001451450014514500145145001451450014514500145145001451450014D750EA55802A46083D0D3A8A00F31265F863ABB121DFC157B2E78E7FB32563FF00';
wwv_flow_imp.g_varchar2_table(221) := 'A298FE47FF001EF4B8A4496349227578DC0656539041E841A65E5AC17B6935B5DC4935BCAA5248DC65594F5045799DADC5DFC2FBE5B3BF696EBC173C98B7B93967D3989FB8FDCC79E87B5747F197F7BF3FF8273FF09FF77F23D4A8A6432C734492C2EB24';
wwv_flow_imp.g_varchar2_table(222) := '6EA195D4E4303D083DC53EB9D9D0B50A28A2803C9BC65F06E3D4BC4573AFF83FC49A8F84F56BCFF8FC7B2C98EE0FF799032FCC7AE738CF38CE49DAF853F0C34CF87B6F792C3733EA5AC5F36EBBD46E7FD64BCE7007381939EA493D49E31DFD14005799FC';
wwv_flow_imp.g_varchar2_table(223) := '7CF1F3781FC1C534D25FC41AA31B4D3E24196DC783201DF6E463FDA2A2BD16F6EA0B1B39EEEF25486DA08DA5964738545519249F40057CFBF0B2D67F8B3F14EFBE22EAD138D074A7FB2E896F20E0B2FF001E3D46771FF69860FCB401D2780FE07787EDFE';
wwv_flow_imp.g_varchar2_table(224) := '1A43A2F8B34E8AF754BB3F6ABCB927F7B1CCC3A248391B46075C13927AD7A57833C3D07853C3363A2DADD5DDDC16885166BB93CC918649E4FA0CE001800002B6EA86BDAADB687A25FEAB7EFB2D6CA07B894FFB2A0938F7E28039BBFF0089BE10D3BC5D3F';
wwv_flow_imp.g_varchar2_table(225) := '86B52D6EDACF56842164B8CA27CC010379F9738238241E457631BAC88AF1B2BA30CAB29C823D457CE3F023C05A6F8FFC3FE21F1778EB4C83509FC437CEF08941CC51AB104A30C32FCC5978238415E81E08F84DFF0008478A21BBF0EF89B578FC3E03F9BA';
wwv_flow_imp.g_varchar2_table(226) := '2DC3F9B13310402A7F840273D3271D6803D428ACCF136B56BE1CF0F6A5ACEA01CDAD840F7122C601660A3385048193D0648E4D64FC39F1CE91F103417D5B403702DA39CDBBADC4611D5C2AB1040247461DE803A9A28A2800A28A2800A28A4A005A2AAEA9';
wwv_flow_imp.g_varchar2_table(227) := '7D6DA5E9B77A85F49E55A5AC2F3CD26D2DB514166380093800F0066A9F857C43A678AB41B6D6743B8FB4E9D73BBCA94A326EDAC54F0C011CA9EA28035AB2BC41E21D1FC39666EF5ED4ED34FB7ECF71284DDEC01E49F61CD719F1134CF88FACEB91D8F847';
wwv_flow_imp.g_varchar2_table(228) := '58D2F44D05A15335F3445EEB792432A8391D02907E5EA79AF1BF875E07D2D7E3BF883C35F11BCCF11EA5140B73A7DE5FC8EC26518272A5886243743903635007D45A5EA16BAAE9B6BA869F32CF677512CD0CABD1D18641E7D8D7867C658EDEF7E3FF00C3';
wwv_flow_imp.g_varchar2_table(229) := '4B1F10A2CBA03ACA522946637B839DA083C1F984231EFEF5EEF696D059DB456D690C505BC4A1238A240AA8074000E00AF3AF8F9E0493C6FE096FECDDCBAF698FF6CD3DD0E18B8EA80F6DC071FED053DA803ADF1A78574AF187872EB45D6ADD25B59930A7';
wwv_flow_imp.g_varchar2_table(230) := '03742D8F95D0F661FF00D6E95E4FFB3D788350D0B56D5BE1878AA42DA9E8C4BD84ADD27B6E3819EC010C3FD96C7F0D763F03FE21C3E3EF084325C3AA6BD64041A8DB9F959641C6FDBD95B19F6391DAB88F8AE204FDA33E1A4BA3B2B6B64C897891FDE16D';
wwv_flow_imp.g_varchar2_table(231) := 'D8B63B6D69FF0001401EF95E38FF000BF55F0E7C5DB4F13F80AE6DACB49D41C8D66C25C88CAF52C8A3B93D071B5BFD9240F63A2800A28A2800A28A2800AE13C6BE21BDBBD447857C26E0EB53AE6E6E87296111EAEC7FBE47DD1F8FA64F19F8AEEDB511E1';
wwv_flow_imp.g_varchar2_table(232) := '9F082A5CF88265CCB29E62B143FF002D243EBCF0BF4F6076BC15E16B4F0AE96D6F03BDC5E4CDE6DDDE4BCC97121EACC7F3C0EDF99AE88C5535CF2DFA230949D47CB1D8B5E16D02CBC35A343A6E9C84469CBBB72F2B9FBCEC7B926B5E8A2B0949C9DD9B46';
wwv_flow_imp.g_varchar2_table(233) := '2A2AC828A28A430A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A86F2D60BDB596DAEE249ADE5528F1B8CAB03D41153514D36B540D5F4679795BFF85F313189F50F04BB64A8CBCDA6927A';
wwv_flow_imp.g_varchar2_table(234) := '8EED17EA3FF42F48D3EF6DB51B286EEC678E7B699774724672AC3D8D4CEAAE855D432B0C10464115E757FE1ED57C177736A9E098BED3A5C8DE65DE864E07BBC07F85BFD9E87F215BDD56DF497E661674B6D51E8F45627857C4DA6789F4FF00B569736E2A';
wwv_flow_imp.g_varchar2_table(235) := '76CB0B8DB2C2DDD5D7A83FE456DD6128B8BB3368C9495D051451486417D696F7F6735A5EC115C5ACC85248A550C8EA7A820F04557D0B47D3F40D26DF4CD1ED63B4B0B705628631F2A82493FA927F1ABF450015E1BFB526B17373A4687E06D1DB3A9F892F';
wwv_flow_imp.g_varchar2_table(236) := '1226507A44AC3AFA02E579F456AF72AF1FF899F0BB5DD63C7569E36F08F8822B5D76CA211416D7D009200A030201C12B9DCDD41E58E08E28033DBE06DDF86B6DD7C31F176A5A15E2A8DF6F3B79D6D3B018CB29E99F70DEC2BD8F458EFA2D1EC63D5E68A7';
wwv_flow_imp.g_varchar2_table(237) := 'D496141732C4BB51E5C0DC547619CE2BCD7C1BE3DF192F892CFC3BE3BF05DCDADDDC9658F53D3CF9968D852C4B1C909C03FC44FB57ABD00790FED55AAFF66FC1BD4A153893509E1B44C75E5F791F8AA30AE7BF652B393419BC79E1899897D2F535EBDC30';
wwv_flow_imp.g_varchar2_table(238) := '6507F1118A7FED2A4EB3E2FF0086BE154F996F75417132FA22B22E7F2693F2A6697ADD9781FE3AFC53BAD49FCAB06D32DF543EADB551481EA4BC840F7228029FED6DE339E2D263F06E8CC4DCDCC46F751643FEAADD395527B6E61FA01FC55E8DFB3D58CD';
wwv_flow_imp.g_varchar2_table(239) := '61F077C34B7524924D3C06E4B48C589123B3AF5EDB4A8AF9DBC6767A8B7C2BD43C5DADC64F893C79A9430C317786CD4F9888BEC4C71FE013DEBEC0D0F4F4D2745D3F4E871E559DBC76E98F4450A3F95007927ED5BAEEADE1FF000069571A0EA577A75CCB';
wwv_flow_imp.g_varchar2_table(240) := 'AB450B4B6D2146286294952476C8071ED49FF0A7FC5DFF00456FC4BFF7C9FF00E3959DFB66647C34D1CAF2C35A8719FF00AE33D697FC241F1CBFE84EF0CFFE05FF00F6DA00F57F0E69F3E95A158D85E5FCDA8DC5BC2B1C97737DF9881CB372793F5AF9C3';
wwv_flow_imp.g_varchar2_table(241) := 'F6A3875AD37E2A781B58F0DCD247AA4E86DAD02B6034C9270B83C7CDE70539E08383C57D3F19628A5C00D81903B1AF0AFDAEADE4B7F07F87F5FB619B8D23568E407D14827FF4244A00EEFE1DF8C34FF89FE069DCA7D9EE9A37B3D4AC9BEF5BC854AB2907';
wwv_flow_imp.g_varchar2_table(242) := '9C1E483E9EE08AE23F645BC907C3DD4F46BA38B9D27549A064FEE8214FFE85BEA2F88BA7DD7813C470FC54F0642D3E99748875ED3E3E93C2D822703FBC33927B1E7A16ACCFD9E359B07F8C3F112D349B859B4FD53CBD5ED8AF4DACDB8F1D88F3C023B118';
wwv_flow_imp.g_varchar2_table(243) := 'ED401F45D7817ED256F2F85FC4DE0DF88F611B17D32E85A5EECEAF0B6481F4C1957FE062BDF6B9BF88FE1A8FC5FE06D6742942EEBCB76588B745947CD1B7E0C14D006FDADC45776B0DCDB3AC904C8248DD7A32919047E06A5AF39FD9F975E83E1769565E';
wwv_flow_imp.g_varchar2_table(244) := '29D3EE6C6FEC775B225C0C33C4A7F7671D461485C1C1F96BD1A803CA3C6BF04F46D7BC44FE20D1753D4BC35ADCB9335CE9926C1293D58818209EE4119EA7279AD7F871F0AF43F03DDDC6A30CB77A9EB972089B52BF93CC9981EA07A0E3EA7B935E814500';
wwv_flow_imp.g_varchar2_table(245) := '145145001451515D5CC3696D25C5D4B1C3046A59E49182AA81D4927A5095F606EDB92D79FF0088FC537FACEAB2F86FC11B1EF53E5BDD4986E86C47A0ECD27A0EC7E871526D5B57F8853B5A786E49F4CF0C82567D58AED96EBB15801E83FDBFF0C1EE3C3D';
wwv_flow_imp.g_varchar2_table(246) := 'A1E9FE1ED2E2D3F48B64B7B68FB0EAC7BB31EA49F535D0A2A96B2D5F6FF3306DD5D23B153C1FE17B0F0B69C6DEC83C93CADE65CDD4A774B7121EACCDDFBD6F51456129393BB368C545590514514861451450014514500145145001451450014514500145';
wwv_flow_imp.g_varchar2_table(247) := '145001451450014514500145145001451450014514500145145001451450014514500717E2CF048BFBF1AD7876ECE8FE2241C5CC63E49C7F7655E8C38EBD7A75C62AB689E3C7B6D423D1BC6D6A346D5DBE58E52736B75EF1BF6FF74FA81D78AEF6B3F5CD';
wwv_flow_imp.g_varchar2_table(248) := '1B4ED774F7B2D5ED22BAB67EA920E87D41EA0FB8E6B78D54D72D4D57E2632A6D3E681A14579BFF006378A3C1386F0DCCDAF686BD74CBB9313C2BE9149DC0FEE9F4E326BA2F0BF8D747F113B5BDBCCF6DA947C4B6176BE54F19EE0A9EBF51914A545A5CD1';
wwv_flow_imp.g_varchar2_table(249) := 'D50E355376968CE9A8A28AC4D428A28A0028A28A00E035CF879FDADF16F42F1ACDA97EEB4AB66812C0C390CC449F3EFDDD73274C7F08E6B88F8ADF08350F1B7C5FD1F550C89E1B7B58E0D5312ED79047233ECDBDC37EEC67B633DABDDA8A00F0EF8CDA35';
wwv_flow_imp.g_varchar2_table(250) := 'F6B9F157E186956BA6DC9D1ACAE4DD4F2C703790BB4AB042C06D1F2C4463FDAAF71A28A00F04FDB30EDF865A431E835A84FF00E419EBA6FF008682F867FF004319FF00C00B9FFE375E9B7B656B7D108AFADA0B98C36E093461C03D3383DF9354BFE11DD1';
wwv_flow_imp.g_varchar2_table(251) := '3FE80FA77FE02A7F85004BE1FD66C7C41A35A6ABA44FE7D85DA7990CBB19372FAE18023A7715C7FC7CD0E5F107C23F11D8DAC2F3DC881678A38D4B3B346EAF850392485231EF5DE5BC315BC290DBC49144830A88A1540F602A4A00E3BE152DD5CFC2DF0E';
wwv_flow_imp.g_varchar2_table(252) := 'C1AE594D05CAE9F1DB5C5B5DC455BE55D843AB0CF206791DEBCFFC03F056EBC0FF00186E7C43A25EDAAF86A58644168CCDE720719D838C150C17049CE3DC64FB8D14005145140051451400514514005159FADEB5A6E8564D77ABDEC3696EBFC5236327D0';
wwv_flow_imp.g_varchar2_table(253) := '0EA4FB0E6B886D7BC4DE336F2BC296CDA368EDC1D5AFA3FDE48BEB0C47FF00423FA1AD614A52D764672AAA3A6ECE87C5FE33D2FC322386E1A4BAD4A6E2DEC2D977CD293D30A3A0F73FAF4AE72D3C2DACF8C6F22D43C78C20D391B7DBE870BE507A19987D';
wwv_flow_imp.g_varchar2_table(254) := 'F3EDD3E9C8AE8BC27E0AD2BC36F25CC0B25DEA93733DFDD37993487BFCC7A0F615D3D5BA91A7A53DFB90A9CA6EF3FB864314704491428B1C6802AA28C0503A0029F4515CF7B9BA4145145001451450014514500145145001451450014514500145145001';
wwv_flow_imp.g_varchar2_table(255) := '451450014514500145145001451450014514500145145001451450014514500145145001451450015CFF008A7C21A3789A35FED3B51F688FFD55D44764D11EC55C73F874F6AE828AA8C9C5DD314A2A4ACCF393178DBC223FD1DC78AF484FF9672911DEC6';
wwv_flow_imp.g_varchar2_table(256) := 'BECDD24FC7935B7E1CF1EE85AE4DF655B86B2D481DAF637CBE4CEADE9B4F53F4CD75758DE22F0CE8DE23B7F275AD3ADEED40C2B3AE1D7FDD61C8FC0D6BED213F8D7CD19724A1F033668AF3D1E0DF10E8033E10F12CAD02FDDB0D597CF8BE81C7CCA3D853';
wwv_flow_imp.g_varchar2_table(257) := '93C69AEE93F278AFC297B1A2F06EF4C22EA23FED151F328FAE68746FF03B82AB6F8D58F40A2B9BD0BC71E1BD718269DAC5ABCC4E3C991BCB933E9B1B07F4AE8F3594A128BB3468A7196CC5A28A2A4A0A28A2800A28A2800A28A2800A28A2800A28ACDD63';
wwv_flow_imp.g_varchar2_table(258) := '5DD2B458BCCD5B51B4B352323CE94293F40793F853516F442724B734A8AE05FE24DB5F929E14D1F54D7A4E82486131419F4323E00FC8D4634FF1EF8801FED1D4ACFC3966DD60B15F3EE08F432370A7DD6B5541AF89D8C9D64FE1573ACF10788F48F0F5BF';
wwv_flow_imp.g_varchar2_table(259) := '9FACEA16F6898C8123FCCDFEEAF56FC0571FFF00094F89BC52DE5F83B4836160DC7F6AEAAA5411EB1C5D5BD89E3D715B1E1EF87DA068B71F6BFB3BDFEA44E5AF6FDFCF989F5C9E01FA015D753E6A70F855DF9872CE7F13B1C4E87F0F6C2DAF9753D7EE67';
wwv_flow_imp.g_varchar2_table(260) := 'D7B581C8B9BDE5633FF4CE3FBAA3F3C76AED6968ACE752537AB2E308C760A28A2A0B0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28';
wwv_flow_imp.g_varchar2_table(261) := 'A2800A28A2800A28A2800A28A2800A28A2803175BF0B685AE83FDADA559DD3118DEF10DE3E8DD47E75CD9F86F0D936EF0E6BDAE68E07DD862BA32C23FE00F9CFE75DF515A46B4E3A26672A5096E8E00E9FF1134EFF008F4D6F45D6107FCFF5AB5BB11F58';
wwv_flow_imp.g_varchar2_table(262) := 'C919A7FF00C249E34B35C5FF0082D6E147596C75046CFD118035DE5155ED93F8A29FF5E44FB26B6933845F886F1F179E12F1540C3A9161E62FE6A4D4A9F12349FF0096DA7EBB0FFD74D326FE8A6BB5A31473D3EB11F2CFF98E357E24F8773877D450FF00';
wwv_flow_imp.g_varchar2_table(263) := 'B5A6DC7FF114ADF123C363A4D7EDF4D36E7FF8DD76381E94607A51CD4BF95FDFFF0000396A7738B6F891A2E3F756DACCBFEE6993FF0055A89BE234047FA3786FC53707B797A638CFE2C457738A2872A7D23F8872CFB9C22F8C3C49767FE259E05D4587AD';
wwv_flow_imp.g_varchar2_table(264) := 'EDD456D8FC0E4D30B7C48D41BE54F0F69109EE4C9712AFF2535DFD147B54B68A17B26F7933813E06D635020F883C69ABDC0EF1D8AAD9A1F63B41247E35A7A47C3DF0B697279B06916F35C67266BACCEE4FAE5F383F4AEAE8A4EB4DE97295182E83555554';
wwv_flow_imp.g_varchar2_table(265) := '2A8000E0003A53A8A2B2B9A5828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0';
wwv_flow_imp.g_varchar2_table(266) := '028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0';
wwv_flow_imp.g_varchar2_table(267) := '028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0';
wwv_flow_imp.g_varchar2_table(268) := '028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0';
wwv_flow_imp.g_varchar2_table(269) := '028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0';
wwv_flow_imp.g_varchar2_table(270) := '028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64741609942370949054)
,p_file_name=>'app-251479-logo.jpg'
,p_mime_type=>'image/jpeg'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575856441421048179)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15585842976675
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575859296532048179)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>15585842976722
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575861417065048179)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>15585842976740
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575863008744048179)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>15585842976774
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575864520607048180)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attribute_01=>'separated'
,p_version_scn=>15585842976799
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575866405359048180)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>15585842976835
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575871518084048181)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>15585842976952
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575873949804048181)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>15585842976981
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575875604849048181)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15585842977005
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575878043498048181)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15585842977034
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575879997360048181)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15585842977059
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575882170479048182)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15585842977089
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64575884271991048182)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15585842977120
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(64580105664443048492)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15585843014934
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(64580110318198048493)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(64575892369769048183)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64575894828488048183)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64773308657172823662)
,p_short_name=>'Temas STEAM'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64820555331407882555)
,p_short_name=>unistr('Ingenier\00EDa')
,p_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64828459456041005675)
,p_short_name=>'Ciencias'
,p_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64830487368513077091)
,p_short_name=>unistr('Matem\00E1ticas')
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64873796854204148898)
,p_short_name=>'CHAT-BOT'
,p_link=>'f?p=&APP_ID.:59:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>59
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/drawer
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64575903933338048184)
,p_theme_id=>42
,p_name=>'Drawer'
,p_internal_name=>'DRAWER'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Drawer-page t-PageTemplate--drawer #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Drawer" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Drawer-header">#REGION_POSITION_01#</div>',
'  <div class="t-Drawer-bodyWrapperOut">',
'    <div class="t-Drawer-bodyWrapperIn">',
'      <div class="t-Drawer-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Drawer-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>11
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Drawer-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1659739787629394056
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575908277254048185)
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575910994423048185)
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575912250378048185)
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64575926861428048187)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim t-PageTemplate--leftCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main class="t-Body-mainContent" id="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575929520997048187)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575930828228048187)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575932688597048187)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575933805929048187)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575935767993048188)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575937372157048188)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575938962661048188)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575940456303048188)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575942193292048188)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575943636083048188)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575944963550048189)
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64575948796857048189)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim t-PageTemplate--leftRightCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById('''
||'t_PageBody'').classList.add(''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575952253570048189)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575954983795048190)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575956214959048190)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575957927955048190)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575959498917048190)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575960803490048190)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575962242277048191)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575964825049048191)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575965774128048191)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575967558118048191)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575969522266048191)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575970895187048191)
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64575973759986048192)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login t-PageTemplate--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#',
'<div class="t-Login-bg">',
'  #BACKGROUND_IMAGE#',
'  <div class="t-Login-bgImg"></div>',
'</div>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575976463433048192)
,p_page_template_id=>wwv_flow_imp.id(64575973759986048192)
,p_name=>'Background Image'
,p_placeholder=>'BACKGROUND_IMAGE'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575977398631048192)
,p_page_template_id=>wwv_flow_imp.id(64575973759986048192)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575979367821048192)
,p_page_template_id=>wwv_flow_imp.id(64575973759986048192)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575980453511048192)
,p_page_template_id=>wwv_flow_imp.id(64575973759986048192)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64575988150764048193)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim t-PageTemplate--marquee #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById('''
||'t_PageBody'').classList.add(''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575990716163048194)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575992007735048194)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575992844135048194)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575994521170048194)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575995715918048194)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575997469324048194)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64575999142833048195)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576400718989048195)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576402208970048195)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576403807946048195)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576405158677048196)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576408140182048196)
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64576410429115048197)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav t-PageTemplate--minimal" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576413008925048197)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576415198824048198)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576417106934048198)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576420317845048198)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576422610150048199)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576424519055048199)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576425715297048200)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576426818832048200)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576427980202048200)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576430348231048200)
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64576434865826048201)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard t-PageTemplate--dialog #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMEN'
||'T#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576437249314048201)
,p_page_template_id=>wwv_flow_imp.id(64576434865826048201)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576438803481048201)
,p_page_template_id=>wwv_flow_imp.id(64576434865826048201)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576440998465048202)
,p_page_template_id=>wwv_flow_imp.id(64576434865826048201)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64576445242032048202)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim t-PageTemplate--rightSideCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById('''
||'t_PageBody'').classList.add(''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576448041305048202)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576449567791048203)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576451687075048203)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576453533743048203)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576455428199048203)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576456991274048203)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576458844772048204)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576460014351048204)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576462623224048204)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576463633118048204)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576465798547048204)
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64576469958648048205)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576473469952048205)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576475023943048205)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576476484866048205)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576477940631048205)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576479667247048205)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576480876947048205)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576483455707048206)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576485207754048206)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576486822637048206)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576488572193048206)
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64576493098406048206)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard t-PageTemplate--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#'
||')'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576496391508048207)
,p_page_template_id=>wwv_flow_imp.id(64576493098406048206)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576498422521048207)
,p_page_template_id=>wwv_flow_imp.id(64576493098406048206)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576499889216048207)
,p_page_template_id=>wwv_flow_imp.id(64576493098406048206)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64578185462799048325)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel  t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# #ONCLICK# type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></s'
||'pan></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# #ONCLICK# type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidd'
||'en="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64578191932428048326)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# #ONCLICK# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# #ONCLICK# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64578193659369048326)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# #ONCLICK# type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#</span><span '
||'class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# #ONCLICK# type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL'
||'#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconLeft'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64576508045908048208)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY##SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576512632733048208)
,p_plug_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576514987070048208)
,p_plug_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576516579899048208)
,p_plug_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576519185927048209)
,p_plug_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576520402171048209)
,p_plug_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576521657335048209)
,p_plug_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64576547338594048211)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576550600685048211)
,p_plug_template_id=>wwv_flow_imp.id(64576547338594048211)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576557330197048212)
,p_plug_template_id=>wwv_flow_imp.id(64576547338594048211)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576559725861048212)
,p_plug_template_id=>wwv_flow_imp.id(64576547338594048211)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576561816684048212)
,p_plug_template_id=>wwv_flow_imp.id(64576547338594048211)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64576565845377048213)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576568736318048213)
,p_plug_template_id=>wwv_flow_imp.id(64576565845377048213)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576571222646048213)
,p_plug_template_id=>wwv_flow_imp.id(64576565845377048213)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576573708319048213)
,p_plug_template_id=>wwv_flow_imp.id(64576565845377048213)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576577016659048214)
,p_plug_template_id=>wwv_flow_imp.id(64576565845377048213)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64576580097774048214)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'      #SUB_REGIONS#',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576583054228048214)
,p_plug_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576585369135048214)
,p_plug_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576587495876048215)
,p_plug_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576589791103048215)
,p_plug_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576592128984048215)
,p_plug_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576595649477048215)
,p_plug_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576598153832048216)
,p_plug_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576600107566048216)
,p_plug_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576602030815048216)
,p_plug_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64576615619484048217)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576618531370048217)
,p_plug_template_id=>wwv_flow_imp.id(64576615619484048217)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576619743630048217)
,p_plug_template_id=>wwv_flow_imp.id(64576615619484048217)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576623024537048218)
,p_plug_template_id=>wwv_flow_imp.id(64576615619484048217)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64576634291569048219)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-header">',
'    <div class="t-Region-headerItems t-Region-headerItems--title">',
'      <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'    </div>',
'    <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
'  </div>',
'  <div role="region" aria-label="#TITLE#" class="t-Region-bodyWrap">',
'    <div class="t-Region-buttons t-Region-buttons--top">',
'      <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'      <div class="t-Region-buttons-right">#NEXT#</div>',
'    </div>',
'    <div class="t-Region-body">',
'      #BODY#',
'      <div class="t-Region-carouselRegions">#SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Region-buttons t-Region-buttons--bottom">',
'      <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'      <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576637162610048219)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576639168445048219)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576641998609048220)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576644606825048220)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576647014971048220)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576648929498048220)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576650412974048220)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576652683174048220)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576654472184048220)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576656064965048221)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576658252986048221)
,p_plug_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64576714162845048227)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" data-region-id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--controls"><span class="t-Button t-Button--icon t-Button--hideShow"><span class="a-Icon _a-Collapsible-icon" aria-hidden="true"></span></span></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 id="#REGION_STATIC_ID#_heading" class="t-Region-title" data-apex-heading><button class="t-Region-titleButton" type="button">#TITLE#</button></h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>',
'    (() => {',
'        const region = document.getElementById(''#REGION_STATIC_ID#'').classList;',
'        const pref = sessionStorage.getItem(''ORA_WWV_apex.toggleCore.a_Collapsible_#REGION_ID#.&APP_ID..&APP_PAGE_ID..preferenceForExpanded'');',
'        if (region.contains(''js-useLocalStorage'')) { region.toggle(''is-collapsed'', pref === ''false'' || region.contains(''is-collapsed'')); }',
'    })();',
'</script>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576717124818048228)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576718991521048228)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576721081315048228)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576724172196048228)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576726498007048228)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576727137026048229)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576728987412048229)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576730383217048229)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576731598071048229)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576732556428048229)
,p_plug_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64576791411063048234)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY##SUB_REGIONS#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576793161280048234)
,p_plug_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576795028516048234)
,p_plug_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64576798638221048235)
,p_plug_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577000362178048235)
,p_plug_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577002912154048235)
,p_plug_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577005110866048236)
,p_plug_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577026146455048239)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-top">',
'    <div class="t-HeroRegion-wrap">',
'      <div class="t-HeroRegion-col t-HeroRegion-col--beforeIcon">#UP#</div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--left">#REGION_IMAGE#<span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-HeroRegion-title" data-apex-heading>#TITLE#</h1>',
'        #BODY#',
'      </div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'    </div>',
'  </div>',
'  <div class="t-HeroRegion-bottom">#SMART_FILTERS#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_image_template=>'<img class="t-HeroRegion-icon" src="#REGION_IMAGE_URL#" alt="" />'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577028720050048240)
,p_plug_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577030521635048240)
,p_plug_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577032338481048240)
,p_plug_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577034480138048240)
,p_plug_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577036097535048241)
,p_plug_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/image
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577051268939048242)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="t-ImageRegion #REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#><img src="#REGION_IMAGE_URL#" alt="#REGION_IMAGE_ALT_TEXT#" #REGION_IMAGE_ATTRIBUTES# /></div>'
,p_page_plug_template_name=>'Image'
,p_internal_name=>'IMAGE'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ImageRegion--auto:t-ImageRegion--cover:t-ImageRegion--square:t-ImageRegion--noFilter'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1673953645642781634
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577053951374048242)
,p_plug_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577056065485048242)
,p_plug_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577096415491048245)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# #APEX_CSP_DISPLAY_NONE# title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577099129512048245)
,p_plug_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577101759732048246)
,p_plug_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577105283792048246)
,p_plug_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577107823551048246)
,p_plug_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577110484054048246)
,p_plug_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577112237754048246)
,p_plug_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577113833608048247)
,p_plug_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577115503265048247)
,p_plug_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_drawer
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577133879874048248)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'  <div id="#REGION_STATIC_ID#" class="t-DrawerRegion js-dialog-class-ui-dialog--drawer #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# #APEX_CSP_DISPLAY_NONE# title="#TITLE!ATTR#">',
'    <div class="t-DrawerRegion-wrap">',
'      <div class="t-DrawerRegion-bodyWrapperOut">',
'        <div class="t-DrawerRegion-bodyWrapperIn">',
'          <div class="t-DrawerRegion-body">#BODY##SUB_REGIONS#</div>',
'        </div>',
'      </div>',
'      <div class="t-DrawerRegion-buttons">',
'        <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'          <div class="t-ButtonRegion-wrap">',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--left">',
'              <div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div>',
'            </div>',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--right">',
'              <div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div>',
'            </div>',
'          </div>',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Inline Drawer'
,p_internal_name=>'INLINE_DRAWER'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal'
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1659526333647509386
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577136249515048249)
,p_plug_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577138897690048249)
,p_plug_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577140957210048249)
,p_plug_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577142923219048249)
,p_plug_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577144592848048249)
,p_plug_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577145171733048250)
,p_plug_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577146332435048250)
,p_plug_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577148225131048250)
,p_plug_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577162777491048252)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# #APEX_CSP_DISPLAY_NONE# title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577164727404048252)
,p_plug_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577166545386048253)
,p_plug_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577168258576048253)
,p_plug_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577170535867048253)
,p_plug_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577171822866048253)
,p_plug_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577173559569048254)
,p_plug_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577175801451048254)
,p_plug_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577177623373048254)
,p_plug_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577402940633048257)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'    <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'    #PREVIOUS#',
'    #BODY#',
'    #SUB_REGIONS#',
'    #NEXT#',
'</div>',
''))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577406044382048257)
,p_plug_template_id=>wwv_flow_imp.id(64577402940633048257)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577407644996048257)
,p_plug_template_id=>wwv_flow_imp.id(64577402940633048257)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577409441314048257)
,p_plug_template_id=>wwv_flow_imp.id(64577402940633048257)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577411582443048258)
,p_plug_template_id=>wwv_flow_imp.id(64577402940633048257)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577413140725048258)
,p_plug_template_id=>wwv_flow_imp.id(64577402940633048257)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/item_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577418919930048259)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ItemContainer #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ItemContainer-start">#BUTTON_START#</div>',
'  <div class="t-ItemContainer-item">#BODY#</div>',
'  <div class="t-ItemContainer-end">#BUTTON_END#</div>',
'</div>'))
,p_page_plug_template_name=>'Item Container'
,p_internal_name=>'ITEM_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1568547778806319863
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577422201407048259)
,p_plug_template_id=>wwv_flow_imp.id(64577418919930048259)
,p_name=>'Item'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577424151715048260)
,p_plug_template_id=>wwv_flow_imp.id(64577418919930048259)
,p_name=>'Button End'
,p_placeholder=>'BUTTON_END'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577426456601048260)
,p_plug_template_id=>wwv_flow_imp.id(64577418919930048259)
,p_name=>'Button Start'
,p_placeholder=>'BUTTON_START'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577438724897048261)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    #REGION_IMAGE#',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <h2 class="t-Login-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_image_template=>'<img class="t-Login-logo" src="#REGION_IMAGE_URL#" alt="" data-app-icon />'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577440900540048261)
,p_plug_template_id=>wwv_flow_imp.id(64577438724897048261)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577442465451048261)
,p_plug_template_id=>wwv_flow_imp.id(64577438724897048261)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577444342515048262)
,p_plug_template_id=>wwv_flow_imp.id(64577438724897048261)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577445964129048262)
,p_plug_template_id=>wwv_flow_imp.id(64577438724897048261)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577447625566048262)
,p_plug_template_id=>wwv_flow_imp.id(64577438724897048261)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/search_results_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577457281652048263)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ResultsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ResultsRegion-search">#SEARCH_FIELD#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>',
''))
,p_page_plug_template_name=>'Search Results Container'
,p_internal_name=>'SEARCH_RESULTS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>11
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>1554292095258992441
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577460314342048263)
,p_plug_template_id=>wwv_flow_imp.id(64577457281652048263)
,p_name=>'Search Results'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577462363541048263)
,p_plug_template_id=>wwv_flow_imp.id(64577457281652048263)
,p_name=>'Search Field'
,p_placeholder=>'SEARCH_FIELD'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577463998447048264)
,p_plug_template_id=>wwv_flow_imp.id(64577457281652048263)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577474139586048265)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577476031644048265)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577477416323048265)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577479034458048265)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577480627441048265)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577482148869048266)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577483662408048266)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577485472596048266)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577487595533048266)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577489035940048266)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577490232950048266)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577491512507048267)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577493771170048267)
,p_plug_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577530607368048271)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">#SUB_REGIONS#</div>',
'</div>'))
,p_sub_plug_template=>'<div data-label="#SUB_REGION_TITLE!ATTR#" id="SR_#SUB_REGION_ID#">#SUB_REGION#</div>'
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577533054364048271)
,p_plug_template_id=>wwv_flow_imp.id(64577530607368048271)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577534824737048271)
,p_plug_template_id=>wwv_flow_imp.id(64577530607368048271)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577549525333048273)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<nav id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#">',
'  <div class="t-BreadcrumbRegion-top">',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--start">#UP#</div>',
'    <div class="t-BreadcrumbRegion-body">',
'      <div class="t-BreadcrumbRegion-breadcrumb">#BODY#</div>',
'        <div class="t-BreadcrumbRegion-title">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-BreadcrumbRegion-titleText" data-apex-heading>#TITLE#</h1>',
'      </div>',
'    </div>',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--end">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-bottom">#SMART_FILTERS#</div>',
'</nav>',
''))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'navigation'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577552647080048273)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577554349858048273)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577557050281048273)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577558649932048274)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577560941359048274)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577563265280048274)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577565674504048274)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577568069222048274)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577570382622048275)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577572689938048275)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577574040225048275)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577575715210048276)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577578795467048276)
,p_plug_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64577587860843048277)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">#BODY#</div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577589694474048278)
,p_plug_template_id=>wwv_flow_imp.id(64577587860843048277)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577591170009048278)
,p_plug_template_id=>wwv_flow_imp.id(64577587860843048277)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577592359822048278)
,p_plug_template_id=>wwv_flow_imp.id(64577587860843048277)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577593467958048278)
,p_plug_template_id=>wwv_flow_imp.id(64577587860843048277)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64577594956892048279)
,p_plug_template_id=>wwv_flow_imp.id(64577587860843048277)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64577997552782048302)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02# is-current" aria-current="page">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578025583171048306)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#" aria-current="page">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578063182976048311)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'  #SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578073589285048312)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title" aria-current="page">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578093106420048315)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578098564432048315)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" #APEX_CSP_DISPLAY_NONE#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578102743431048316)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" #APEX_CSP_DISPLAY_NONE# id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_a06_label=>'Link Target'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578105944078048316)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" #APEX_CSP_DISPLAY_NONE# target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" #APEX_CSP_DISPLAY_NONE# target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>'))
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'t-TreeNav--styleA:js-navCollapsed--hidden'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&"APP_TEXT$APEX.TEMPLATE.APPLICATION".">',
'  <div class="a-TreeView t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL".">',
'    <ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </ul>',
'  </div>',
'</div>',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>',
'(() => {',
'  const pref = "ORA_WWV_apex.toggleCore.nav.&APP_ID..preferenceForExpanded",',
'        nav  = document.getElementById(''t_TreeNav'').classList,',
'        body = document.getElementById(''t_PageBody'');',
'  if ( !sessionStorage.getItem( pref ) ) { sessionStorage.setItem( pref, !nav.contains(''js-defaultCollapsed'') ); }',
'  if ( nav.contains(''js-navCollapsed--default'') ) {',
'      body?.classList.add(''js-navCollapsed--icons'');',
'      if ( sessionStorage.getItem( pref ) === "false" ) { body?.classList.add(''js-navCollapsed''); }',
'  }',
'  if ( sessionStorage.getItem( pref ) === "true" && window.matchMedia("(min-width: " + getComputedStyle(document.documentElement).getPropertyValue("--js-mq-lg") + ")").matches) { body?.classList.add(''js-navExpanded''); }',
'  for (const label of document.querySelectorAll(".a-TreeView .a-TreeView-label")) {',
'      label.textContent = label.textContent.replaceAll(/\[(.*?)\]/ig, '''');',
'  }',
'})();',
'</script>'))
,p_before_sub_list=>'<ul #APEX_CSP_DISPLAY_NONE#>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" #APEX_CSP_DISPLAY_NONE# target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" #APEX_CSP_DISPLAY_NONE# target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578115779558048317)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item is-active #A03#" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578127031317048319)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" #APEX_CSP_DISPLAY_NONE#>',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578140748654048320)
,p_list_template_current=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a></li>'
,p_list_template_noncurrent=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul #APEX_CSP_DISPLAY_NONE#>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578147153575048321)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03# is-active" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64578157420086048322)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" aria-current="step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>'<ul aria-label="#CURRENT_PROGRESS#" class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577801672283048280)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577804146060048280)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-wrap u-color">',
'    <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'    <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577830234419048284)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577873482294048288)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'  <div class="t-Comments-icon">',
'    <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'  </div>',
'  <div class="t-Comments-body">',
'    <div class="t-Comments-info">',
'      #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'    </div>',
'    <div class="t-Comments-comment">',
'      #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577882331799048289)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/contextual_info
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577904700088048291)
,p_row_template_name=>'Contextual Info'
,p_internal_name=>'CONTEXTUAL_INFO'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContextualInfo-item">',
'  <span class="t-ContextualInfo-label">#COLUMN_HEADER#</span>',
'  <span class="t-ContextualInfo-value">#COLUMN_VALUE#</span>',
'</div>'))
,p_row_template_before_rows=>' <div class="t-ContextualInfo #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_reference_id=>2114325881116323585
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577913883079048292)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </a>',
'</li>',
''))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577935864407048294)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577938489175048295)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# #ACCESSIBLE_HEADERS#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ARIA_SORT# #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577963219141048297)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577967049503048298)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">#COLUMN_HEADER#</dt>',
'<dd class="t-AVPList-value">#COLUMN_VALUE#</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64577978957922048300)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64578164540071048323)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64578167349483048323)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64578168760148048323)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64578169366370048324)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64578169563987048324)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64578177162776048324)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT#</div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>',
''))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64578180725222048325)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemRequired-marker" aria-hidden="true"></div>',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(64578402919766048327)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active" aria-current="page"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_imp_shared.create_popup_lov_template(
 p_id=>wwv_flow_imp.id(64578406725187048328)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text" autofocus'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(64578405070515048328)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(64579936801507048471)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(64576469958648048205)
,p_default_dialog_template=>wwv_flow_imp.id(64576434865826048201)
,p_error_template=>wwv_flow_imp.id(64575973759986048192)
,p_printer_friendly_template=>wwv_flow_imp.id(64576469958648048205)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(64575973759986048192)
,p_default_button_template=>wwv_flow_imp.id(64578191932428048326)
,p_default_region_template=>wwv_flow_imp.id(64577474139586048265)
,p_default_chart_template=>wwv_flow_imp.id(64577474139586048265)
,p_default_form_template=>wwv_flow_imp.id(64577474139586048265)
,p_default_reportr_template=>wwv_flow_imp.id(64577474139586048265)
,p_default_tabform_template=>wwv_flow_imp.id(64577474139586048265)
,p_default_wizard_template=>wwv_flow_imp.id(64577474139586048265)
,p_default_menur_template=>wwv_flow_imp.id(64577549525333048273)
,p_default_listr_template=>wwv_flow_imp.id(64577474139586048265)
,p_default_irr_template=>wwv_flow_imp.id(64577402940633048257)
,p_default_report_template=>wwv_flow_imp.id(64577938489175048295)
,p_default_label_template=>wwv_flow_imp.id(64578169366370048324)
,p_default_menu_template=>wwv_flow_imp.id(64578402919766048327)
,p_default_calendar_template=>wwv_flow_imp.id(64578405070515048328)
,p_default_list_template=>wwv_flow_imp.id(64578063182976048311)
,p_default_nav_list_template=>wwv_flow_imp.id(64578140748654048320)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(64578140748654048320)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(64578105944078048316)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(64576580097774048214)
,p_default_dialogr_template=>wwv_flow_imp.id(64576547338594048211)
,p_default_option_label=>wwv_flow_imp.id(64578169366370048324)
,p_default_required_label=>wwv_flow_imp.id(64578180725222048325)
,p_default_navbar_list_template=>wwv_flow_imp.id(64578102743431048316)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64579930877918048470)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64579931550418048470)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64579932445180048470)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64579932899900048470)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64579933541608048470)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64575916062649048186)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64575922982695048186)
,p_theme_id=>42
,p_name=>'PAGE_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the position of the page.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64575983435768048193)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64575987136122048193)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576527026063048209)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576530168613048210)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576533550924048210)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576536749232048210)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576607226924048216)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576609748809048217)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576663084390048221)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576669778674048222)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576678358259048223)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576688490516048224)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576691902345048225)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576708558567048227)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576768064355048232)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576770710314048233)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64576778795392048233)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577008913612048236)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577015671646048238)
,p_theme_id=>42
,p_name=>'HEADING_FONT'
,p_display_name=>'Heading Font'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the font-family of the heading for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577020716592048238)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577040355167048241)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577045568960048241)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577059661521048242)
,p_theme_id=>42
,p_name=>'IMAGE_FILTER'
,p_display_name=>'Filter'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577074231339048243)
,p_theme_id=>42
,p_name=>'IMAGE_RATIO'
,p_display_name=>'Ratio'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577082308010048244)
,p_theme_id=>42
,p_name=>'IMAGE_SCALE'
,p_display_name=>'Scale'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577089961215048245)
,p_theme_id=>42
,p_name=>'IMAGE_SHAPE'
,p_display_name=>'Shape'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577122118880048247)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577157734213048252)
,p_theme_id=>42
,p_name=>'REGION_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577181227239048254)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577429418469048260)
,p_theme_id=>42
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'This sets the vertical alignment of the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577450339626048262)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577466478176048264)
,p_theme_id=>42
,p_name=>'ICON_SIZE'
,p_display_name=>'Icon Size'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_null_text=>'Initial'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577471604744048265)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE'
,p_display_name=>'Result Appearance'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577538010467048272)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577540804777048272)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577546414227048272)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577597200758048279)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577807239939048280)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577808903057048281)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577820247991048282)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577834898926048284)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577848378850048286)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577854498620048286)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577866498955048287)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577876215881048288)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577885447200048289)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577888120717048290)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577890528858048290)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577893415057048290)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577896013840048290)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577899140254048291)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577903350684048291)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577908280801048292)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS'
,p_display_name=>'Display Items'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577910597181048292)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS'
,p_display_name=>'Display Labels'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577927747638048294)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577950630864048296)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577953261854048296)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577956307928048297)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64577969585500048298)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578003008485048303)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578009814077048303)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578018183814048304)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578028241488048306)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578044222079048309)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578047192329048310)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578055836163048311)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578070701916048312)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578085787299048314)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578110840094048317)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578149858589048321)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578153680162048322)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578159368666048322)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578171916836048324)
,p_theme_id=>42
,p_name=>'REQUIRED_INDICATOR'
,p_display_name=>'Required Indicator'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578188972105048326)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64578197739513048326)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579939347163048471)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579947218422048472)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579948837592048472)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579957028689048473)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579958973057048473)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579966262283048474)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579967876246048475)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579976209082048475)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579977998206048476)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579983473079048476)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579985254558048476)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579986937336048477)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579988581441048477)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579990505945048477)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579991938808048477)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64579994370535048477)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580000016716048478)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580006729853048479)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580011255677048479)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580013882379048480)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580015508044048480)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580017187012048480)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Spacing'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580020335705048480)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580023020963048481)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE'
,p_display_name=>'Display Text Style'
,p_display_sequence=>400
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for Display Only & Read Only display items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580024823868048481)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580027504981048481)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580032484477048482)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580034833437048482)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580038902563048483)
,p_theme_id=>42
,p_name=>'CONTENT_PADDING'
,p_display_name=>'Content Padding'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the Content Body padding for the page.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580041425392048483)
,p_theme_id=>42
,p_name=>'SORT_ORDER_ALIGNMENT'
,p_display_name=>'Sort Order Alignment'
,p_display_sequence=>145
,p_template_types=>'REGION'
,p_help_text=>'Sets the alignment of the sort order item.'
,p_null_text=>'Default (Start)'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64580044752536048484)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575917583081048186)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(64575916062649048186)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575918802977048186)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(64575916062649048186)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575920845427048186)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(64575916062649048186)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575922093127048186)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(64575916062649048186)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575923986426048186)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(64575922982695048186)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575925131005048187)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(64575922982695048186)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575926451869048187)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64575903933338048184)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575948158721048189)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64575926861428048187)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575973447129048192)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64575948796857048189)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575983950758048193)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(64575973759986048192)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_imp.id(64575983435768048193)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575984987785048193)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64575973759986048192)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_imp.id(64575983435768048193)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575986163722048193)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(64575973759986048192)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_imp.id(64575983435768048193)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64575987907653048193)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(64575973759986048192)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_imp.id(64575987136122048193)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576410275284048197)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64575988150764048193)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576434070314048201)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64576410429115048197)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576443845281048202)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64576434865826048201)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576444745630048202)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(64576434865826048201)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576469107733048205)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64576445242032048202)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576492525054048206)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64576469958648048205)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576504485351048207)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64576493098406048206)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576507451570048208)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(64576493098406048206)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576525574188048209)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576528713938048209)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_imp.id(64576527026063048209)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576531088183048210)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_imp.id(64576530168613048210)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576532610794048210)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--removeHeading js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64576530168613048210)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576534579632048210)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_imp.id(64576533550924048210)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576537889833048210)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(64576536749232048210)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576539439055048210)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_imp.id(64576527026063048209)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576541026942048210)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_imp.id(64576533550924048210)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576542434218048211)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_imp.id(64576527026063048209)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576544349012048211)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_imp.id(64576533550924048210)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576545905845048211)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_imp.id(64576527026063048209)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576547031428048211)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576508045908048208)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(64576536749232048210)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576608684471048216)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576610855640048217)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(64576609748809048217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576612168945048217)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576613767600048217)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(64576609748809048217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576615157134048217)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576580097774048214)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576625729254048218)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64576615619484048217)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576626903907048218)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576615619484048217)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576629625435048218)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576615619484048217)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576633435655048219)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576615619484048217)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576664366970048221)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_imp.id(64576663084390048221)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576666299610048221)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_imp.id(64576663084390048221)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576668097034048221)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_imp.id(64576663084390048221)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576670126134048222)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576672237375048222)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576674785221048222)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576676174322048223)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_imp.id(64576663084390048221)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576676731718048223)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576679611916048223)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576680952465048223)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576682483626048223)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576683764175048224)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576686891919048224)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576689761137048224)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_imp.id(64576688490516048224)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576693472240048225)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(64576691902345048225)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576694833686048225)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(64576688490516048224)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576696496530048225)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576697625953048225)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576699582975048226)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576701133254048226)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(64576691902345048225)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576703733577048226)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576706069961048226)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576707328272048226)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576709263199048227)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_imp.id(64576708558567048227)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576710673556048227)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_imp.id(64576708558567048227)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576712187349048227)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576634291569048219)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576736416904048229)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576737897634048230)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576739252511048230)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576740602093048230)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576742702039048230)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576743981328048230)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576745756857048230)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576747662386048231)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576750021795048231)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576750752665048231)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576752508942048231)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576753881313048231)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576754981997048231)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576756827539048231)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576757806580048232)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576759487585048232)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576761090893048232)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576764891230048232)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576766605827048232)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576769342735048232)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(64576768064355048232)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576771763678048233)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_imp.id(64576770710314048233)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576775218162048233)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(64576768064355048232)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576776864134048233)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(64576691902345048225)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576780215363048233)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_imp.id(64576778795392048233)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576781511726048233)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576783493499048233)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576785730114048234)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576788220797048234)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576789667558048234)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(64576691902345048225)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64576791086656048234)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576714162845048227)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577007789378048236)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577009735780048237)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_imp.id(64577008913612048236)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577012423306048237)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_imp.id(64577008913612048236)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577013895151048237)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Small'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_imp.id(64577008913612048236)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577017524052048238)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-ContentBlock--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(64577015671646048238)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577018748739048238)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64576688490516048224)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577019860471048238)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-ContentBlock--hideHeader'
,p_group_id=>wwv_flow_imp.id(64576688490516048224)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577022109514048239)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_imp.id(64577020716592048238)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577024247645048239)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_imp.id(64577020716592048238)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577025886828048239)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64576791411063048234)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577041754998048241)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_imp.id(64577040355167048241)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577043822275048241)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577044930257048241)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_css_classes=>'t-HeroRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(64577015671646048238)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577046523952048241)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_imp.id(64577045568960048241)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577048023225048241)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64577045568960048241)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577049222372048242)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577050814998048242)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577026146455048239)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577061536004048243)
,p_theme_id=>42
,p_name=>'FILTER_BLUR'
,p_display_name=>'Blur'
,p_display_sequence=>430
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--blur'
,p_group_id=>wwv_flow_imp.id(64577059661521048242)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577063120603048243)
,p_theme_id=>42
,p_name=>'FILTER_GRAYSCALE'
,p_display_name=>'Grayscale'
,p_display_sequence=>410
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--grayscale'
,p_group_id=>wwv_flow_imp.id(64577059661521048242)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577064757066048243)
,p_theme_id=>42
,p_name=>'FILTER_INVERT'
,p_display_name=>'Invert'
,p_display_sequence=>440
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--invert'
,p_group_id=>wwv_flow_imp.id(64577059661521048242)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577067289196048243)
,p_theme_id=>42
,p_name=>'FILTER_NONE'
,p_display_name=>'None'
,p_display_sequence=>400
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--noFilter'
,p_group_id=>wwv_flow_imp.id(64577059661521048242)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577069223984048243)
,p_theme_id=>42
,p_name=>'FILTER_SATURATE'
,p_display_name=>'Saturate'
,p_display_sequence=>450
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--saturate'
,p_group_id=>wwv_flow_imp.id(64577059661521048242)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577070619082048243)
,p_theme_id=>42
,p_name=>'FILTER_SEPIA'
,p_display_name=>'Sepia'
,p_display_sequence=>420
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--sepia'
,p_group_id=>wwv_flow_imp.id(64577059661521048242)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577072702325048243)
,p_theme_id=>42
,p_name=>'IMAGE_STRETCH'
,p_display_name=>'Image Stretch'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--stretch'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577075662597048244)
,p_theme_id=>42
,p_name=>'RATIO_16_9'
,p_display_name=>'16:9 (Widescreen)'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--16x9'
,p_group_id=>wwv_flow_imp.id(64577074231339048243)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577077049537048244)
,p_theme_id=>42
,p_name=>'RATIO_1_1'
,p_display_name=>'1:1 (Square)'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--1x1'
,p_group_id=>wwv_flow_imp.id(64577074231339048243)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577077810017048244)
,p_theme_id=>42
,p_name=>'RATIO_2_1'
,p_display_name=>'2:1 (Univisium)'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--2x1'
,p_group_id=>wwv_flow_imp.id(64577074231339048243)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577078838927048244)
,p_theme_id=>42
,p_name=>'RATIO_4_3'
,p_display_name=>'4:3 (Standard)'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--4x3'
,p_group_id=>wwv_flow_imp.id(64577074231339048243)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577080422035048244)
,p_theme_id=>42
,p_name=>'RATIO_AUTO'
,p_display_name=>'Auto'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--auto'
,p_group_id=>wwv_flow_imp.id(64577074231339048243)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577083579263048244)
,p_theme_id=>42
,p_name=>'SCALE_CONTAIN'
,p_display_name=>'Contain'
,p_display_sequence=>200
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--contain'
,p_group_id=>wwv_flow_imp.id(64577082308010048244)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577084777391048244)
,p_theme_id=>42
,p_name=>'SCALE_COVER'
,p_display_name=>'Cover'
,p_display_sequence=>210
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--cover'
,p_group_id=>wwv_flow_imp.id(64577082308010048244)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577086640391048244)
,p_theme_id=>42
,p_name=>'SCALE_DOWN'
,p_display_name=>'Scale Down'
,p_display_sequence=>230
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--scale-down'
,p_group_id=>wwv_flow_imp.id(64577082308010048244)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577088103135048245)
,p_theme_id=>42
,p_name=>'SCALE_FILL'
,p_display_name=>'Fill'
,p_display_sequence=>220
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--fill'
,p_group_id=>wwv_flow_imp.id(64577082308010048244)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577091584471048245)
,p_theme_id=>42
,p_name=>'SHAPE_CIRCLE'
,p_display_name=>'Circle'
,p_display_sequence=>320
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--circle'
,p_group_id=>wwv_flow_imp.id(64577089961215048245)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577093906597048245)
,p_theme_id=>42
,p_name=>'SHAPE_ROUNDED'
,p_display_name=>'Rounded'
,p_display_sequence=>310
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--rounded'
,p_group_id=>wwv_flow_imp.id(64577089961215048245)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577095153078048245)
,p_theme_id=>42
,p_name=>'SHAPE_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>300
,p_region_template_id=>wwv_flow_imp.id(64577051268939048242)
,p_css_classes=>'t-ImageRegion--square'
,p_group_id=>wwv_flow_imp.id(64577089961215048245)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577119443161048247)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577121180391048247)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577123434195048248)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577125374592048248)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577126995314048248)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577128667090048248)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577130063153048248)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577131399203048248)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577133138745048248)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577096415491048245)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577150592305048251)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577151640154048251)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577153041106048251)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577155184582048251)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577155999271048251)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577156783969048251)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None (Auto)'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577158723444048252)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(64577157734213048252)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577160579725048252)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(64577157734213048252)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577162328251048252)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64577133879874048248)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577182426364048254)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_imp.id(64577181227239048254)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577184403915048255)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_imp.id(64577181227239048254)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577186107588048255)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577188297085048255)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_imp.id(64577181227239048254)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577190465191048255)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_imp.id(64577181227239048254)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577192066118048255)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577192987524048255)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_imp.id(64577181227239048254)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577193942745048255)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577195626437048256)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577198209171048256)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577199460190048256)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577401260823048256)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577402884050048257)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577162777491048252)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(64577122118880048247)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577415469057048258)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577402940633048257)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577417131493048258)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577402940633048257)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577430317136048260)
,p_theme_id=>42
,p_name=>'ALIGNMENT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>11
,p_region_template_id=>wwv_flow_imp.id(64577418919930048259)
,p_css_classes=>'t-ItemContainer--alignCenter'
,p_group_id=>wwv_flow_imp.id(64577429418469048260)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577431669772048260)
,p_theme_id=>42
,p_name=>'ALIGNMENT_END'
,p_display_name=>'End'
,p_display_sequence=>12
,p_region_template_id=>wwv_flow_imp.id(64577418919930048259)
,p_css_classes=>'t-ItemContainer--alignEnd'
,p_group_id=>wwv_flow_imp.id(64577429418469048260)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577432861816048260)
,p_theme_id=>42
,p_name=>'ALIGNMENT_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577418919930048259)
,p_css_classes=>'t-ItemContainer--alignStart'
,p_group_id=>wwv_flow_imp.id(64577429418469048260)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577434720706048261)
,p_theme_id=>42
,p_name=>'ALIGNMENT_STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>13
,p_region_template_id=>wwv_flow_imp.id(64577418919930048259)
,p_css_classes=>'t-ItemContainer--alignStretch'
,p_group_id=>wwv_flow_imp.id(64577429418469048260)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577436457771048261)
,p_theme_id=>42
,p_name=>'STACK_MOBILE'
,p_display_name=>'Stack on Mobile'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577418919930048259)
,p_css_classes=>'t-ItemContainer--stackMobile'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577438035988048261)
,p_theme_id=>42
,p_name=>'WRAP_ITEMS'
,p_display_name=>'Wrap Items'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(64577418919930048259)
,p_css_classes=>'t-ItemContainer--wrap'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577451586704048262)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577438724897048261)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_imp.id(64577450339626048262)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577453116852048263)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577438724897048261)
,p_css_classes=>'t-Login-region--headerTitle js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64577450339626048262)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577454482838048263)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577438724897048261)
,p_css_classes=>'t-Login-region--headerHidden js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64577450339626048262)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577465426252048264)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577457281652048263)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within search results.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577467585185048264)
,p_theme_id=>42
,p_name=>'ICON_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(64577457281652048263)
,p_css_classes=>'t-ResultsRegion--iconLg'
,p_group_id=>wwv_flow_imp.id(64577466478176048264)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to large (64px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577469890111048264)
,p_theme_id=>42
,p_name=>'ICON_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(64577457281652048263)
,p_css_classes=>'t-ResultsRegion--iconMd'
,p_group_id=>wwv_flow_imp.id(64577466478176048264)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to medium (32px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577470651010048265)
,p_theme_id=>42
,p_name=>'ICON_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577457281652048263)
,p_css_classes=>'t-ResultsRegion--iconSm'
,p_group_id=>wwv_flow_imp.id(64577466478176048264)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to small (16px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577472667817048265)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_BOXED'
,p_display_name=>'Boxed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577457281652048263)
,p_css_classes=>'t-ResultsRegion--boxed'
,p_group_id=>wwv_flow_imp.id(64577471604744048265)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577473664552048265)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_FLAT'
,p_display_name=>'Flat'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(64577457281652048263)
,p_css_classes=>'t-ResultsRegion--flat'
,p_group_id=>wwv_flow_imp.id(64577471604744048265)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577495200539048267)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577496432105048267)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577497946172048267)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577498810123048268)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(64576669778674048222)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577499637271048268)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577500806331048268)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577502275392048268)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577504695392048268)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577505965460048268)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577507748268048268)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577508367026048269)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577509827766048269)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577511541734048269)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577512335797048269)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577513603834048269)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577514698838048269)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577516459568048269)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577517567115048270)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577519139740048270)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(64576678358259048223)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577520108270048270)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64576688490516048224)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577520818670048270)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(64576691902345048225)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577521723678048270)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(64576688490516048224)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577522691097048270)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577523850907048270)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577524646628048270)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577525522067048271)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(64576691902345048225)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577526607919048271)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577527620294048271)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577528712080048271)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577530178740048271)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64577474139586048265)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_imp.id(64576607226924048216)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577539187679048272)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577530607368048271)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_imp.id(64577538010467048272)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577541666632048272)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577530607368048271)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_imp.id(64577540804777048272)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577542506634048272)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577530607368048271)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577544417314048272)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577530607368048271)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_imp.id(64577540804777048272)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577547417534048272)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577530607368048271)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_imp.id(64577546414227048272)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577549197833048273)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577530607368048271)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_imp.id(64577546414227048272)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577581710819048277)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_imp.id(64577008913612048236)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577583108561048277)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_css_classes=>'t-BreadcrumbRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(64577015671646048238)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577584428747048277)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577586271376048277)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_imp.id(64577008913612048236)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577587391591048277)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577549525333048273)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577598147363048279)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64577587860843048277)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_imp.id(64577597200758048279)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577599543671048279)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577587860843048277)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_imp.id(64577597200758048279)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577801300359048280)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64577587860843048277)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577808132996048281)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(64577807239939048280)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577810054585048281)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577810951356048281)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(64577807239939048280)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577811809298048281)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577813209943048281)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(64577807239939048280)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577814419826048281)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577815414112048281)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577816176665048282)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(64577807239939048280)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577817228021048282)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(64577807239939048280)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577818837863048282)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577821841572048283)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(64577820247991048282)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577822818588048283)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577823959234048283)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577826396496048283)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577828063406048283)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(64577820247991048282)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577829744714048284)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577804146060048280)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577833278838048284)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577835359381048284)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(64577834898926048284)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577836832508048285)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577838307083048285)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(64577834898926048284)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577840003516048285)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577841643106048285)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(64577834898926048284)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577843008436048285)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577844931438048285)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(64577820247991048282)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577846740502048285)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64577820247991048282)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577849616016048286)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(64577848378850048286)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577851770413048286)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(64577848378850048286)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577853094240048286)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(64577820247991048282)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577855093729048286)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(64577854498620048286)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577856187798048286)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(64577854498620048286)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577858415064048287)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577859668428048287)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64577820247991048282)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577862488850048287)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577864522702048287)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(64577834898926048284)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577867319906048287)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64577866498955048287)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577869575207048288)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64577866498955048287)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577871038950048288)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577872368142048288)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577830234419048284)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577877157848048288)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577873482294048288)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_imp.id(64577876215881048288)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577879151198048289)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577873482294048288)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64577866498955048287)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577880755406048289)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577873482294048288)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64577866498955048287)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577881643851048289)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577873482294048288)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_imp.id(64577876215881048288)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577886671257048290)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64577882331799048289)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_imp.id(64577885447200048289)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577889198195048290)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_imp.id(64577882331799048289)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_imp.id(64577888120717048290)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577892328406048290)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64577882331799048289)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_imp.id(64577890528858048290)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577894945593048290)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577882331799048289)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_imp.id(64577893415057048290)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577897655012048291)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64577882331799048289)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_imp.id(64577896013840048290)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577900245755048291)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577882331799048289)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_imp.id(64577899140254048291)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577902052586048291)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64577882331799048289)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_imp.id(64577820247991048282)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577904198085048291)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577882331799048289)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_imp.id(64577903350684048291)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577909146089048292)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64577904700088048291)
,p_css_classes=>'t-ContextualInfo-item--stacked'
,p_group_id=>wwv_flow_imp.id(64577908280801048292)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577912124338048292)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64577904700088048291)
,p_css_classes=>'t-ContextualInfo-label--stacked'
,p_group_id=>wwv_flow_imp.id(64577910597181048292)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577913500076048292)
,p_theme_id=>42
,p_name=>'HIDE_EMPTY_VALUES'
,p_display_name=>'Hide Empty Values'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64577904700088048291)
,p_css_classes=>'t-ContextualInfo--hideNulls'
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the null rows. Note: This only works in browsers that supports :has() pseudo-class.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577917150105048293)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577918213803048293)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577919856520048293)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577921289561048293)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577922605047048293)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577924242794048293)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64577866498955048287)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577925954750048293)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64577866498955048287)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577928494764048294)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64577927747638048294)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577930596838048294)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577931982253048294)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577933329673048294)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577933584417048294)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577934768572048294)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_imp.id(64577913883079048292)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577952043209048296)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577938489175048295)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(64577950630864048296)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577952487079048296)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577938489175048295)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_imp.id(64577950630864048296)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577954719198048296)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577938489175048295)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(64577953261854048296)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577956907233048297)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577938489175048295)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(64577956307928048297)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577957711187048297)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577938489175048295)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(64577956307928048297)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577959259300048297)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64577938489175048295)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_imp.id(64577956307928048297)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577960274254048297)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577938489175048295)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_imp.id(64577953261854048296)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577961570254048297)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577938489175048295)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577962942122048297)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577938489175048295)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(64577956307928048297)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577966505157048298)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64577963219141048297)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_imp.id(64577820247991048282)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577970729203048298)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577967049503048298)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577971611908048298)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577967049503048298)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577973492253048299)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577967049503048298)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577974243699048299)
,p_theme_id=>42
,p_name=>'HIDE_EMPTY_VALUES'
,p_display_name=>'Hide Empty Values'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(64577967049503048298)
,p_css_classes=>'t-AVPList--hideNulls'
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the null rows. Note: This only works in browsers that supports :has() pseudo-class.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577975343145048299)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577967049503048298)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577976307774048299)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577967049503048298)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577977324069048299)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64577967049503048298)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577978074666048299)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64577967049503048298)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577978659435048300)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64577967049503048298)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577982197441048300)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64577978957922048300)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577990071110048301)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577978957922048300)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577991672967048301)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577978957922048300)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577992850360048302)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64577978957922048300)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577993705741048302)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64577978957922048300)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(64577808903057048281)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577995085645048302)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64577978957922048300)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577996280080048302)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64577978957922048300)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64577997247332048302)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64577978957922048300)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(64577969585500048298)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578003606734048303)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578005898753048303)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578007155716048303)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578007972114048303)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578008612776048303)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578010982699048303)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578012831556048304)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578013483037048304)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578014905154048304)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578016469486048304)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578018889915048305)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(64578018183814048304)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578019783483048305)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(64578018183814048304)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578021021184048305)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(64578018183814048304)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578022630071048305)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578023739372048305)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(64578018183814048304)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578025434597048306)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64577997552782048302)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(64578018183814048304)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578027246035048306)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578029118558048306)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(64578028241488048306)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578030618243048307)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578031559369048307)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(64578028241488048306)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578032705423048307)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578033719416048307)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(64578028241488048306)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578034688447048307)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578035659097048307)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578041093536048309)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578042742928048309)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578044884772048309)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(64578044222079048309)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578045924397048309)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578047515706048310)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(64578047192329048310)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578048731198048310)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(64578047192329048310)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578049936167048310)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578051660199048310)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578053394429048310)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578054494252048311)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(64578028241488048306)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578057144739048311)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64578055836163048311)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578058273452048311)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64578055836163048311)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578060190479048311)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(64578044222079048309)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578061550704048311)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578062252581048311)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578025583171048306)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578065928927048312)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578063182976048311)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578067484778048312)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578063182976048311)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578068382852048312)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578063182976048311)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578069562687048312)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578063182976048311)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578071562678048312)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578063182976048311)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(64578070701916048312)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578072993184048312)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578063182976048311)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(64578070701916048312)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578077211455048313)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578078320159048313)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578079680243048313)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578081395331048313)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578081987800048313)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578082813379048313)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64578055836163048311)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578084318553048314)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64578055836163048311)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578086722916048314)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64578085787299048314)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578088622374048314)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578089622451048314)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578090597343048314)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578092243258048314)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64578073589285048312)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578095546921048315)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64578093106420048315)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578096446674048315)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578093106420048315)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578097035095048315)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64578093106420048315)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578098126735048315)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578093106420048315)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578100799918048316)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578098564432048315)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578102253509048316)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578098564432048315)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578105454637048316)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578102743431048316)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578108821469048316)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64578105944078048316)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578109798436048317)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578105944078048316)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578111483748048317)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578105944078048316)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_imp.id(64578110840094048317)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578112317664048317)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578105944078048316)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_imp.id(64578110840094048317)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578113555068048317)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578105944078048316)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578114369456048317)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578105944078048316)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578115568140048317)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578105944078048316)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578118092474048318)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578115779558048317)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_imp.id(64578047192329048310)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578119648533048318)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64578115779558048317)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578121034471048318)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578115779558048317)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_imp.id(64578047192329048310)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578122599487048318)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578115779558048317)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_imp.id(64578085787299048314)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578124264030048318)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578115779558048317)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578125447676048318)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578115779558048317)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_imp.id(64578009814077048303)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578126538878048318)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(64578115779558048317)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_imp.id(64578085787299048314)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578130151293048319)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578127031317048319)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578131098873048319)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578127031317048319)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578132120472048319)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578127031317048319)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578133650248048319)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64578127031317048319)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578135737860048319)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64578127031317048319)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578136791052048320)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(64578127031317048319)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578138099283048320)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578127031317048319)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578139528926048320)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578127031317048319)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578140145224048320)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(64578127031317048319)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_imp.id(64578003008485048303)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578143497012048320)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64578140748654048320)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578144851994048321)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64578140748654048320)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578145840218048321)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64578140748654048320)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578146640876048321)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64578140748654048320)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578151319147048321)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64578147153575048321)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_imp.id(64578149858589048321)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578152335574048321)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64578147153575048321)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_imp.id(64578149858589048321)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578154814035048322)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578147153575048321)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_imp.id(64578153680162048322)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578155856009048322)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578147153575048321)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_imp.id(64578153680162048322)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578156571226048322)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578147153575048321)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_imp.id(64578153680162048322)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578160705066048323)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578157420086048322)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_imp.id(64578159368666048322)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578161336125048323)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64578157420086048322)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_imp.id(64578159368666048322)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578162397574048323)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64578157420086048322)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_imp.id(64578159368666048322)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578163399581048323)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64578157420086048322)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578164042103048323)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64578157420086048322)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578173991155048324)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(64578169563987048324)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(64578171916836048324)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578176341261048324)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(64578169563987048324)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(64578171916836048324)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578179198011048325)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(64578177162776048324)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(64578171916836048324)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578180310434048325)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(64578177162776048324)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(64578171916836048324)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578183232598048325)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(64578180725222048325)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(64578171916836048324)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578184505908048325)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(64578180725222048325)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(64578171916836048324)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578189736361048326)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(64578185462799048325)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(64578188972105048326)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578191076395048326)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(64578185462799048325)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(64578188972105048326)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578195418635048326)
,p_theme_id=>42
,p_name=>'HIDE_ICON_ON_DESKTOP'
,p_display_name=>'Hide Icon on Desktop'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(64578193659369048326)
,p_css_classes=>'t-Button--desktopHideIcon'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button icon on large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578196637356048326)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(64578193659369048326)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578199346377048327)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(64578193659369048326)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(64578197739513048326)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578400292260048327)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(64578193659369048326)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(64578188972105048326)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578401615954048327)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(64578193659369048326)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_imp.id(64578197739513048326)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64578402269751048327)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(64578193659369048326)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(64578188972105048326)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579941087147048472)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(64579939347163048471)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579941914454048472)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(64579939347163048471)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579942796078048472)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(64579939347163048471)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579944389619048472)
,p_theme_id=>42
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(64579939347163048471)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579944895357048472)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(64579939347163048471)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579945739727048472)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(64579939347163048471)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579947818404048472)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(64579947218422048472)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579950127381048472)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(64579948837592048472)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579950942470048473)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(64579947218422048472)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579951392416048473)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(64579948837592048472)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579953298606048473)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(64579947218422048472)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579953994317048473)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(64579948837592048472)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579954706995048473)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(64579947218422048472)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579955864076048473)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(64579948837592048472)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579958279039048473)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(64579957028689048473)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579959465185048474)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(64579958973057048473)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579960688626048474)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(64579957028689048473)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579961682988048474)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(64579958973057048473)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579962881863048474)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(64579957028689048473)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579963442813048474)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(64579958973057048473)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579964166119048474)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(64579957028689048473)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579965452686048474)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(64579958973057048473)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579967021176048474)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(64579966262283048474)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579969057549048475)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(64579967876246048475)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579969954130048475)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(64579966262283048474)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579972137219048475)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(64579967876246048475)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579972898245048475)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(64579966262283048474)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579973278905048475)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(64579967876246048475)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579974227262048475)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(64579966262283048474)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579975253972048475)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(64579967876246048475)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579977199027048475)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(64579976209082048475)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579978605066048476)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(64579977998206048476)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579979500929048476)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(64579976209082048475)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579980249690048476)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(64579977998206048476)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579980829702048476)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(64579976209082048475)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579981567613048476)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(64579977998206048476)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579982304597048476)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(64579976209082048475)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579982875344048476)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(64579977998206048476)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579984112616048476)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_imp.id(64579983473079048476)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579986284447048477)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_imp.id(64579985254558048476)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579987750068048477)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(64579986937336048477)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579989295011048477)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(64579988581441048477)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579991360679048477)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_imp.id(64579990505945048477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579993379000048477)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_imp.id(64579991938808048477)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579994870430048477)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_imp.id(64579994370535048477)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579995672994048478)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_imp.id(64579994370535048477)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579996805387048478)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_imp.id(64579985254558048476)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579997712481048478)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(64579986937336048477)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579998315335048478)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_imp.id(64579988581441048477)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64579999335985048478)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_imp.id(64579990505945048477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580000821811048478)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_imp.id(64580000016716048478)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580002001671048478)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(64580000016716048478)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580002587424048478)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(64580000016716048478)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580004030037048479)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_imp.id(64579983473079048476)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580005243741048479)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_imp.id(64579994370535048477)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580006151447048479)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_imp.id(64579991938808048477)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580007333727048479)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_imp.id(64580006729853048479)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580008413949048479)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_imp.id(64579983473079048476)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580009572664048479)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_imp.id(64579991938808048477)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580010112204048479)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_imp.id(64579983473079048476)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580010531305048479)
,p_theme_id=>42
,p_name=>'DEFERRED_PAGE_RENDERING'
,p_display_name=>'Deferred Page Rendering'
,p_display_sequence=>1
,p_css_classes=>'t-DeferredRendering'
,p_template_types=>'PAGE'
,p_help_text=>'Defer page rendering until all page components have finished loading.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580012876593048480)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(64580011255677048479)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580014404014048480)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_imp.id(64580013882379048480)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580016486840048480)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(64580015508044048480)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580017649979048480)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'None'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_imp.id(64580017187012048480)
,p_template_types=>'REGION'
,p_help_text=>'Removes spacing between items.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580018654502048480)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_imp.id(64580017187012048480)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item spacing.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580019723669048480)
,p_theme_id=>42
,p_name=>'FORMSTANDARDPADDING'
,p_display_name=>'Standard'
,p_display_sequence=>5
,p_css_classes=>'t-Form--standardPadding'
,p_group_id=>wwv_flow_imp.id(64580017187012048480)
,p_template_types=>'REGION'
,p_help_text=>'Uses the standard spacing between items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580021089299048480)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_imp.id(64580020335705048480)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580022312907048481)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_imp.id(64580013882379048480)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580023755137048481)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_BOLD'
,p_display_name=>'Bold'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--boldDisplay'
,p_group_id=>wwv_flow_imp.id(64580023020963048481)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580025807898048481)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_imp.id(64580024823868048481)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580026892936048481)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_NORMAL'
,p_display_name=>'Normal'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--normalDisplay'
,p_group_id=>wwv_flow_imp.id(64580023020963048481)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580030619706048482)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_imp.id(64580027504981048481)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580033165011048482)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_imp.id(64580032484477048482)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580035650758048482)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_imp.id(64580034833437048482)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580036728523048482)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580037768544048482)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_imp.id(64580024823868048481)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580039901885048483)
,p_theme_id=>42
,p_name=>'REMOVE_PADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>1
,p_css_classes=>'t-PageBody--noContentPadding'
,p_group_id=>wwv_flow_imp.id(64580038902563048483)
,p_template_types=>'PAGE'
,p_help_text=>'Removes padding from the content region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580042752802048483)
,p_theme_id=>42
,p_name=>'SORT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>10
,p_css_classes=>'t-Region-orderBy--center'
,p_group_id=>wwv_flow_imp.id(64580041425392048483)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580043958598048484)
,p_theme_id=>42
,p_name=>'SORT_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_css_classes=>'t-Region-orderBy--end'
,p_group_id=>wwv_flow_imp.id(64580041425392048483)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64580045473329048484)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_imp.id(64580044752536048484)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(64575885968390048182)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15585842977146
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(64575888831041048183)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'BUILTIN_LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15585883810542
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_avatar
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64578408569389048328)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$AVATAR'
,p_display_name=>'Avatar'
,p_supported_component_types=>'PARTIAL'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$AVATAR'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Avatar is-placeholder{if ?SHAPE/} #SHAPE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<span{endif/} class="t-Avatar{if ?TYPE/} t-Avatar--{if ?IMAGE/}image{else/}{if ?INITIALS/}initials{else/}icon{endif/}{endif/}{endif/}{if ?SHAPE/} #SHAPE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?ICON/} #IC'
||'ON#{else/} fa fa-user{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES#{endif/} u-color" {if !IMAGE/}{if DESCRIPTION/} role="img" aria-label="#DESCRIPTION#" title="#DESCRIPTION#"{else/} role="presentation"{endif/}{endif/}>{if IMAGE/}<img src="#IMAGE#" alt="#DE'
||'SCRIPTION#"{if ?DESCRIPTION/} title="#DESCRIPTION#"{endif/} loading="lazy" />{else/}{if ?INITIALS/}#INITIALS#{endif/}{endif/}{if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564363394689414260
,p_version_scn=>133929266
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display an image, icon, or initials. Available as a partial template to display a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578423795096048331)
,p_plugin_id=>wwv_flow_imp.id(64578408569389048328)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'IMAGE'
,p_demo_value=>'IMAGE'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578428162289048332)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578423795096048331)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'IMAGE'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578431534137048332)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578423795096048331)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'INITIALS'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578436119695048333)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578423795096048331)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'ICON'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578439818195048333)
,p_plugin_id=>wwv_flow_imp.id(64578408569389048328)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_demo_value=>'#APEX_FILES#apex_ui/img/favicons/app-artwork-catalog.png'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64578423795096048331)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'IMAGE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578442692652048334)
,p_plugin_id=>wwv_flow_imp.id(64578408569389048328)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>55
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578446868197048334)
,p_plugin_id=>wwv_flow_imp.id(64578408569389048328)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64578423795096048331)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'INITIALS'
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578450120593048335)
,p_plugin_id=>wwv_flow_imp.id(64578408569389048328)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64578423795096048331)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ICON'
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578453612788048335)
,p_plugin_id=>wwv_flow_imp.id(64578408569389048328)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578456171701048335)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578453612788048335)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578459093431048336)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578453612788048335)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578462884978048336)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578453612788048335)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578465569937048337)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578453612788048335)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578468391453048337)
,p_plugin_id=>wwv_flow_imp.id(64578408569389048328)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578470441089048337)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578468391453048337)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578472879736048338)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578468391453048337)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578475282895048338)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578468391453048337)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578479279802048339)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578468391453048337)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578482715194048339)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578468391453048337)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578485619786048339)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578468391453048337)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578489013711048340)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578468391453048337)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578492310994048340)
,p_plugin_id=>wwv_flow_imp.id(64578408569389048328)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_common=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter classes to add to this component. You may add multiple classes by separating them with a space.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66378472147929162082)
,p_plugin_id=>wwv_flow_imp.id(64578408569389048328)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_is_quick_pick=>true
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_badge
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64578513481232048343)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BADGE'
,p_display_name=>'Badge'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BADGE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Badge is-placeholder{if ?SIZE/} #SIZE#{endif/}{if ?SHAPE/} #SHAPE#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<span{endif/} class="t-Badge{if ?STATE/} t-Badge--#STATE#{endif/}{if ?STYLE/} #STYLE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?SHAPE/} #SHAPE#{endif/}" role="status" aria-label="#LABEL!STRIPHTML# #VALUE#" '
||'title="#LABEL!STRIPHTML# #VALUE#">',
'    {if ?ICON/}<span class="t-Badge-icon #ICON#" aria-hidden="true"></span>{endif/}',
'    {if LABEL_DISPLAY/}<span class="t-Badge-label">#LABEL#</span>{endif/}',
'    <span class="t-Badge-value">#VALUE#</span>',
'  {if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>true
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if !APEX$HAS_MESSAGE/}',
'  <ul class="t-Badges #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
'{endif/}'))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Badges-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>1
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564377533892414278
,p_version_scn=>133929097
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display content within a badge. Available for multiple report rows or a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578525323852048345)
,p_plugin_id=>wwv_flow_imp.id(64578513481232048343)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578527135480048346)
,p_plugin_id=>wwv_flow_imp.id(64578513481232048343)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578529312212048346)
,p_plugin_id=>wwv_flow_imp.id(64578513481232048343)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578531548080048346)
,p_plugin_id=>wwv_flow_imp.id(64578513481232048343)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578534230375048347)
,p_plugin_id=>wwv_flow_imp.id(64578513481232048343)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578536629530048347)
,p_plugin_id=>wwv_flow_imp.id(64578513481232048343)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578539052297048347)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578536629530048347)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578541779600048347)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578536629530048347)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578545418989048348)
,p_plugin_id=>wwv_flow_imp.id(64578513481232048343)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578548695597048348)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578545418989048348)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578550520007048349)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578545418989048348)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578552905952048349)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578545418989048348)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578555261742048349)
,p_plugin_id=>wwv_flow_imp.id(64578513481232048343)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578556856314048350)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578555261742048349)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578559127438048350)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578555261742048349)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64578561358970048350)
,p_plugin_attribute_id=>wwv_flow_imp.id(64578555261742048349)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66090003994736150534)
,p_plugin_id=>wwv_flow_imp.id(64578513481232048343)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_button
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64578570607533048351)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BUTTON'
,p_display_name=>'Button'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BUTTON'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if MENU_ID/}<button type="button" data-menu="#MENU_ID#"{else/}<a href="#LINK_URL#" #LINK_ATTR#{endif/} class="t-Button{if IS_HOT/} t-Button--hot{endif/}{if IS_ICON_ONLY/} t-Button--noLabel t-Button--icon{else/}{if ICON_CLASSES/} t-Button--iconLeft{e'
||'ndif/}{endif/} #CSS_CLASSES#" title="#LABEL!STRIPHTML#" {if IS_DISABLED/} disabled{endif/}>',
'  {if ?ICON_CLASSES/}<span class="t-Icon t-Icon--left #ICON_CLASSES#" aria-hidden="true"></span>{endif/}<span class="t-Button-label">#LABEL#</span>',
'{if MENU_ID/}</button>{else/}</a>{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_substitute_attributes=>true
,p_reference_id=>1568467215199837453
,p_version_scn=>76331028
,p_subscribe_plugin_settings=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578579358377048353)
,p_plugin_id=>wwv_flow_imp.id(64578570607533048351)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578581935613048353)
,p_plugin_id=>wwv_flow_imp.id(64578570607533048351)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'LINK_URL'
,p_prompt=>'Link URL'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578584578109048353)
,p_plugin_id=>wwv_flow_imp.id(64578570607533048351)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'LINK_ATTR'
,p_prompt=>'Link Attribute'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578587398234048354)
,p_plugin_id=>wwv_flow_imp.id(64578570607533048351)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON_CLASSES'
,p_prompt=>'Icon Classes'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578589152184048354)
,p_plugin_id=>wwv_flow_imp.id(64578570607533048351)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578591373131048354)
,p_plugin_id=>wwv_flow_imp.id(64578570607533048351)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'IS_DISABLED'
,p_prompt=>'Is Disabled'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578593652618048355)
,p_plugin_id=>wwv_flow_imp.id(64578570607533048351)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'IS_HOT'
,p_prompt=>'Is Hot'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64578595715970048355)
,p_plugin_id=>wwv_flow_imp.id(64578570607533048351)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'IS_ICON_ONLY'
,p_prompt=>'Is Icon Only'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_comments
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64579001447033048356)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$COMMENTS'
,p_display_name=>'Comments'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$COMMENTS'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-Comments-item{if ?COMMENT_CLASS/} #COMMENT_CLASS#{endif/}">',
'    {if DISPLAY_AVATAR%assigned/}',
'      <div class="t-Comments-icon">',
'        {if ?APEX$SELECTOR%assigned/}<div class="t-Comments-selection is-placeholder"></div>{endif/}',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user is-placeholder"></span>',
'      </div>',
'      <div class="t-Comments-comment is-placeholder"></div>',
'    </div>',
'  </div>',
'{else/}',
'  <div class="t-Comments-item{if ?COMMENT_CLASS/} #COMMENT_CLASS#{endif/}">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-Comments-icon">',
'        {if ?APEX$SELECTOR%assigned/}<div class="t-Comments-selection">#APEX$SELECTOR#</div>{endif/}',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'          CSS_CLASSES:=u-color',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user">{if USER_NAME_LINK/}<a href="#USER_NAME_LINK#" #USER_NAME_LINK_ATTR#>{endif/}#USER_NAME#{if USER_NAME_LINK/}</a>{endif/}</span>',
'        {if COMMENT_DATE/}<span class="t-Comments-date">#COMMENT_DATE#</span>{endif/}',
'        {if ACTIONS/}<span class="t-Comments-actions">#ACTIONS#</span>{endif/}',
'      </div>',
'      <div class="t-Comments-comment">',
'        #COMMENT_TEXT#',
'        {if ATTRIBUTES/}<div class="t-Comments-attributes">#ATTRIBUTES#</div>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Comments{if ?STYLE/} #STYLE#{endif/} {if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564386865908414285
,p_version_scn=>75159091
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display user comments and status updates. Supports avatars. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66378900425701080075)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_title=>'Avatar'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579020440685048360)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'COMMENT_TEXT'
,p_prompt=>'Comment Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Praesent vel felis rutrum erat elementum viverra sit amet non odio. Cras vel auctor eros, in malesuada dolor. Nulla tellus magna, ornare consectetur purus id, volutpat egestas felis. Proin lobortis risus massa, nec faucibus arcu malesuada a. Nunc sed'
||' gravida urna. Fusce at ligula sed erat consequat pharetra.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing text for user comments.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579023008868048360)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Joel'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a comment.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579025189309048360)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'COMMENT_DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'5 minutes ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:DATE'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579027489097048361)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ATTRIBUTES'
,p_prompt=>'Attributes'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the comment attributes.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579030086174048361)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'initials'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579072539996048367)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66378900425701080075)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579032062282048362)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579030086174048361)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579034885647048362)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579030086174048361)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579038079255048363)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579030086174048361)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579040639414048363)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579030086174048361)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(66378900425701080075)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579043103150048363)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>95
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(66378900425701080075)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579045465742048364)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'JK'
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579030086174048361)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(66378900425701080075)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579048361081048364)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579030086174048361)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(66378900425701080075)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579050213200048364)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579072539996048367)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66378900425701080075)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579052506528048365)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579050213200048364)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579063051680048366)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579050213200048364)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579066458802048366)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579050213200048364)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579069453276048367)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579050213200048364)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579072539996048367)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579075130328048367)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>45
,p_static_id=>'COMMENT_CLASS'
,p_prompt=>'Comment Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Allows you to pass a class onto individual comments. Example using is-active will highlight the specific comment with a different shade.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579078351343048368)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Comments--basic'
,p_demo_value=>'t-Comments--chat'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Set the style of the comments.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579080827291048368)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579078351343048368)
,p_display_sequence=>10
,p_display_value=>'Basic'
,p_return_value=>'t-Comments--basic'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579084309647048368)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579078351343048368)
,p_display_sequence=>20
,p_display_value=>'Chat (Speech Bubbles)'
,p_return_value=>'t-Comments--chat'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579088505443048369)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(66379033093134181578)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_name=>'Link'
,p_type=>'BUTTON'
,p_template=>'{if !IS_DISABLED/}<a {if CSS_CLASSES/}class="#CSS_CLASSES#"{endif/} href="#LINK_URL#" #LINK_ATTR#>#LABEL#</a>{endif/}'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66379032501629174121)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_name=>'Actions'
,p_static_id=>'ACTIONS'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66379088125299156000)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>20
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66379240343012026771)
,p_plugin_id=>wwv_flow_imp.id(64579001447033048356)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_content_row
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64579126827509048373)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$CONTENT_ROW'
,p_display_name=>'Content Row'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$CONTENT_ROW'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-ContentRow-wrap" aria-hidden="true">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-ContentRow-selection is-placeholder"></div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH# #BADGE_POS# #BADGE_ALIGNMENT#">',
'        {with/}',
'          LABEL:=',
'          VALUE:=',
'          SIZE:=#BADGE_SIZE#',
'          SHAPE:=#BADGE_SHAPE#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar">',
'        {with/}',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE%assigned/}<div class="t-ContentRow-overline is-placeholder"></div>{endif/}',
'        {if ?TITLE%assigned/}<div class="t-ContentRow-title is-placeholder"></div>{endif/}',
'        {if ?DESCRIPTION%assigned/}<div class="t-ContentRow-description is-placeholder"></div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc is-placeholder"></div>{endif/}',
'      {if ?PRIMARY_ACTIONS%assigned/}<div class="t-ContentRow-actions is-placeholder"></div>{endif/}',
'    </div>',
'  </div>',
'{else/}',
'  {if ?FULL_ROW_LINK/}<a class="t-ContentRow-fullLink" href="#FULL_ROW_LINK#" #FULL_ROW_LINK_ATTR#></a>{endif/}',
'  <div class="t-ContentRow-wrap #ITEM_CSS_CLASSES#">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-ContentRow-selection">#APEX$SELECTOR#</div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH# #BADGE_POS# #BADGE_ALIGNMENT#">',
'        {with/}',
'          LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'          LABEL:=#BADGE_LABEL#',
'          VALUE:=#BADGE_VALUE#',
'          ICON:=#BADGE_ICON#',
'          STATE:=#BADGE_STATE#',
'          SIZE:=#BADGE_SIZE#',
'          STYLE:=#BADGE_STYLE#',
'          SHAPE:=#BADGE_SHAPE#',
'          LINK:=#BADGE_LINK#',
'          LINK_ATTR:=#BADGE_LINK_ATTR#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'          CSS_CLASSES:=#AVATAR_CSS_CLASSES#',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE/}<div class="t-ContentRow-overline">#OVERLINE#</div>{endif/}',
'        {if ?TITLE/}<h3 class="t-ContentRow-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK#" #TITLE_LINK_ATTR#>{endif/}#TITLE#{if ?TITLE_LINK/}</a>{endif/}</h3>{endif/}',
'        {if ?DESCRIPTION/}<div class="t-ContentRow-description">#DESCRIPTION#</div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc">#MISC#</div>{endif/}',
'      {if ?PRIMARY_ACTIONS/}<div class="t-ContentRow-actions">#PRIMARY_ACTIONS#</div>{endif/}',
'    </div>',
'  </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-ContentRow{if ?STYLE/} #STYLE#{endif/}{if REMOVE_PADDING/} t-ContentRow--removePadding{endif/}{if HIDE_BORDERS/} t-ContentRow--hideBorders{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-ContentRow-item{if ?ITEM_CLASSES/} #ITEM_CLASSES#{endif/}" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1568468153344837456
,p_version_scn=>76107179
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display content in a formatted row with a title, description, and more. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66506392738883120072)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66506392183871120071)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66249500120140846558)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_title=>'Appearance'
,p_display_sequence=>30
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579166302197048379)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'OVERLINE'
,p_prompt=>'Overline'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Category'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to display at the top of each row above the title and description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579168378483048379)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the title in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579170667437048379)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the description in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579173489069048380)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'MISC'
,p_prompt=>'Miscellaneous'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter miscellaneous content such as additional text and/or column substitution strings to display in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579175982258048380)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579179195778048380)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579182185609048381)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579175982258048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66506392738883120072)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579184627863048381)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579182185609048381)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579187612512048382)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579182185609048381)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579191619100048382)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579182185609048381)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579195428036048382)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579182185609048381)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(66506392738883120072)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579198217780048383)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>115
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(66506392738883120072)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579200855672048383)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579182185609048381)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(66506392738883120072)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579203721932048384)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579182185609048381)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(66506392738883120072)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579206809687048384)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579175982258048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66506392738883120072)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579209133574048384)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579206809687048384)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579211981828048385)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579206809687048384)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579214418077048385)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579206809687048384)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579217090487048385)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579206809687048384)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579219581733048386)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579222000809048386)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579224101033048386)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579225901226048387)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579228397475048387)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579230751624048387)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579232977551048388)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579230751624048387)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579236713047048388)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579230751624048387)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579240008375048389)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579242641796048389)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579240008375048389)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579245442760048390)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579240008375048389)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579248340626048390)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579240008375048389)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579251190254048391)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579240008375048389)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579253834810048391)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'AVATAR_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579175982258048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66506392738883120072)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579256093857048391)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579253834810048391)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579258283821048392)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579253834810048391)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579260632008048392)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579253834810048391)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579262934077048393)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579253834810048391)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579265043885048393)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579253834810048391)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579266931584048393)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579253834810048391)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579269166558048394)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579253834810048391)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579271296743048394)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'BADGE_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579273114891048394)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579271296743048394)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579275092016048395)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579271296743048394)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579277451034048395)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579271296743048394)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579280577743048399)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_static_id=>'BADGE_COL_WIDTH'
,p_prompt=>'Column Width'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-ContentRow-badge--md'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_null_text=>'Default'
,p_help_text=>'Set the width of the content row columns. Default width is medium.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579283608738048400)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579280577743048399)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-ContentRow-badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579287742554048400)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579280577743048399)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-ContentRow-badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579290560379048401)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579280577743048399)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-ContentRow-badge--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579293694092048401)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579280577743048399)
,p_display_sequence=>40
,p_display_value=>'Auto'
,p_return_value=>'t-ContentRow-badge--auto'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579295509115048402)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>240
,p_static_id=>'BADGE_POS'
,p_prompt=>'Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_null_text=>'Start'
,p_help_text=>'Positions the Badge column to either the "Start" or "End" of the row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579298258842048402)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579295509115048402)
,p_display_sequence=>10
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--posEnd'
,p_help_text=>'Positions the Badge column to the "end" of the row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579300906169048402)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>250
,p_static_id=>'BADGE_ALIGNMENT'
,p_prompt=>'Alignment'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579179195778048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66506392183871120071)
,p_null_text=>'Start'
,p_help_text=>'Changes the alignment of the badge within its column.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579303342777048403)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579300906169048402)
,p_display_sequence=>10
,p_display_value=>'Center'
,p_return_value=>'t-ContentRow-badge--alignCenter'
,p_help_text=>'Aligns the badge to the "center" of its column.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579305742715048403)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579300906169048402)
,p_display_sequence=>20
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--alignEnd'
,p_help_text=>'Aligns the badge to the "end" of its column.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579308541546048404)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>31
,p_display_sequence=>310
,p_static_id=>'ITEM_CSS_CLASSES'
,p_prompt=>'Item CSS Classes'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579313032620048404)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>32
,p_display_sequence=>320
,p_static_id=>'AVATAR_CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579175982258048380)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66506392738883120072)
,p_help_text=>'Enter CSS classes to add to the visual. You may add multiple classes by separating them with a space.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579317837573048405)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(66249500120140846558)
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579320849774048405)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>27
,p_display_sequence=>270
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66249500120140846558)
,p_null_text=>'Default'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579323066872048406)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579320849774048405)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-ContentRow--styleCompact'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579326557639048406)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>28
,p_display_sequence=>280
,p_static_id=>'HIDE_BORDERS'
,p_prompt=>'Hide Borders'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(66249500120140846558)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579328834494048406)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>30
,p_display_sequence=>300
,p_static_id=>'REMOVE_PADDING'
,p_prompt=>'Remove Padding'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(66249500120140846558)
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(66387606629098941686)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_name=>'Button'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'LINK_URL:=#LINK_URL#',
'LINK_ATTR:=#LINK_ATTR#',
'LABEL:=#LABEL#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'IS_DISABLED:=#IS_DISABLED#',
'{apply THEME$BUTTON/}'))
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(66387607888618945834)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_name=>'Menu'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'MENU_ID:=#MENU_ID#',
'LABEL:=#LABEL#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_DISABLED:=#IS_DISABLED#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'{apply THEME$BUTTON/}',
'#MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66090655114203183256)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_name=>'Badge Link'
,p_static_id=>'BADGE_LINK'
,p_display_sequence=>50
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66374013000424534953)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66374692301154618057)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_name=>'Full Row Link'
,p_static_id=>'FULL_ROW_LINK'
,p_display_sequence=>40
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66387604694031896700)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66387606027421910557)
,p_plugin_id=>wwv_flow_imp.id(64579126827509048373)
,p_name=>'Primary Actions'
,p_static_id=>'PRIMARY_ACTIONS'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_media_list
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64579390793534048417)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$MEDIA_LIST'
,p_display_name=>'Media List'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$MEDIA_LIST'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-MediaList-itemWrap">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-MediaList-selection is-placeholder"></div>{endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE%assigned/}<div class="t-MediaList-title is-placeholder"></div>{endif/}',
'      {if ?DESCRIPTION%assigned/}<div class="t-MediaList-desc is-placeholder"></div>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE%assigned/}',
'      {with/}',
'        LABEL:=',
'        VALUE:=',
'        SHAPE:=#BADGE_SHAPE#',
'        STYLE:=#BADGE_STYLE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  </div>',
'{else/}',
'  {if LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<div{endif/} class="t-MediaList-itemWrap{if ?DESCRIPTION/} t-MediaList-itemWrap--showDesc{endif/}">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-MediaList-selection">#APEX$SELECTOR#</div>{endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          CSS_CLASSES:=u-color',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE/}<h3 class="t-MediaList-title">#TITLE#</h3>{endif/}',
'      {if ?DESCRIPTION/}<p class="t-MediaList-desc">#DESCRIPTION#</p>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE/}',
'      {with/}',
'        LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'        LABEL:=#BADGE_LABEL#',
'        VALUE:=#BADGE_VALUE#',
'        ICON:=#BADGE_ICON#',
'        STATE:=#BADGE_STATE#',
'        SIZE:=t-Badge--md',
'        STYLE:=#BADGE_STYLE#',
'        SHAPE:=#BADGE_SHAPE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  {if LINK/}</a>{else/}</div>{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-MediaList t-MediaList--showIcons{if ?LAYOUT/} #LAYOUT!ATTR#{endif/}{if ?SIZE/} #SIZE!ATTR#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-MediaList-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564403634518414297
,p_version_scn=>76083243
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display report content in a formatted media list. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66379624014453932069)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66379623459441932068)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579612632566048424)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579616078662048424)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579619285987048425)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579626781958048426)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579630437423048427)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579619285987048425)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66379624014453932069)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579634565891048427)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579630437423048427)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579638223301048428)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579630437423048427)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579648950108048431)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579630437423048427)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579653570738048432)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579630437423048427)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(66379624014453932069)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579656135569048432)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>95
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(66379624014453932069)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579658167849048433)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579630437423048427)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(66379624014453932069)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579660258061048433)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579630437423048427)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(66379624014453932069)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579661953979048434)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579619285987048425)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66379624014453932069)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579663118753048434)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579661953979048434)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579665800483048435)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579661953979048434)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579668255664048435)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579661953979048434)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579670400625048435)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579661953979048434)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579672533922048436)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579626781958048426)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66379623459441932068)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579674709140048436)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579626781958048426)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66379623459441932068)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579676404703048437)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579626781958048426)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66379623459441932068)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579678403427048437)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579626781958048426)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66379623459441932068)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579680296943048437)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579626781958048426)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66379623459441932068)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579682011205048438)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579626781958048426)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66379623459441932068)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579684326116048438)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579682011205048438)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579686495683048438)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579682011205048438)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579688862500048439)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579626781958048426)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66379623459441932068)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579691161668048439)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579688862500048439)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579694190586048440)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579688862500048439)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579697208149048440)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579688862500048439)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579699919492048441)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'LAYOUT'
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the number of grid columns the media list content will display in. Horizontal Span will display all columns in a single horizontal row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579702215284048441)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579699919492048441)
,p_display_sequence=>10
,p_display_value=>'2 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--2cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579704573764048441)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579699919492048441)
,p_display_sequence=>20
,p_display_value=>'3 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--3cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579706947901048442)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579699919492048441)
,p_display_sequence=>30
,p_display_value=>'4 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--4cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579708612471048442)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579699919492048441)
,p_display_sequence=>40
,p_display_value=>'5 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--5cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579710452051048442)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579699919492048441)
,p_display_sequence=>50
,p_display_value=>'Horizontal Span'
,p_return_value=>'t-MediaList--horizontal'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579713153539048443)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of media list items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579715310026048443)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579713153539048443)
,p_display_sequence=>10
,p_display_value=>'Large'
,p_return_value=>'t-MediaList--large force-fa-lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579717426144048443)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66379827066611078697)
,p_plugin_id=>wwv_flow_imp.id(64579390793534048417)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_timeline
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64579750639470048449)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$TIMELINE'
,p_display_name=>'Timeline'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$TIMELINE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div{if ?CSS_CLASSES/} class="#CSS_CLASSES#"{endif/}>',
'  <div class="t-Timeline-wrap">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-Timeline-selection">#APEX$SELECTOR#</div>{endif/}',
'    <div class="t-Timeline-user">',
'      {if DISPLAY_AVATAR/}',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      {endif/}',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">{if ?USER_NAME_LINK/}<a href="#USER_NAME_LINK#" #USER_NAME_LINK_ATTR#>{endif/}#USER_NAME#{if ?USER_NAME_LINK/}</a>{endif/}</span>',
'        <span class="t-Timeline-date">#DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      {if DISPLAY_BADGE/}',
'        <div class="t-Timeline-typeWrap">',
'          {with/}',
'            LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'            LABEL:=#BADGE_LABEL#',
'            VALUE:=#BADGE_VALUE#',
'            ICON:=#BADGE_ICON#',
'            STATE:=#BADGE_STATE#',
'          {apply THEME$BADGE/}',
'        </div>',
'      {endif/}',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK#" #TITLE_LINK_ATTR#>{endif/}#TITLE#{if ?TITLE_LINK/}</a>{endif/}</h3>',
'        {if ?DESCRIPTION/}<p class="t-Timeline-desc">#DESCRIPTION#</p>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline{if ?STYLE/} #STYLE#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>'<li class="t-Timeline-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1601817836543095628
,p_version_scn=>76584807
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display a series of events. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66726852204255155403)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66726851649243155402)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579776576077048452)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'User'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a timeline event.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579779353319048452)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'1 hour ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579782647944048453)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579785716567048453)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579789059471048453)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579793957200048454)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579799156839048454)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579789059471048453)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66726852204255155403)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579802771100048455)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579799156839048454)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579807972552048455)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579799156839048454)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579813184945048456)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579799156839048454)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579817800030048457)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579799156839048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(66726852204255155403)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579821786029048457)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>115
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(66726852204255155403)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579824141223048457)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579799156839048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(66726852204255155403)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579827110342048457)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579799156839048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(66726852204255155403)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579829653267048458)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--circle'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579789059471048453)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66726852204255155403)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579832819092048458)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579829653267048458)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579837050557048459)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579829653267048458)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579841591418048459)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579829653267048458)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579846177373048459)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579829653267048458)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579850180769048460)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579793957200048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66726851649243155402)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579853885917048460)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Closed'
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579793957200048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66726851649243155402)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579856776688048461)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'is-removed'
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579793957200048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66726851649243155402)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579858842558048461)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_demo_value=>'fa-check-circle-o'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579793957200048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66726851649243155402)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579861172504048461)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579793957200048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66726851649243155402)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579863297670048462)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579793957200048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66726851649243155402)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579865271520048462)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579863297670048462)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579867030241048462)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579863297670048462)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579869760074048463)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64579793957200048454)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66726851649243155402)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579872848536048463)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579869760074048463)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579875983094048463)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579869760074048463)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579878967460048464)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579869760074048463)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579882597171048464)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the style of timeline items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64579885123558048464)
,p_plugin_attribute_id=>wwv_flow_imp.id(64579882597171048464)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-Timeline--compact'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64579888529706048465)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66374621549441363989)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>25
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66489032912429627590)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>15
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66608064159403932031)
,p_plugin_id=>wwv_flow_imp.id(64579750639470048449)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'PlantillaTest'
,p_alias=>'PLANTILLATEST'
,p_step_title=>'test'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'table td, table th {',
'    display: none;',
'}',
'',
'table td:nth-child(3), table th:nth-child(3) {',
'    display: table-cell;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64580407299673048507)
,p_plug_name=>'STEMentor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64577026146455048239)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64782490783900800937)
,p_plug_name=>'-----------------------------------------------------------------------------'
,p_parent_plug_id=>wwv_flow_imp.id(64580407299673048507)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>\00A1Bienvenido!</title>'),
'    <style>',
'        body {',
'            margin: 0;',
'            padding: 0;',
'            font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
'            background: linear-gradient(135deg, #667eea, #764ba2);',
'            height: 100vh;',
'            display: flex;',
'            align-items: center;',
'            justify-content: center;',
'            color: white;',
'        }',
'',
'        .welcome-container {',
'            text-align: center;',
'            padding: 40px;',
'            background: rgba(255, 255, 255, 0.1);',
'            border-radius: 20px;',
'            backdrop-filter: blur(10px);',
'            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);',
'        }',
'',
'        h1 {',
'            font-size: 2.5em;',
'            margin-bottom: 20px;',
'        }',
'',
'        p {',
'            font-size: 1.2em;',
'            margin-bottom: 30px;',
'            opacity: 0.9;',
'        }',
'',
'',
'        .user-icon {',
'            font-size: 50px;',
'            margin-bottom: 20px;',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="welcome-container">',
unistr('        <div class="user-icon">\D83D\DC4B</div>'),
unistr('        <h1>\00A1Bienvenido!</h1>'),
unistr('        <p>Nos alegra tenerte aqu\00ED</p>'),
'    </div>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64782490804728800938)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64782490783900800937)
,p_button_name=>'Comenzar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Comenzar'
,p_button_position=>'HELP'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64817456489666861842)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    prompt_text CLOB;',
'    course_content CLOB;',
'BEGIN',
'',
'    SELECT CONTENT',
'    INTO course_content',
'    FROM COURSE_DETAILS',
'    WHERE COURSE_ID = :P_COURSE_ID',
'    AND LEVEL_ID = :P_LEVEL_ID;',
'',
'    prompt_text := ''Crea un curso de alta calidad sobre el tema que El usuario ha seleccionado el curso con ID: '' || :P_COURSE_ID ||'' para estudiantes de nivel: ''|| :P_LEVEL_ID ||''.',
unistr('                    La categor\00EDa es: Ciencia'';'),
'',
'    APEX_UTIL.SET_SESSION_STATE(''PROMPT'', prompt_text);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64817456489666861842
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>unistr('Evaluaci\00F3n de perfil')
,p_alias=>unistr('EVALUACI\00D3N-DE-PERFIL')
,p_step_title=>unistr('Evaluaci\00F3n de perfil')
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .header-custom {',
'        background-color: #4CAF50; /* Color de fondo */',
'        color: cian; /* Color del texto */',
'        text-align: center; /* Centrar texto */',
'        padding: 20px; /* Espaciado interno */',
'        border-radius: 5px; /* Bordes redondeados */',
'    }',
'</style>',
''))
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64741736382216966829)
,p_plug_name=>unistr('Evaluaci\00F3n de perfil')
,p_region_template_options=>'#DEFAULT#:js-headingLevel-1:t-Region--scrollBody:t-Form--standardPadding:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>190
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'TABLE'
,p_query_table=>'USER_EVALUATION'
,p_include_rowid_column=>true
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .header-custom {',
'        background-color: #4CAF50; /* Color de fondo */',
'        color: white; /* Color del texto */',
'        text-align: center; /* Centrar texto */',
'        padding: 20px; /* Espaciado interno */',
'        border-radius: 5px; /* Bordes redondeados */',
'    }',
'</style>',
''))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64753995957311034107)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_button_name=>'Continuar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(64578193659369048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Continuar'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741734508063966811)
,p_name=>'P1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me fascina descubrir c\00F3mo funcionan las cosas desde adentro')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741734630284966812)
,p_name=>'P2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>'Siempre estoy buscando formas de resolver problemas cotidianos de manera creativa'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741734731029966813)
,p_name=>'P3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me siento motivado cuando veo el impacto pr\00E1ctico de las matem\00E1ticas en la vida diaria')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741734834646966814)
,p_name=>'P4'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>'Disfruto experimentar con diferentes materiales para construir cosas'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741734945687966815)
,p_name=>'P5'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me atrae mucho entender c\00F3mo funcionan los dispositivos electr\00F3nicos')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741735027136966816)
,p_name=>'P6'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me gustar\00EDa aprender a programar para crear aplicaciones o juego')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741735193562966817)
,p_name=>'P8'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me gusta observar el mundo natural y entender el porqu\00E9 de los fen\00F3menos naturales')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741735276538966818)
,p_name=>'P9'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me entusiasma la idea de dise\00F1ar o mejorar estructuras, como puentes o edificios')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741735379484966819)
,p_name=>'P10'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me parece emocionante usar las matem\00E1ticas para resolver problemas complejos')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741735431431966820)
,p_name=>'P11'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me interesa aprender sobre inteligencia artificial y c\00F3mo puede influir en el futuro')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741735619385966822)
,p_name=>'P7'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me siento inspirado cuando leo sobre los descubrimientos cient\00EDficos que cambian el mundo')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741737029481966836)
,p_name=>'P12'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>'Disfruto manipular datos y patrones para predecir o explicar cosas'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741737164719966837)
,p_name=>'P13'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>'Me imagino trabajando en un laboratorio investigando problemas globales'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741737282617966838)
,p_name=>'P14'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me gusta idear proyectos pr\00E1cticos que resuelvan necesidades tecnol\00F3gicas')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741737319037966839)
,p_name=>'P15'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me atraen los retos que requieren l\00F3gica y an\00E1lisis profundo')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741737429414966840)
,p_name=>'P16'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me interesan los temas relacionados con la exploraci\00F3n espacial y la f\00EDsica del universo')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741737569338966841)
,p_name=>'P17'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Disfruto usar f\00F3rmulas y ecuaciones para resolver situaciones reales')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741737617782966842)
,p_name=>'P18'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>unistr('Me gusta aprender sobre nuevas tecnolog\00EDas y c\00F3mo funcionan')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64741737751100966843)
,p_name=>'P19'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_prompt=>'Me apasiona la idea de crear soluciones que mejoren la vida de las personas'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64753995333640034101)
,p_name=>'ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_item_source_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_source=>'EVALUATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64753995811735034106)
,p_name=>'P4_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_item_source_plug_id=>wwv_flow_imp.id(64741736382216966829)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64741736482653966830)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(64741736382216966829)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Evaluaci\00F3n de perfil')
,p_internal_uid=>64741736482653966830
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Temas STEM'
,p_alias=>'TEMAS-STEM'
,p_step_title=>'Temas STEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64782488203154800912)
,p_plug_name=>'Ciencias'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64782488423164800914)
,p_plug_name=>'Tecnologia'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64782488867009800918)
,p_plug_name=>'Matematicas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64782489027194800920)
,p_plug_name=>'Ingenieria'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64782488364698800913)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64782488203154800912)
,p_button_name=>'Ir_a_Curso'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Niveles'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64782488565491800915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64782488423164800914)
,p_button_name=>'Ir_A_Curso'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Niveles'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64782488915335800919)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64782488867009800918)
,p_button_name=>'Ir_a_curso'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Niveles'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64782489195908800921)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64782489027194800920)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a curso'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Ciencias'
,p_alias=>'CIENCIAS'
,p_step_title=>'Ciencias'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129649009074537888222)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64577549525333048273)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64575892369769048183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64578402919766048327)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259217170683125453248)
,p_plug_name=>'Ciencias'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64576615619484048217)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'COURSES'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(64828455158179005672)
,p_region_id=>wwv_flow_imp.id(259217170683125453248)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'COURSE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259217171158775453253)
,p_plug_name=>'Intermedio'
,p_parent_plug_id=>wwv_flow_imp.id(259217170683125453248)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259217171305653453254)
,p_plug_name=>'Experto'
,p_parent_plug_id=>wwv_flow_imp.id(259217170683125453248)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>40
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259217171404579453255)
,p_plug_name=>'Avanzado'
,p_parent_plug_id=>wwv_flow_imp.id(259217170683125453248)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259217172003116453261)
,p_plug_name=>unistr('B\00E1sico')
,p_parent_plug_id=>wwv_flow_imp.id(259217170683125453248)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64828456024748005673)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(259217171158775453253)
,p_button_name=>'New_4'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(64578193659369048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,22,23::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64828456870560005673)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(259217171305653453254)
,p_button_name=>'New_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:CR,22,23,24::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64828457651170005674)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(259217171404579453255)
,p_button_name=>'New_3'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:CR,22,23,24,25::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64828458482734005675)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(259217172003116453261)
,p_button_name=>'New_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22,23::'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>unistr('Tecnolog\00EDa')
,p_alias=>unistr('TECNOLOG\00CDA')
,p_step_title=>unistr('Tecnolog\00EDa')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129568169112552565039)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64576615619484048217)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'COURSES'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(64814173504204530928)
,p_region_id=>wwv_flow_imp.id(129568169112552565039)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'COURSE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129568169588202565044)
,p_plug_name=>'Intermedio'
,p_parent_plug_id=>wwv_flow_imp.id(129568169112552565039)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129568169735080565045)
,p_plug_name=>'Experto'
,p_parent_plug_id=>wwv_flow_imp.id(129568169112552565039)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>40
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129568169834006565046)
,p_plug_name=>'Avanzado'
,p_parent_plug_id=>wwv_flow_imp.id(129568169112552565039)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129568170432543565052)
,p_plug_name=>unistr('B\00E1sico')
,p_parent_plug_id=>wwv_flow_imp.id(129568169112552565039)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64814174420251530930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(129568169588202565044)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:CR,18,26,27::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64814175266169530931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(129568169735080565045)
,p_button_name=>'New_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:CR,18,26,27,28::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64814176022024530932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(129568169834006565046)
,p_button_name=>'New_3'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:CR,18,26,27,28,29::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64814176888423530933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(129568170432543565052)
,p_button_name=>'New_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:CR,18,26::'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>unistr('Ingenier\00EDa')
,p_alias=>unistr('INGENIER\00CDA')
,p_step_title=>unistr('Ingenier\00EDa')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64820554878637882554)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64577549525333048273)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64575892369769048183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64578402919766048327)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194388716487225447580)
,p_plug_name=>unistr('Tecnolog\00EDa')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64576615619484048217)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'COURSES'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(64820550676446882548)
,p_region_id=>wwv_flow_imp.id(194388716487225447580)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'COURSE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194388716962875447585)
,p_plug_name=>'Intermedio'
,p_parent_plug_id=>wwv_flow_imp.id(194388716487225447580)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194388717109753447586)
,p_plug_name=>'Experto'
,p_parent_plug_id=>wwv_flow_imp.id(194388716487225447580)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>40
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194388717208679447587)
,p_plug_name=>'Avanzado'
,p_parent_plug_id=>wwv_flow_imp.id(194388716487225447580)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194388717807216447593)
,p_plug_name=>unistr('B\00E1sico')
,p_parent_plug_id=>wwv_flow_imp.id(194388716487225447580)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64820551988860882551)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(194388716962875447585)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:CR,19,30,31::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64820552718454882552)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(194388717109753447586)
,p_button_name=>'New_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:CR,19,30,31,32::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64820553557093882552)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(194388717208679447587)
,p_button_name=>'New_3'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:CR,19,30,31,32,33::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64820554327240882553)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(194388717807216447593)
,p_button_name=>'New_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:CR,19,30::'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>unistr('Matem\00E1ticas')
,p_alias=>unistr('MATEM\00C1TICAS')
,p_step_title=>unistr('Matem\00E1ticas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129651037001009959637)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64577549525333048273)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64575892369769048183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64578402919766048327)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259219198609597524663)
,p_plug_name=>unistr('Tecnolog\00EDa')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64576615619484048217)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'COURSES'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(64830483152685077088)
,p_region_id=>wwv_flow_imp.id(259219198609597524663)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'COURSE_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259219199085247524668)
,p_plug_name=>'Intermedio'
,p_parent_plug_id=>wwv_flow_imp.id(259219198609597524663)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>30
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259219199232125524669)
,p_plug_name=>'Experto'
,p_parent_plug_id=>wwv_flow_imp.id(259219198609597524663)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>40
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259219199331051524670)
,p_plug_name=>'Avanzado'
,p_parent_plug_id=>wwv_flow_imp.id(259219198609597524663)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>50
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259219199929588524676)
,p_plug_name=>unistr('B\00E1sico')
,p_parent_plug_id=>wwv_flow_imp.id(259219198609597524663)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64830484025592077088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(259219199085247524668)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:CR,20,34,35::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64830484817925077089)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(259219199232125524669)
,p_button_name=>'New_2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:CR,20,34,35,36::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64830485625186077090)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(259219199331051524670)
,p_button_name=>'New_3'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:CR,20,34,35,36,37::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64830486334025077090)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(259219199929588524676)
,p_button_name=>'New_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Curso'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:CR,20,34::'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>unistr('Introducci\00F3n a la Biolog\00EDa')
,p_alias=>unistr('INTRODUCCI\00D3N-A-LA-BIOLOG\00CDA')
,p_step_title=>unistr('Introducci\00F3n a la Biolog\00EDa')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64753998867943034136)
,p_plug_name=>unistr('Introducci\00F3n a la Biolog\00EDa')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64782490217820800932)
,p_plug_name=>'Curso'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>Introducci\00F3n a la Biolog\00EDa</title>'),
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            line-height: 1.6;',
'            max-width: 800px;',
'            margin: 0 auto;',
'            padding: 20px;',
'        }',
'        .header {',
'            background-color: #4CAF50;',
'            color: white;',
'            padding: 20px;',
'            text-align: center;',
'            border-radius: 5px;',
'        }',
'        .module {',
'            border: 1px solid #ddd;',
'            margin: 20px 0;',
'            padding: 15px;',
'            border-radius: 5px;',
'        }',
'        .quiz {',
'            background-color: #f9f9f9;',
'            padding: 15px;',
'            margin: 10px 0;',
'            border-radius: 5px;',
'        }',
'        .resource {',
'            background-color: #e7f3ff;',
'            padding: 10px;',
'            margin: 5px 0;',
'            border-radius: 5px;',
'        }',
'        .progress {',
'            background-color: #f1f1f1;',
'            border-radius: 10px;',
'            padding: 3px;',
'        }',
'        .progress-bar {',
'            background-color: #4CAF50;',
'            width: 0%;',
'            height: 20px;',
'            border-radius: 10px;',
'            text-align: center;',
'            color: white;',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="header">',
unistr('        <h1>Introducci\00F3n a la Biolog\00EDa</h1>'),
unistr('        <p>Curso b\00E1sico para entender los fundamentos de la vida</p>'),
'    </div>',
'',
'    <div class="progress">',
'        <div class="progress-bar" style="width: 0%">0% Completado</div>',
'    </div>',
'',
'    <section class="module">',
unistr('        <h2>M\00F3dulo 1: \00BFQu\00E9 es la Biolog\00EDa?</h2>'),
unistr('        <p>La biolog\00EDa es la ciencia que estudia la vida y los organismos vivos. Este m\00F3dulo introduce los conceptos b\00E1sicos y la importancia de esta ciencia.</p>'),
'        ',
'        <h3>Objetivos de Aprendizaje:</h3>',
'        <ul>',
unistr('            <li>Comprender la definici\00F3n de biolog\00EDa</li>'),
unistr('            <li>Identificar las principales ramas de la biolog\00EDa</li>'),
unistr('            <li>Reconocer la importancia de la biolog\00EDa en la vida cotidiana</li>'),
'        </ul>',
'',
'        <div class="resource">',
'            <h4>Recursos:</h4>',
'            <ul>',
unistr('                <li>\D83D\DCDD Presentaci\00F3n: Introducci\00F3n a la Biolog\00EDa</li>'),
unistr('                <li>\D83D\DCDA Lectura: Historia de la Biolog\00EDa</li>'),
unistr('                <li>\D83C\DFA5 Video: La Importancia de la Biolog\00EDa</li>'),
'            </ul>',
'        </div>',
'',
'        <div class="quiz">',
unistr('            <h4>Quiz R\00E1pido:</h4>'),
'            <form>',
unistr('                <p>1. \00BFQu\00E9 estudia la biolog\00EDa?</p>'),
'                <input type="radio" name="q1" value="a"> La materia inerte<br>',
'                <input type="radio" name="q1" value="b"> Los seres vivos<br>',
'                <input type="radio" name="q1" value="c"> Solo las plantas<br>',
'            </form>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>M\00F3dulo 2: La C\00E9lula</h2>'),
unistr('        <p>La c\00E9lula es la unidad b\00E1sica de la vida. Aprenderemos sobre su estructura y funciones.</p>'),
'        ',
'        <h3>Objetivos de Aprendizaje:</h3>',
'        <ul>',
unistr('            <li>Identificar las partes principales de la c\00E9lula</li>'),
unistr('            <li>Diferenciar entre c\00E9lulas procariotas y eucariotas</li>'),
unistr('            <li>Comprender las funciones celulares b\00E1sicas</li>'),
'        </ul>',
'',
'        <div class="resource">',
'            <h4>Recursos:</h4>',
'            <ul>',
unistr('                <li>\D83D\DD2C Pr\00E1ctica: Observaci\00F3n de C\00E9lulas</li>'),
unistr('                <li>\D83D\DCCA Diagrama: Partes de la C\00E9lula</li>'),
unistr('                <li>\D83D\DCF1 App Interactiva: Explorador Celular</li>'),
'            </ul>',
'        </div>',
'',
'        <div class="quiz">',
unistr('            <h4>Actividad Pr\00E1ctica:</h4>'),
unistr('            <p>Dibuja y etiqueta las partes principales de una c\00E9lula animal.</p>'),
unistr('            <textarea rows="4" cols="50" placeholder="Describe tu dibujo aqu\00ED..."></textarea>'),
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>M\00F3dulo 3: Gen\00E9tica B\00E1sica</h2>'),
unistr('        <p>Introducci\00F3n a los principios b\00E1sicos de la herencia y el ADN.</p>'),
'',
'        <h3>Objetivos de Aprendizaje:</h3>',
'        <ul>',
unistr('            <li>Entender qu\00E9 es el ADN</li>'),
unistr('            <li>Conocer las leyes b\00E1sicas de la herencia</li>'),
unistr('            <li>Comprender la importancia de la gen\00E9tica en la vida</li>'),
'        </ul>',
'',
'        <div class="resource">',
'            <h4>Recursos:</h4>',
'            <ul>',
unistr('                <li>\D83E\DDEC Modelo 3D: Estructura del ADN</li>'),
unistr('                <li>\D83D\DCCA Ejercicios: Cuadros de Punnett</li>'),
unistr('                <li>\D83C\DFA5 Documental: El C\00F3digo de la Vida</li>'),
'            </ul>',
'        </div>',
'',
'        <div class="quiz">',
unistr('            <h4>Ejercicio Pr\00E1ctico:</h4>'),
'            <p>Resuelve el siguiente problema de herencia:</p>',
unistr('            <p>Si una planta de flores rojas (RR) se cruza con una de flores blancas (rr), \00BFcu\00E1les ser\00E1n los posibles genotipos de la descendencia?</p>'),
'            <input type="text" placeholder="Escribe tu respuesta...">',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>M\00F3dulo 4: Ecosistemas</h2>'),
'        <p>Estudio de las interacciones entre los seres vivos y su ambiente.</p>',
'',
'        <h3>Objetivos de Aprendizaje:</h3>',
'        <ul>',
'            <li>Identificar los componentes de un ecosistema</li>',
'            <li>Comprender las cadenas alimenticias</li>',
unistr('            <li>Reconocer la importancia del equilibrio ecol\00F3gico</li>'),
'        </ul>',
'',
'        <div class="resource">',
'            <h4>Recursos:</h4>',
'            <ul>',
unistr('                <li>\D83C\DF33 Simulaci\00F3n: Ecosistema Virtual</li>'),
unistr('                <li>\D83D\DCF8 Galer\00EDa: Tipos de Ecosistemas</li>'),
unistr('                <li>\D83C\DFDE\FE0F Actividad: An\00E1lisis de un Ecosistema Local</li>'),
'            </ul>',
'        </div>',
'',
'        <div class="quiz">',
'            <h4>Proyecto Final:</h4>',
'            <p>Crea un modelo de ecosistema:</p>',
'            <ol>',
'                <li>Identifica 5 especies diferentes</li>',
'                <li>Describe sus interacciones</li>',
unistr('                <li>Explica el flujo de energ\00EDa</li>'),
'            </ol>',
unistr('            <textarea rows="6" cols="50" placeholder="Describe tu ecosistema aqu\00ED..."></textarea>'),
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>Evaluaci\00F3n Final</h2>'),
'        <div class="quiz">',
'            <h3>Examen Final</h3>',
'            <p>Para completar el curso, debes:</p>',
'            <ul>',
unistr('                <li>Aprobar todos los quizes de m\00F3dulos (70% m\00EDnimo)</li>'),
'                <li>Completar el proyecto final de ecosistemas</li>',
unistr('                <li>Aprobar el examen final (75% m\00EDnimo)</li>'),
'            </ul>',
'            <button style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">',
unistr('                Iniciar Evaluaci\00F3n Final'),
'            </button>',
'        </div>',
'    </section>',
'',
'    <footer style="text-align: center; margin-top: 40px; padding: 20px; background-color: #f1f1f1;">',
unistr('        <p>\00A9 2024 Curso de Introducci\00F3n a la Biolog\00EDa</p>'),
unistr('        <p>Para m\00E1s informaci\00F3n: ejemplo@correo.com</p>'),
'    </footer>',
'',
'    <script>',
'        // Script simple para actualizar la barra de progreso',
'        function updateProgress(percent) {',
'            const progressBar = document.querySelector(''.progress-bar'');',
'            progressBar.style.width = percent + ''%'';',
'            progressBar.textContent = percent + ''% Completado'';',
'        }',
'',
'        // Ejemplo: Actualizar progreso al 30%',
'        updateProgress(30);',
'    </script>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>unistr('Biolog\00EDa Celular y Molecular')
,p_alias=>unistr('BIOLOG\00CDA-CELULAR-Y-MOLECULAR')
,p_step_title=>unistr('Biolog\00EDa Celular y Molecular')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129606696450990517011)
,p_plug_name=>unistr('Biolog\00EDa Celular y Molecular')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>unistr('Gen\00E9tica y Biotecnolog\00EDa')
,p_alias=>unistr('GEN\00C9TICA-Y-BIOTECNOLOG\00CDA')
,p_step_title=>unistr('Gen\00E9tica y Biotecnolog\00EDa')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129614547630933113197)
,p_plug_name=>unistr('Gen\00E9tica y Biotecnolog\00EDa')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Neurociencia Avanzada'
,p_alias=>'NEUROCIENCIA-AVANZADA'
,p_step_title=>'Neurociencia Avanzada'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194475737941044915548)
,p_plug_name=>'Neurociencia Avanzada'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>unistr('Introducci\00F3n a la Programaci\00F3n')
,p_alias=>unistr('INTRODUCCI\00D3N-A-LA-PROGRAMACI\00D3N')
,p_step_title=>unistr('Introducci\00F3n a la Programaci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259337241320246741934)
,p_plug_name=>unistr('Introducci\00F3n a la Programaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>unistr('Programaci\00F3n en Python')
,p_alias=>unistr('PROGRAMACI\00D3N-EN-PYTHON')
,p_step_title=>unistr('Programaci\00F3n en Python')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(324198778930311572948)
,p_plug_name=>unistr('Programaci\00F3n en Python')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64782490431677800934)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(324198778930311572948)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>Introducci\00F3n a Python</title>'),
'    <style>',
'        body {',
'            font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
'            line-height: 1.6;',
'            max-width: 900px;',
'            margin: 0 auto;',
'            padding: 20px;',
'            background-color: #f5f5f5;',
'        }',
'        .header {',
'            background: linear-gradient(135deg, #306998, #FFD43B);',
'            color: white;',
'            padding: 30px;',
'            text-align: center;',
'            border-radius: 10px;',
'            margin-bottom: 20px;',
'            box-shadow: 0 2px 5px rgba(0,0,0,0.1);',
'        }',
'        .module {',
'            background: white;',
'            border-radius: 10px;',
'            margin: 20px 0;',
'            padding: 20px;',
'            box-shadow: 0 2px 5px rgba(0,0,0,0.1);',
'        }',
'        .code-example {',
'            background-color: #1e1e1e;',
'            color: #d4d4d4;',
'            padding: 15px;',
'            border-radius: 5px;',
'            overflow-x: auto;',
'            font-family: ''Consolas'', monospace;',
'        }',
'        .exercise {',
'            background-color: #e7f3ff;',
'            padding: 15px;',
'            margin: 10px 0;',
'            border-radius: 5px;',
'            border-left: 4px solid #306998;',
'        }',
'        .resource {',
'            background-color: #fff3e0;',
'            padding: 10px;',
'            margin: 5px 0;',
'            border-radius: 5px;',
'            border-left: 4px solid #FFD43B;',
'        }',
'        .progress {',
'            background-color: #e0e0e0;',
'            border-radius: 10px;',
'            padding: 3px;',
'            margin: 20px 0;',
'        }',
'        .progress-bar {',
'            background: linear-gradient(90deg, #306998, #FFD43B);',
'            height: 20px;',
'            border-radius: 10px;',
'            text-align: center;',
'            color: white;',
'            transition: width 0.5s ease-in-out;',
'        }',
'        button {',
'            background-color: #306998;',
'            color: white;',
'            padding: 10px 20px;',
'            border: none;',
'            border-radius: 5px;',
'            cursor: pointer;',
'            transition: background-color 0.3s;',
'        }',
'        button:hover {',
'            background-color: #254e77;',
'        }',
'        .output {',
'            background-color: #f5f5f5;',
'            padding: 10px;',
'            margin-top: 5px;',
'            border-radius: 5px;',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="header">',
unistr('        <h1>\D83D\DC0D Introducci\00F3n a Python</h1>'),
'        <p>Aprende a programar desde cero con Python</p>',
'    </div>',
'',
'    <div class="progress">',
'        <div class="progress-bar" style="width: 0%">0% Completado</div>',
'    </div>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 1: Fundamentos de Python</h2>'),
unistr('        <p>Aprende los conceptos b\00E1sicos de Python y escribe tus primeros programas.</p>'),
'        ',
'        <h3>Objetivos:</h3>',
'        <ul>',
unistr('            <li>Entender qu\00E9 es Python y sus aplicaciones</li>'),
'            <li>Configurar el entorno de desarrollo</li>',
'            <li>Escribir tu primer programa</li>',
unistr('            <li>Comprender tipos de datos b\00E1sicos</li>'),
'        </ul>',
'',
'        <div class="resource">',
unistr('            <h4>\D83D\DEE0\FE0F Recursos:</h4>'),
'            <ul>',
unistr('                <li>Gu\00EDa de instalaci\00F3n de Python</li>'),
'                <li>Visual Studio Code o PyCharm (IDEs recomendados)</li>',
'                <li>Python Documentation</li>',
'            </ul>',
'        </div>',
'',
'        <h4>Tu Primer Programa:</h4>',
'        <div class="code-example">',
'            <pre>',
'# Mi primer programa en Python',
unistr('print("\00A1Hola, Mundo!")'),
unistr('nombre = input("\00BFC\00F3mo te llamas? ")'),
'print(f"Bienvenido al curso de Python, {nombre}!")',
'            </pre>',
'        </div>',
'',
'        <div class="exercise">',
unistr('            <h4>\270D\FE0F Ejercicio Pr\00E1ctico:</h4>'),
'            <p>Modifica el programa anterior para:</p>',
'            <ol>',
'                <li>Preguntar la edad del usuario</li>',
unistr('                <li>Calcular en qu\00E9 a\00F1o nacieron</li>'),
'                <li>Mostrar un mensaje personalizado</li>',
'            </ol>',
unistr('            <textarea rows="5" cols="50" placeholder="Escribe tu c\00F3digo aqu\00ED..."></textarea>'),
unistr('            <button onclick="alert(''\00A1Buen intento! Sigue practicando.'')">Comprobar C\00F3digo</button>'),
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 2: Variables y Tipos de Datos</h2>'),
unistr('        <p>Aprende sobre los diferentes tipos de datos en Python y c\00F3mo trabajar con ellos.</p>'),
'',
unistr('        <h3>Tipos de Datos B\00E1sicos:</h3>'),
'        <div class="code-example">',
'            <pre>',
unistr('# N\00FAmeros'),
'edad = 25                  # int',
'altura = 1.75             # float',
'',
'# Texto',
'nombre = "Python"         # str',
'',
'# Booleanos',
'es_divertido = True      # bool',
'',
'# Listas',
'numeros = [1, 2, 3, 4]   # list',
'',
'# Diccionarios',
'persona = {',
'    "nombre": "Ana",',
'    "edad": 25',
'}                        # dict',
'            </pre>',
'        </div>',
'',
'        <div class="exercise">',
unistr('            <h4>\D83C\DFAF Ejercicio: Calculadora Simple</h4>'),
'            <p>Crea una calculadora que:</p>',
'            <ol>',
unistr('                <li>Pida dos n\00FAmeros al usuario</li>'),
unistr('                <li>Realice las 4 operaciones b\00E1sicas</li>'),
'                <li>Muestre los resultados formateados</li>',
'            </ol>',
'            <div class="code-example">',
'                <pre>',
'# Ejemplo de estructura',
unistr('num1 = float(input("Primer n\00FAmero: "))'),
unistr('num2 = float(input("Segundo n\00FAmero: "))'),
'',
'# Realizar operaciones...',
'                </pre>',
'            </div>',
unistr('            <button>Ver Soluci\00F3n</button>'),
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 3: Control de Flujo</h2>'),
'        <p>Aprende a controlar el flujo de tu programa con condiciones y bucles.</p>',
'',
'        <h3>Estructuras de Control:</h3>',
'        <div class="code-example">',
'            <pre>',
'# Condicionales',
'edad = 18',
'if edad >= 18:',
'    print("Eres mayor de edad")',
'else:',
'    print("Eres menor de edad")',
'',
'# Bucles',
'for i in range(5):',
'    print(f"Vuelta {i+1}")',
'',
'# While',
'contador = 0',
'while contador < 5:',
'    print(f"Contador: {contador}")',
'    contador += 1',
'            </pre>',
'        </div>',
'',
'        <div class="exercise">',
unistr('            <h4>\D83C\DFAE Ejercicio: Juego de Adivinanza</h4>'),
'            <p>Crea un juego que:</p>',
'            <ol>',
unistr('                <li>Genere un n\00FAmero aleatorio entre 1 y 100</li>'),
unistr('                <li>Pida al usuario que adivine el n\00FAmero</li>'),
'                <li>De pistas (mayor/menor) hasta que acierte</li>',
'                <li>Cuente los intentos necesarios</li>',
'            </ol>',
unistr('            <textarea rows="8" cols="50" placeholder="Escribe tu c\00F3digo aqu\00ED..."></textarea>'),
unistr('            <button>Probar C\00F3digo</button>'),
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 4: Funciones</h2>'),
unistr('        <p>Aprende a crear y utilizar funciones para organizar mejor tu c\00F3digo.</p>'),
'',
'        <div class="code-example">',
'            <pre>',
unistr('# Definici\00F3n de funciones'),
'def saludar(nombre):',
unistr('    return f"\00A1Hola, {nombre}!"'),
'',
unistr('# Funci\00F3n con m\00FAltiples par\00E1metros'),
'def calcular_promedio(numeros):',
'    return sum(numeros) / len(numeros)',
'',
'# Uso de funciones',
'nombres = ["Ana", "Juan", "Pedro"]',
'for nombre in nombres:',
'    print(saludar(nombre))',
'',
'notas = [85, 90, 78, 93]',
'promedio = calcular_promedio(notas)',
'print(f"Promedio: {promedio}")',
'            </pre>',
'        </div>',
'',
'        <div class="exercise">',
unistr('            <h4>\D83D\DCDA Proyecto: Biblioteca de Funciones</h4>'),
unistr('            <p>Crea una biblioteca de funciones matem\00E1ticas que incluya:</p>'),
'            <ul>',
unistr('                <li>C\00E1lculo de \00E1rea y per\00EDmetro de diferentes figuras</li>'),
unistr('                <li>Conversi\00F3n de unidades</li>'),
'                <li>Operaciones con fracciones</li>',
'            </ul>',
unistr('            <textarea rows="10" cols="50" placeholder="Escribe tus funciones aqu\00ED..."></textarea>'),
'            <button>Verificar Funciones</button>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 5: Proyecto Final</h2>'),
unistr('        <h3>\D83C\DFAF Sistema de Gesti\00F3n de Tareas</h3>'),
'        <p>Crea un programa que permita:</p>',
'        <ul>',
unistr('            <li>Agregar tareas con t\00EDtulo, descripci\00F3n y fecha</li>'),
'            <li>Marcar tareas como completadas</li>',
'            <li>Listar tareas pendientes y completadas</li>',
'            <li>Guardar y cargar tareas desde un archivo</li>',
'        </ul>',
'',
'        <div class="code-example">',
'            <pre>',
'# Estructura sugerida',
'class Tarea:',
'    def __init__(self, titulo, descripcion, fecha):',
'        self.titulo = titulo',
'        self.descripcion = descripcion',
'        self.fecha = fecha',
'        self.completada = False',
'',
'class GestorTareas:',
'    def __init__(self):',
'        self.tareas = []',
'',
'    def agregar_tarea(self, tarea):',
unistr('        # C\00F3digo aqu\00ED...'),
'',
'    def marcar_completada(self, indice):',
unistr('        # C\00F3digo aqu\00ED...'),
'',
'    def listar_tareas(self):',
unistr('        # C\00F3digo aqu\00ED...'),
'            </pre>',
'        </div>',
'',
'        <div class="exercise">',
'            <h4>Requisitos del Proyecto:</h4>',
'            <ol>',
'                <li>Usar clases y objetos</li>',
'                <li>Implementar manejo de archivos</li>',
'                <li>Incluir manejo de errores</li>',
'                <li>Crear una interfaz por consola</li>',
'            </ol>',
'            <button>Entregar Proyecto</button>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83C\DF93 Evaluaci\00F3n Final</h2>'),
'        <div class="exercise">',
'            <h3>Requisitos para Aprobar:</h3>',
'            <ul>',
unistr('                <li>Completar todos los ejercicios (70% m\00EDnimo)</li>'),
'                <li>Entregar el proyecto final funcionando</li>',
unistr('                <li>Aprobar el examen te\00F3rico-pr\00E1ctico</li>'),
'            </ul>',
unistr('            <button>Iniciar Evaluaci\00F3n Final</button>'),
'        </div>',
'    </section>',
'',
'    <footer style="text-align: center; margin-top: 40px; padding: 20px; background-color: white; border-radius: 10px;">',
unistr('        <p>\00A9 2024 Curso de Introducci\00F3n a Python</p>'),
'        <p>Contacto: python@curso.com</p>',
'        <div style="margin-top: 10px;">',
unistr('            <button onclick="window.scrollTo({top: 0, behavior: ''smooth''})">Volver Arriba \2B06\FE0F</button>'),
'        </div>',
'    </footer>',
'',
'    <script>',
'        // Actualizar progreso',
'        function updateProgress(percent) {',
'            const progressBar = document.querySelector(''.progress-bar'');',
'            progressBar.style.width = percent + ''%'';',
'            progressBar.textContent = percent + ''% Completado'';',
'        }',
'',
'        // Ejemplo: 25% completado',
'        updateProgress(25);',
'    </script>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Algoritmos y Estructuras de Datos'
,p_alias=>'ALGORITMOS-Y-ESTRUCTURAS-DE-DATOS'
,p_step_title=>'Algoritmos y Estructuras de Datos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(389060463125736711429)
,p_plug_name=>'Algoritmos y Estructuras de Datos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Machine Learning'
,p_alias=>'MACHINE-LEARNING'
,p_step_title=>'Machine Learning'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(453922177301110853932)
,p_plug_name=>'Machine Learning'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>unistr('Introducci\00F3n a la Ingenier\00EDa')
,p_alias=>unistr('INTRODUCCI\00D3N-A-LA-INGENIER\00CDA')
,p_step_title=>unistr('Introducci\00F3n a la Ingenier\00EDa')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(518784370760386728843)
,p_plug_name=>unistr('Introducci\00F3n a la Ingenier\00EDa')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>unistr('Mec\00E1nica de Materiales')
,p_alias=>unistr('MEC\00C1NICA-DE-MATERIALES')
,p_step_title=>unistr('Mec\00E1nica de Materiales')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(583647378130180607928)
,p_plug_name=>unistr('Mec\00E1nica de Materiales')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64782490595734800935)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(583647378130180607928)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>Mec\00E1nica de Materiales</title>'),
'    <style>',
'        body {',
'            font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
'            line-height: 1.6;',
'            max-width: 1000px;',
'            margin: 0 auto;',
'            padding: 20px;',
'            background-color: #f5f5f5;',
'        }',
'        .header {',
'            background: linear-gradient(135deg, #2c3e50, #3498db);',
'            color: white;',
'            padding: 30px;',
'            text-align: center;',
'            border-radius: 10px;',
'            margin-bottom: 20px;',
'            box-shadow: 0 2px 5px rgba(0,0,0,0.1);',
'        }',
'        .module {',
'            background: white;',
'            border-radius: 10px;',
'            margin: 20px 0;',
'            padding: 20px;',
'            box-shadow: 0 2px 5px rgba(0,0,0,0.1);',
'        }',
'        .formula {',
'            background-color: #f8f9fa;',
'            padding: 15px;',
'            border-radius: 5px;',
'            border-left: 4px solid #3498db;',
'            font-family: ''Times New Roman'', serif;',
'            overflow-x: auto;',
'        }',
'        .example {',
'            background-color: #e7f3ff;',
'            padding: 15px;',
'            margin: 10px 0;',
'            border-radius: 5px;',
'            border-left: 4px solid #2c3e50;',
'        }',
'        .diagram {',
'            background-color: #fff3e0;',
'            padding: 15px;',
'            margin: 10px 0;',
'            border-radius: 5px;',
'            text-align: center;',
'        }',
'        .progress {',
'            background-color: #e0e0e0;',
'            border-radius: 10px;',
'            padding: 3px;',
'            margin: 20px 0;',
'        }',
'        .progress-bar {',
'            background: linear-gradient(90deg, #2c3e50, #3498db);',
'            height: 20px;',
'            border-radius: 10px;',
'            text-align: center;',
'            color: white;',
'            transition: width 0.5s ease-in-out;',
'        }',
'        button {',
'            background-color: #3498db;',
'            color: white;',
'            padding: 10px 20px;',
'            border: none;',
'            border-radius: 5px;',
'            cursor: pointer;',
'            transition: background-color 0.3s;',
'        }',
'        button:hover {',
'            background-color: #2980b9;',
'        }',
'        .calculator {',
'            background-color: #f4f4f4;',
'            padding: 15px;',
'            border-radius: 5px;',
'            margin: 10px 0;',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="header">',
unistr('        <h1>\2699\FE0F Mec\00E1nica de Materiales</h1>'),
unistr('        <p>Fundamentos y Aplicaciones en Ingenier\00EDa</p>'),
'    </div>',
'',
'    <div class="progress">',
'        <div class="progress-bar" style="width: 0%">0% Completado</div>',
'    </div>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 1: Introducci\00F3n a la Mec\00E1nica de Materiales</h2>'),
unistr('        <p>Conceptos fundamentales y principios b\00E1sicos de la mec\00E1nica de materiales.</p>'),
'        ',
'        <h3>Objetivos:</h3>',
'        <ul>',
unistr('            <li>Comprender los conceptos b\00E1sicos de esfuerzo y deformaci\00F3n</li>'),
unistr('            <li>Identificar las propiedades mec\00E1nicas de los materiales</li>'),
unistr('            <li>Entender la importancia de la mec\00E1nica de materiales en la ingenier\00EDa</li>'),
'        </ul>',
'',
'        <div class="formula">',
unistr('            <h4>F\00F3rmulas Fundamentales:</h4>'),
unistr('            <p>Esfuerzo Normal (\03C3):</p>'),
unistr('            <p>\03C3 = F/A</p>'),
'            <p>donde:</p>',
'            <ul>',
'                <li>F = Fuerza aplicada</li>',
unistr('                <li>A = \00C1rea de la secci\00F3n transversal</li>'),
'            </ul>',
'        </div>',
'',
'        <div class="example">',
unistr('            <h4>\D83D\DCDD Ejemplo Pr\00E1ctico:</h4>'),
unistr('            <p>Una barra de acero de 2 cm\00B2 de secci\00F3n transversal est\00E1 sometida a una fuerza de 1000 N. Calcular el esfuerzo normal.</p>'),
'            <div class="calculator">',
'                <input type="number" placeholder="Fuerza (N)" id="fuerza">',
unistr('                <input type="number" placeholder="\00C1rea (cm\00B2)" id="area">'),
'                <button onclick="calcularEsfuerzo()">Calcular</button>',
'                <div id="resultado"></div>',
'            </div>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 2: Propiedades Mec\00E1nicas de los Materiales</h2>'),
unistr('        <p>Estudio de las caracter\00EDsticas y comportamiento de los materiales bajo cargas.</p>'),
'',
'        <h3>Temas Principales:</h3>',
'        <ul>',
'            <li>Elasticidad y Ley de Hooke</li>',
unistr('            <li>M\00F3dulo de Young</li>'),
unistr('            <li>Relaci\00F3n de Poisson</li>'),
unistr('            <li>Diagramas de esfuerzo-deformaci\00F3n</li>'),
'        </ul>',
'',
'        <div class="formula">',
'            <h4>Ley de Hooke:</h4>',
unistr('            <p>\03C3 = E \00D7 \03B5</p>'),
'            <p>donde:</p>',
'            <ul>',
unistr('                <li>E = M\00F3dulo de elasticidad</li>'),
unistr('                <li>\03B5 = Deformaci\00F3n unitaria</li>'),
'            </ul>',
'        </div>',
'',
'        <div class="diagram">',
unistr('            <h4>Diagrama Esfuerzo-Deformaci\00F3n:</h4>'),
unistr('            <img src="/api/placeholder/600/300" alt="Diagrama Esfuerzo-Deformaci\00F3n">'),
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 3: Esfuerzo y Deformaci\00F3n</h2>'),
unistr('        <p>An\00E1lisis detallado de los diferentes tipos de esfuerzos y deformaciones.</p>'),
'',
'        <h3>Tipos de Esfuerzos:</h3>',
'        <ul>',
unistr('            <li>Esfuerzo normal (tensi\00F3n y compresi\00F3n)</li>'),
'            <li>Esfuerzo cortante</li>',
unistr('            <li>Esfuerzo de flexi\00F3n</li>'),
unistr('            <li>Esfuerzo de torsi\00F3n</li>'),
'        </ul>',
'',
'        <div class="formula">',
unistr('            <h4>Esfuerzo Cortante (\03C4):</h4>'),
unistr('            <p>\03C4 = V/A</p>'),
'            <p>donde:</p>',
'            <ul>',
'                <li>V = Fuerza cortante</li>',
unistr('                <li>A = \00C1rea de la secci\00F3n</li>'),
'            </ul>',
'        </div>',
'',
'        <div class="example">',
unistr('            <h4>\D83D\DD27 Problema Pr\00E1ctico:</h4>'),
unistr('            <p>Calcular el esfuerzo cortante en un perno sometido a una carga de 5000 N con un di\00E1metro de 12 mm.</p>'),
unistr('            <textarea rows="4" cols="50" placeholder="Escribe tu soluci\00F3n aqu\00ED..."></textarea>'),
unistr('            <button>Verificar Soluci\00F3n</button>'),
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 4: Flexi\00F3n y Torsi\00F3n</h2>'),
'        ',
'        <div class="formula">',
'            <h4>Momento Flexionante:</h4>',
unistr('            <p>\03C3 = Mc/I</p>'),
'            <p>donde:</p>',
'            <ul>',
'                <li>M = Momento flexionante</li>',
'                <li>c = Distancia al eje neutro</li>',
'                <li>I = Momento de inercia</li>',
'            </ul>',
'        </div>',
'',
'        <div class="formula">',
unistr('            <h4>Torsi\00F3n:</h4>'),
unistr('            <p>\03C4 = Tr/J</p>'),
'            <p>donde:</p>',
'            <ul>',
'                <li>T = Momento torsor</li>',
'                <li>r = Radio</li>',
'                <li>J = Momento polar de inercia</li>',
'            </ul>',
'        </div>',
'',
'        <div class="example">',
unistr('            <h4>\D83D\DCD0 Ejercicio de Dise\00F1o:</h4>'),
unistr('            <p>Dise\00F1ar un eje circular que soporte un momento torsor de 1000 N\00B7m con un esfuerzo cortante m\00E1ximo permisible de 50 MPa.</p>'),
'            <div class="calculator">',
unistr('                <input type="number" placeholder="Momento torsor (N\00B7m)" id="torsor">'),
'                <input type="number" placeholder="Esfuerzo permisible (MPa)" id="esfuerzo_max">',
unistr('                <button onclick="calcularDiametro()">Calcular Di\00E1metro</button>'),
'                <div id="resultado_diametro"></div>',
'            </div>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 5: Aplicaciones Pr\00E1cticas</h2>'),
'        ',
'        <h3>Casos de Estudio:</h3>',
'        <ul>',
unistr('            <li>Dise\00F1o de vigas</li>'),
unistr('            <li>An\00E1lisis de estructuras</li>'),
unistr('            <li>Dise\00F1o de ejes</li>'),
unistr('            <li>Selecci\00F3n de materiales</li>'),
'        </ul>',
'',
'        <div class="example">',
unistr('            <h4>\D83C\DFD7\FE0F Proyecto Final:</h4>'),
unistr('            <p>Dise\00F1o completo de una viga simplemente apoyada que debe soportar:</p>'),
'            <ul>',
'                <li>Carga distribuida uniforme</li>',
'                <li>Carga puntual en el centro</li>',
unistr('                <li>Restricciones de deflexi\00F3n m\00E1xima</li>'),
'            </ul>',
'            <button>Iniciar Proyecto</button>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC Herramientas de C\00E1lculo</h2>'),
'        ',
'        <div class="calculator">',
unistr('            <h3>\D83D\DD27 Calculadora de Propiedades de Secci\00F3n</h3>'),
'            <select id="seccion">',
unistr('                <option value="circular">Secci\00F3n Circular</option>'),
unistr('                <option value="rectangular">Secci\00F3n Rectangular</option>'),
'                <option value="tubo">Tubo Circular</option>',
'            </select>',
'            <div id="dimensiones">',
unistr('                <!-- Los campos se actualizar\00E1n seg\00FAn la selecci\00F3n -->'),
'            </div>',
'            <button onclick="calcularPropiedades()">Calcular Propiedades</button>',
'            <div id="resultados_propiedades"></div>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83C\DF93 Evaluaci\00F3n Final</h2>'),
'        <div class="example">',
'            <h3>Requisitos para Aprobar:</h3>',
'            <ul>',
unistr('                <li>Completar todos los ejercicios pr\00E1cticos</li>'),
unistr('                <li>Aprobar los ex\00E1menes de cada m\00F3dulo</li>'),
'                <li>Presentar y aprobar el proyecto final</li>',
unistr('                <li>Examen te\00F3rico-pr\00E1ctico final</li>'),
'            </ul>',
unistr('            <button>Comenzar Evaluaci\00F3n</button>'),
'        </div>',
'    </section>',
'',
'    <footer style="text-align: center; margin-top: 40px; padding: 20px; background-color: white; border-radius: 10px;">',
unistr('        <p>\00A9 2024 Curso de Mec\00E1nica de Materiales</p>'),
'        <p>Contacto: mecanica@curso.com</p>',
unistr('        <button onclick="window.scrollTo({top: 0, behavior: ''smooth''})">Volver Arriba \2B06\FE0F</button>'),
'    </footer>',
'',
'    <script>',
unistr('        // Funci\00F3n para actualizar el progreso'),
'        function updateProgress(percent) {',
'            const progressBar = document.querySelector(''.progress-bar'');',
'            progressBar.style.width = percent + ''%'';',
'            progressBar.textContent = percent + ''% Completado'';',
'        }',
'',
unistr('        // Funci\00F3n para calcular esfuerzo'),
'        function calcularEsfuerzo() {',
'            const fuerza = document.getElementById(''fuerza'').value;',
'            const area = document.getElementById(''area'').value;',
unistr('            const esfuerzo = (fuerza / (area * 100)).toFixed(2); // Convertir cm\00B2 a m\00B2'),
'            document.getElementById(''resultado'').innerHTML = ',
'                `Esfuerzo: ${esfuerzo} MPa`;',
'        }',
'',
'        // Ejemplo: 30% completado',
'        updateProgress(30);',
'    </script>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>unistr('Ingenier\00EDa de Sistemas')
,p_alias=>unistr('INGENIER\00CDA-DE-SISTEMAS')
,p_step_title=>unistr('Ingenier\00EDa de Sistemas')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(648510397470296490564)
,p_plug_name=>unistr('Ingenier\00EDa de Sistemas')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>unistr('Ingenier\00EDa Biom\00E9dica')
,p_alias=>unistr('INGENIER\00CDA-BIOM\00C9DICA')
,p_step_title=>unistr('Ingenier\00EDa Biom\00E9dica')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(713376173228709751436)
,p_plug_name=>unistr('Ingenier\00EDa Biom\00E9dica')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>unistr('Aritm\00E9tica y N\00FAmeros')
,p_alias=>unistr('ARITM\00C9TICA-Y-N\00DAMEROS')
,p_step_title=>unistr('Aritm\00E9tica y N\00FAmeros')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(778243639011005046793)
,p_plug_name=>unistr('Aritm\00E9tica y N\00FAmeros')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64782490625709800936)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(778243639011005046793)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>Aritm\00E9tica y N\00FAmeros</title>'),
'    <style>',
'        body {',
'            font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
'            line-height: 1.6;',
'            max-width: 900px;',
'            margin: 0 auto;',
'            padding: 20px;',
'            background-color: #f5f5f5;',
'        }',
'        .header {',
'            background: linear-gradient(135deg, #FF6B6B, #4ECDC4);',
'            color: white;',
'            padding: 30px;',
'            text-align: center;',
'            border-radius: 10px;',
'            margin-bottom: 20px;',
'            box-shadow: 0 2px 5px rgba(0,0,0,0.1);',
'        }',
'        .module {',
'            background: white;',
'            border-radius: 10px;',
'            margin: 20px 0;',
'            padding: 20px;',
'            box-shadow: 0 2px 5px rgba(0,0,0,0.1);',
'        }',
'        .example {',
'            background-color: #e7f3ff;',
'            padding: 15px;',
'            margin: 10px 0;',
'            border-radius: 5px;',
'            border-left: 4px solid #4ECDC4;',
'        }',
'        .practice {',
'            background-color: #fff3e0;',
'            padding: 15px;',
'            margin: 10px 0;',
'            border-radius: 5px;',
'            border-left: 4px solid #FF6B6B;',
'        }',
'        .hint {',
'            background-color: #f0f7ff;',
'            padding: 10px;',
'            margin: 5px 0;',
'            border-radius: 5px;',
'            font-style: italic;',
'            color: #666;',
'        }',
'        .progress {',
'            background-color: #e0e0e0;',
'            border-radius: 10px;',
'            padding: 3px;',
'            margin: 20px 0;',
'        }',
'        .progress-bar {',
'            background: linear-gradient(90deg, #FF6B6B, #4ECDC4);',
'            height: 20px;',
'            border-radius: 10px;',
'            text-align: center;',
'            color: white;',
'            transition: width 0.5s ease-in-out;',
'        }',
'        button {',
'            background-color: #4ECDC4;',
'            color: white;',
'            padding: 10px 20px;',
'            border: none;',
'            border-radius: 5px;',
'            cursor: pointer;',
'            transition: background-color 0.3s;',
'        }',
'        button:hover {',
'            background-color: #45b7ae;',
'        }',
'        .step-by-step {',
'            background-color: #f8f9fa;',
'            padding: 15px;',
'            border-radius: 5px;',
'            margin: 10px 0;',
'        }',
'        .number-line {',
'            height: 4px;',
'            background-color: #333;',
'            margin: 20px 0;',
'            position: relative;',
'        }',
'        .number-point {',
'            position: absolute;',
'            width: 10px;',
'            height: 10px;',
'            background-color: #FF6B6B;',
'            border-radius: 50%;',
'            transform: translate(-50%, -50%);',
'        }',
'        .game-board {',
'            border: 2px solid #4ECDC4;',
'            padding: 20px;',
'            border-radius: 10px;',
'            margin: 10px 0;',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="header">',
unistr('        <h1>\D83D\DD22 Aritm\00E9tica y N\00FAmeros</h1>'),
unistr('        <p>Aprende los fundamentos de los n\00FAmeros y operaciones b\00E1sicas</p>'),
'    </div>',
'',
'    <div class="progress">',
'        <div class="progress-bar" style="width: 0%">0% Completado</div>',
'    </div>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 1: N\00FAmeros Naturales</h2>'),
unistr('        <p>Los n\00FAmeros naturales son los que usamos para contar: 1, 2, 3, 4, ...</p>'),
'',
'        <div class="example">',
unistr('            <h3>\D83C\DFAF Conceptos B\00E1sicos:</h3>'),
'            <ul>',
'                <li>Conteo y secuencias</li>',
'                <li>Mayor y menor que</li>',
unistr('                <li>Orden de los n\00FAmeros</li>'),
unistr('                <li>N\00FAmeros pares e impares</li>'),
'            </ul>',
'        </div>',
'',
'        <div class="practice">',
unistr('            <h4>\270D\FE0F Pr\00E1ctica: Ordenar N\00FAmeros</h4>'),
unistr('            <p>Ordena de menor a mayor los siguientes n\00FAmeros:</p>'),
'            <div id="numbers-to-order">15, 7, 23, 4, 12</div>',
'            <input type="text" placeholder="Escribe tu respuesta" id="order-answer">',
'            <button onclick="checkOrder()">Verificar</button>',
'            <div id="order-result" class="hint"></div>',
'        </div>',
'',
'        <div class="game-board">',
unistr('            <h4>\D83C\DFAE Juego: Encuentra el N\00FAmero</h4>'),
unistr('            <p>Te dar\00E9 pistas y debes adivinar el n\00FAmero entre 1 y 100</p>'),
'            <input type="number" id="guess-input">',
'            <button onclick="checkGuess()">Adivinar</button>',
'            <p id="guess-hint" class="hint"></p>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 2: Operaciones B\00E1sicas</h2>'),
'',
'        <div class="example">',
unistr('            <h3>\2795 Suma</h3>'),
'            <div class="step-by-step">',
'                <p>Ejemplo: 248 + 356</p>',
'                <pre>',
'   248',
' + 356',
' -----',
'   604',
'                </pre>',
'                <div class="hint">Recuerda: Comenzamos por las unidades, luego decenas, etc.</div>',
'            </div>',
'        </div>',
'',
'        <div class="example">',
unistr('            <h3>\2796 Resta</h3>'),
'            <div class="step-by-step">',
'                <p>Ejemplo: 523 - 248</p>',
'                <pre>',
'   523',
' - 248',
' -----',
'   275',
'                </pre>',
unistr('                <div class="hint">Tip: Si necesitas "pedir prestado", resta 1 al siguiente d\00EDgito.</div>'),
'            </div>',
'        </div>',
'',
'        <div class="practice">',
unistr('            <h4>\D83C\DFAF Ejercicios de Pr\00E1ctica</h4>'),
'            <div id="practice-problems">',
'                <p>1) 345 + 567 = ____</p>',
'                <p>2) 789 - 456 = ____</p>',
'                <input type="number" placeholder="Respuesta 1">',
'                <input type="number" placeholder="Respuesta 2">',
'                <button onclick="checkAnswers()">Verificar</button>',
'            </div>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 3: Multiplicaci\00F3n</h2>'),
'',
'        <div class="example">',
unistr('            <h3>\2716\FE0F Tablas de Multiplicar</h3>'),
'            <div class="step-by-step">',
'                <h4>Tabla del 7:</h4>',
'                <pre>',
'7 x 1 = 7',
'7 x 2 = 14',
'7 x 3 = 21',
'7 x 4 = 28',
'7 x 5 = 35',
'7 x 6 = 42',
'7 x 7 = 49',
'7 x 8 = 56',
'7 x 9 = 63',
'7 x 10 = 70',
'                </pre>',
'            </div>',
'        </div>',
'',
'        <div class="practice">',
unistr('            <h4>\D83C\DFAE Juego de Multiplicaci\00F3n</h4>'),
'            <div id="multiplication-game">',
'                <p>Resuelve: <span id="mult-problem">7 x 8 = ?</span></p>',
'                <input type="number" id="mult-answer">',
'                <button onclick="checkMultiplication()">Comprobar</button>',
'                <p id="mult-result" class="hint"></p>',
'            </div>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 4: Divisi\00F3n</h2>'),
'',
'        <div class="example">',
unistr('            <h3>\2797 Divisi\00F3n Paso a Paso</h3>'),
'            <div class="step-by-step">',
unistr('                <p>Ejemplo: 756 \00F7 3</p>'),
'                <pre>',
'  756 | 3',
'  -6   -----',
'   15  252',
'  -15',
'    06',
'    -6',
'     0',
'                </pre>',
'                <div class="hint">Recuerda: Dividir, Multiplicar, Restar, Bajar</div>',
'            </div>',
'        </div>',
'',
'        <div class="practice">',
unistr('            <h4>\270D\FE0F Ejercicios de Divisi\00F3n</h4>'),
'            <p>Resuelve las siguientes divisiones:</p>',
'            <ol>',
unistr('                <li>824 \00F7 4 = ____</li>'),
unistr('                <li>925 \00F7 5 = ____</li>'),
'            </ol>',
'            <input type="number" placeholder="Respuesta 1">',
'            <input type="number" placeholder="Respuesta 2">',
'            <button onclick="checkDivisions()">Verificar</button>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCC M\00F3dulo 5: Fracciones</h2>'),
'',
'        <div class="example">',
unistr('            <h3>\D83C\DF55 Entendiendo las Fracciones</h3>'),
'            <div class="step-by-step">',
unistr('                <p>Una fracci\00F3n representa una parte de un todo</p>'),
unistr('                <img src="/api/placeholder/400/200" alt="Representaci\00F3n visual de fracciones">'),
'            </div>',
'        </div>',
'',
'        <div class="practice">',
unistr('            <h4>\D83C\DFAF Comparaci\00F3n de Fracciones</h4>'),
unistr('            <p>\00BFCu\00E1l es mayor?</p>'),
'            <div id="fraction-comparison">',
'                <p>3/4 ___ 2/3</p>',
'                <select id="fraction-operator">',
'                    <option value="">Selecciona</option>',
'                    <option value=">">&gt;</option>',
'                    <option value="<">&lt;</option>',
'                    <option value="=">=</option>',
'                </select>',
'                <button onclick="checkFractionComparison()">Verificar</button>',
'            </div>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83C\DFAE Juegos y Actividades</h2>'),
'        ',
'        <div class="game-board">',
unistr('            <h3>\D83C\DFB2 Bingo de Multiplicaci\00F3n</h3>'),
'            <p>Genera una tabla de bingo con productos de multiplicaciones</p>',
'            <button onclick="generateBingo()">Nuevo Juego</button>',
'            <div id="bingo-board"></div>',
'        </div>',
'',
'        <div class="game-board">',
unistr('            <h3>\D83C\DFC3\200D\2642\FE0F Carrera de N\00FAmeros</h3>'),
unistr('            <p>Resuelve operaciones r\00E1pidamente para avanzar</p>'),
'            <div id="race-track"></div>',
'            <button onclick="startRace()">Iniciar Carrera</button>',
'        </div>',
'    </section>',
'',
'    <section class="module">',
unistr('        <h2>\D83D\DCCA Evaluaci\00F3n Final</h2>'),
'        <div class="practice">',
'            <h3>Requisitos para Aprobar:</h3>',
'            <ul>',
unistr('                <li>Completar todos los ejercicios pr\00E1cticos</li>'),
unistr('                <li>Aprobar el examen de cada m\00F3dulo</li>'),
'                <li>Obtener al menos 70% en el examen final</li>',
'            </ul>',
unistr('            <button onclick="startFinalExam()">Comenzar Evaluaci\00F3n Final</button>'),
'        </div>',
'    </section>',
'',
'    <footer style="text-align: center; margin-top: 40px; padding: 20px; background-color: white; border-radius: 10px;">',
unistr('        <p>\00A9 2024 Curso de Aritm\00E9tica y N\00FAmeros</p>'),
unistr('        <p>\00A1Aprende jugando y practicando!</p>'),
unistr('        <button onclick="window.scrollTo({top: 0, behavior: ''smooth''})">Volver Arriba \2B06\FE0F</button>'),
'    </footer>',
'',
'    <script>',
'        // Actualizar progreso',
'        function updateProgress(percent) {',
'            const progressBar = document.querySelector(''.progress-bar'');',
'            progressBar.style.width = percent + ''%'';',
'            progressBar.textContent = percent + ''% Completado'';',
'        }',
'',
unistr('        // Verificar orden de n\00FAmeros'),
'        function checkOrder() {',
'            const answer = document.getElementById(''order-answer'').value;',
'            const correct = "4, 7, 12, 15, 23";',
'            const result = document.getElementById(''order-result'');',
'            if(answer.replace(/\s/g, '''') === correct.replace(/\s/g, '''')) {',
unistr('                result.textContent = "\00A1Correcto! \2705";'),
'                result.style.color = "green";',
'            } else {',
unistr('                result.textContent = "Intenta de nuevo \274C";'),
'                result.style.color = "red";',
'            }',
'        }',
'',
'        // Juego de adivinanza',
'        let targetNumber = Math.floor(Math.random() * 100) + 1;',
'        function checkGuess() {',
'            const guess = parseInt(document.getElementById(''guess-input'').value);',
'            const hint = document.getElementById(''guess-hint'');',
'            if(guess === targetNumber) {',
unistr('                hint.textContent = "\00A1Correcto! \D83C\DF89";'),
'                targetNumber = Math.floor(Math.random() * 100) + 1;',
'            } else if(guess < targetNumber) {',
unistr('                hint.textContent = "El n\00FAmero es mayor \2B06\FE0F";'),
'            } else {',
unistr('                hint.textContent = "El n\00FAmero es menor \2B07\FE0F";'),
'            }',
'        }',
'',
'        // Iniciar con 0% de progreso',
'        updateProgress(0);',
'    </script>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>unistr('\00C1lgebra Intermedia')
,p_alias=>unistr('\00C1LGEBRA-INTERMEDIA')
,p_step_title=>unistr('\00C1lgebra Intermedia')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(843111111341489345064)
,p_plug_name=>unistr('\00C1lgebra Intermedia')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_imp_page.create_page(
 p_id=>36
,p_name=>unistr('C\00E1lculo Integral')
,p_alias=>unistr('C\00C1LCULO-INTEGRAL')
,p_step_title=>unistr('C\00E1lculo Integral')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(907979022451361344278)
,p_plug_name=>unistr('C\00E1lculo Integral')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_imp_page.create_page(
 p_id=>37
,p_name=>unistr('An\00E1lisis\00A0Num\00E9rico')
,p_alias=>unistr('AN\00C1LISIS-NUM\00C9RICO')
,p_step_title=>unistr('An\00E1lisis\00A0Num\00E9rico')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64576469958648048205)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(972846543342503649250)
,p_plug_name=>unistr('An\00E1lisis\00A0Num\00E9rico')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64577474139586048265)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
end;
/
prompt --application/pages/page_00059
begin
wwv_flow_imp_page.create_page(
 p_id=>59
,p_name=>'CHAT-BOT'
,p_alias=>'CHAT-BOT'
,p_page_mode=>'MODAL'
,p_step_title=>'CHAT-BOT'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'table td, table th {',
'    display: none;',
'}',
'',
'table td:nth-child(3), table th:nth-child(3) {',
'    display: table-cell;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64873796301431148897)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64577549525333048273)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64575892369769048183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64578402919766048327)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(64817455656916861834)
,p_name=>'ia'
,p_parent_plug_id=>wwv_flow_imp.id(64873796301431148897)
,p_template=>wwv_flow_imp.id(64577474139586048265)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SMART_FILTERS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(64707097055352620364)
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(64577938489175048295)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64817455708021861835)
,p_query_column_id=>1
,p_column_alias=>'INDEX_'
,p_column_display_sequence=>10
,p_column_heading=>'Index'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64817455850645861836)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE_ROLE'
,p_column_display_sequence=>20
,p_column_heading=>'Message Role'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64817455961434861837)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_CONTENT'
,p_column_display_sequence=>30
,p_column_heading=>'Message Content'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64817456007147861838)
,p_query_column_id=>4
,p_column_alias=>'MESSAGE_REFUSAL'
,p_column_display_sequence=>40
,p_column_heading=>'Message Refusal'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64817456119308861839)
,p_query_column_id=>5
,p_column_alias=>'LOGPROBS'
,p_column_display_sequence=>50
,p_column_heading=>'Logprobs'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64817456288709861840)
,p_query_column_id=>6
,p_column_alias=>'FINISH_REASON'
,p_column_display_sequence=>60
,p_column_heading=>'Finish Reason'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(64817456343054861841)
,p_page_id=>59
,p_web_src_param_id=>wwv_flow_imp.id(64706590703836320750)
,p_page_plug_id=>wwv_flow_imp.id(64817455656916861834)
,p_value_type=>'ITEM'
,p_value=>'USERPROMPT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64742683426712700327)
,p_name=>'USERPROMPT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(64873796301431148897)
,p_item_display_point=>'SMART_FILTERS'
,p_use_cache_before_default=>'NO'
,p_prompt=>'Userprompt'
,p_source=>'USERPROMPT'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(64578169366370048324)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_10009
begin
wwv_flow_imp_page.create_page(
 p_id=>10009
,p_name=>'InicioSesion'
,p_alias=>'INICIOSESION'
,p_step_title=>'Registro'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64575973759986048192)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64733413475555532653)
,p_plug_name=>unistr('Inicio de sesi\00F3n')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64577438724897048261)
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64733415164405532655)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64733413475555532653)
,p_button_name=>'iniciar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Iniciar sesi\00F3n')
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64742680962128700302)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64733413475555532653)
,p_button_name=>'Registro'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_image_alt=>'Registrarme'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64733413964216532654)
,p_name=>'CORREO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64733413475555532653)
,p_prompt=>unistr('Correo el\00E9ctronico')
,p_placeholder=>unistr('Correo el\00E9ctronico')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(64578164540071048323)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64733414316528532654)
,p_name=>'PASS_WORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64733413475555532653)
,p_prompt=>unistr('Contrase\00F1a')
,p_placeholder=>unistr('Contrase\00F1a')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>wwv_flow_imp.id(64578164540071048323)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64733414765627532655)
,p_name=>'P10009_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(64733413475555532653)
,p_prompt=>'Recordarme al entrar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(64578164540071048323)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64733417307619532656)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Hay algo?'
,p_internal_uid=>64733417307619532656
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64733417857239532656)
,p_page_process_id=>wwv_flow_imp.id(64733417307619532656)
,p_page_id=>10009
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P10009_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64733418386210532657)
,p_page_process_id=>wwv_flow_imp.id(64733417307619532656)
,p_page_id=>10009
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10009_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64733415408384532655)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Oh oh !',
'Verifica tus datos'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\00A1 Inicio de sesi\00F3n exitoso !')
,p_internal_uid=>64733415408384532655
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64733415971398532655)
,p_page_process_id=>wwv_flow_imp.id(64733415408384532655)
,p_page_id=>10009
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'CORREO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64733416464513532656)
,p_page_process_id=>wwv_flow_imp.id(64733415408384532655)
,p_page_id=>10009
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'PASS_WORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64733416931935532656)
,p_page_process_id=>wwv_flow_imp.id(64733415408384532655)
,p_page_id=>10009
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64733419317175532658)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64733419317175532658
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64733418822363532657)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10009_USERNAME := apex_authentication.get_login_username_cookie;',
':P10009_REMEMBER := case when :P10009_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>64733418822363532657
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Registro'
,p_alias=>'REGISTRO'
,p_step_title=>'Registro'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64575973759986048192)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64744711138247048827)
,p_plug_name=>'Registro'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64577438724897048261)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64744712838187048829)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64744711138247048827)
,p_button_name=>'Registro'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registro'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64733351746780237908)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64744711138247048827)
,p_button_name=>'login'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64578191932428048326)
,p_button_image_alt=>unistr('Iniciar sesi\00F3n')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:10009:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64733351824380237909)
,p_name=>'P10020_CORREO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64744711138247048827)
,p_prompt=>'Correo'
,p_placeholder=>'Correo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(64578164540071048323)
,p_item_icon_css_classes=>'fa-envelope-o'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64744711606842048828)
,p_name=>'P10020_USUARIO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64744711138247048827)
,p_prompt=>'Nombre'
,p_placeholder=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(64578164540071048323)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64744712099029048828)
,p_name=>unistr('P10020_CONTRASE\00D1A')
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(64744711138247048827)
,p_prompt=>unistr('Contrase\00F1a')
,p_placeholder=>unistr('Contrase\00F1a')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>wwv_flow_imp.id(64578164540071048323)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64744715062803048831)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64744715062803048831
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64744715586558048831)
,p_page_process_id=>wwv_flow_imp.id(64744715062803048831)
,p_page_id=>10020
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P10020_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64744716019441048831)
,p_page_process_id=>wwv_flow_imp.id(64744715062803048831)
,p_page_id=>10020
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'STATIC'
,p_value=>'TRUE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64744713101478048829)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64744713101478048829
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64744713637566048830)
,p_page_process_id=>wwv_flow_imp.id(64744713101478048829)
,p_page_id=>10020
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10020_USUARIO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64744714107024048830)
,p_page_process_id=>wwv_flow_imp.id(64744713101478048829)
,p_page_id=>10020
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>unistr('P10020_CONTRASE\00D1A')
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64744714613562048830)
,p_page_process_id=>wwv_flow_imp.id(64744713101478048829)
,p_page_id=>10020
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64744716956045048832)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64744716956045048832
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64744716562718048831)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10020_USERNAME := apex_authentication.get_login_username_cookie;',
':P10020_REMEMBER := case when :P10020_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>64744716562718048831
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(64879016357232613780)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
