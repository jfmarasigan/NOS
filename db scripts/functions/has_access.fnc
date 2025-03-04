create or replace FUNCTION     has_access (
	p_user_name 		npm009.user_name%TYPE,
	p_module_id 		npm011.module_id%TYPE,
	p_component_id 		npm012.component_id%TYPE
)
RETURN VARCHAR2
AS
	v_with_access VARCHAR2(1) := 'N';
BEGIN
	SELECT CASE WHEN EXISTS (SELECT NULL
							   FROM npm009 a,
							        npt010 b,
							        npm012 c,
							        npm011 d
							  WHERE a.user_id = b.user_id
							    AND b.component_id = c.component_id
							    AND c.module_id = d.module_id
							    AND a.user_name = p_user_name
							    AND d.module_id = p_module_id
							    AND c.component_id = p_component_id)
				THEN 'Y'
				ELSE 'N'
				END
	  INTO v_with_access
	  FROM dual;

	RETURN v_with_access;
END has_access;
/