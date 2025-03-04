create or replace PACKAGE           "NOS_AUTHENTICATION_PKG" 
as
	function nos_authentication (
	    p_username in varchar2,
	    p_password in varchar2 )
	return boolean;

    -- same as nos_authentication but with no locking and no apex processes
    function nos_authentication2 (
	    p_username in varchar2,
	    p_password in varchar2 )
	return boolean;

    function hash_pw (
        p_password in varchar2,
        p_salt in varchar2
    )
    return varchar2;
end nos_authentication_pkg;
/