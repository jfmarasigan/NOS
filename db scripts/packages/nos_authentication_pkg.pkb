create or replace PACKAGE BODY           "NOS_AUTHENTICATION_PKG" 
as
	function nos_authentication (
	    p_username in varchar2,
	    p_password in varchar2 )
	    return boolean
	is
	    v_user          npm009.user_name%type := upper(p_username);
	    v_pw            npm009.password%type;
        v_salt          npm009.salt%type;
        v_status        npm009.status%type;
        v_last_lock     npm009.last_locked_date%type;
        v_hashed_pw     npm009.password%type;
        inv_login_ctr   npm009.invalid_login_tries%type;

        v_result    boolean := false;
	begin
	    begin
	        select password, salt, status, last_locked_date
	          into v_pw, v_salt, v_status, v_last_lock
	          from npm009
	         where user_name = v_user;

            v_hashed_pw := sys.dbms_crypto.mac(utl_raw.cast_to_raw(p_password), sys.dbms_crypto.hash_sh256, utl_raw.cast_to_raw(v_salt));
	    exception when no_data_found then
	        v_pw := '-invalid-';
            v_hashed_pw := '-';
	    end;

        v_result := v_hashed_pw = v_pw;

        if v_pw != '-invalid-' then -- user exists
            if v_status = 'L' and (v_last_lock + 1/24) >= sysdate then 
                apex_util.set_custom_auth_status (p_status => 'Your account has been locked due to multiple unsuccessful login attempts. Please contact your administrator.');
                return (false);
            elsif v_status = 'C' then
                apex_util.set_custom_auth_status (p_status => 'Your account has been archived. Please contact your administrator.');
                return (false);
            elsif v_status = 'I' then
                apex_util.set_custom_auth_status (p_status => 'Your account is inactive. Please contact your administrator.');
                return (false);
            end if;

            if not v_result then
                select invalid_login_tries + 1
                  into inv_login_ctr
                  from npm009
                 where user_name = v_user;

                update npm009
                   set invalid_login_tries = inv_login_ctr,
                       status = case when inv_login_ctr = 5 then 'L' else 'A' end,
                       last_locked_date = case when inv_login_ctr = 5 then sysdate else null end
                 where user_name = v_user;

                if inv_login_ctr = 5 then 
                    apex_util.set_custom_auth_status (p_status => 'Your account has been locked due to multiple unsuccessful login attempts. Please contact your administrator.');
                end if;
            else
                update npm009
                   set invalid_login_tries = 0,
                       last_locked_date = null,
                       status = 'A'
                 where user_name = v_user;
            end if;
        end if;

	    return v_result;
	end nos_authentication;

    function nos_authentication2 (
	    p_username in varchar2,
	    p_password in varchar2 )
	    return boolean
	is
	    v_user          npm009.user_name%type := upper(p_username);
	    v_pw            npm009.password%type;
        v_salt          npm009.salt%type;        
        v_hashed_pw     npm009.password%type;
        v_result    boolean := false;
	begin
	    begin
	        select password, salt
	          into v_pw, v_salt
	          from npm009
	         where user_name = v_user;

            v_hashed_pw := sys.dbms_crypto.mac(utl_raw.cast_to_raw(p_password), sys.dbms_crypto.hash_sh256, utl_raw.cast_to_raw(v_salt));
	    exception when no_data_found then
	        v_pw := '-invalid-';
            v_hashed_pw := '-';
	    end;

        v_result := v_hashed_pw = v_pw;

	    return v_result;
	end nos_authentication2;

    function hash_pw (
        p_password in varchar2,
        p_salt in varchar2
    )
    return varchar2
    as
        v_new_pw        npm009.password%TYPE;
    begin
        return sys.dbms_crypto.mac(utl_raw.cast_to_raw(p_password), sys.dbms_crypto.hash_sh256, utl_raw.cast_to_raw(p_salt));
    end hash_pw;
end nos_authentication_pkg;
/