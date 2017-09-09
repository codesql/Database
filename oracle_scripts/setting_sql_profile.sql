-- extracted from Oracle doc, just for my convinient.
COLUMN category FORMAT a10
COLUMN sql_text FORMAT a20

SELECT NAME, SQL_TEXT, CATEGORY, STATUS FROM  DBA_SQL_PROFILES;

NAME			       SQL_TEXT 	    CATEGORY   STATUS
------------------------------ -------------------- ---------- --------
SYS_SQLPROF_013f688da86d0001	SELECT sc.stat_id,  DEFAULT    ENABLED
			       d.device_name, sm.sa
			       mple_time,   sm.samp
			       le_interval, st.stat



DECLARE
  my_sqlprofile_name VARCHAR2(30);
BEGIN
  my_sqlprofile_name := DBMS_SQLTUNE.ACCEPT_SQL_PROFILE ( 
    task_name    => 'STA_SPECIFIC_EMP_TASK'
,   name         => 'my_sql_profile'
,   profile_type => DBMS_SQLTUNE.PX_PROFILE
,   force_match  => true 
);
END;
/
