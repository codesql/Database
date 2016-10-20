/*
Author: Kay Liew
Date: May 13, 2016
Description: similar to Oracle VPOC.
Instruction to use:
SQLCMD -i d:\vpsc.sql -o d:\vpsc.diag
-assuming script stores in d drive.
*/


print  "#####################################################"
print  "          vCenter Proactive SQL Server Check         "
print  "#####################################################"
use [VCDB]

select @@version , current_user ;

select * from vpx_version;

exec sp_MSreplcheck_subscribe;

print  "#####################################################"
print "                  Transaction Logs                    "
print  "#####################################################"

DBCC SQLPERF (LOGSPACE )

print "vCenter Partition Views and counts"
SELECT cast (sc. name+'.' +ta. name AS varchar( 25)) as 'Table Name'
,cast (SUM (pa. rows) as varchar(10)) as Rows
FROM sys .tables ta
INNER JOIN sys .partitions pa
ON pa .OBJECT_ID = ta .OBJECT_ID
INNER JOIN sys .schemas sc
ON ta .schema_id = sc .schema_id
WHERE ta .is_ms_shipped = 0
AND pa .index_id IN ( 1, 0 )
AND ta .name like 'vpx_hist%'
GROUP BY sc .name, ta. name
ORDER BY SUM (pa. rows) DESC;

print  "#####################################################"
print  "                   Database Size                     "
print  "#####################################################"

SELECT cast(DB_NAME(database_id) as varchar(20)) AS "Database Name",
       cast(Name as varchar(25)) AS "Logical Name",
       cast(Physical_Name as varchar (100)) as "Datafiles Path",
       (size * 8) / 1024 as "Size in MB",
	   (size * 8) / 1024/ 1024 as "Size in Gig"
FROM sys.master_files;



print  "#####################################################"
print "          vCenter other bloated tables counts         "
print  "#####################################################"

SELECT cast (sc. name+'.' +ta. name AS varchar( 25)) as 'Table Name'
,cast(SUM (pa. rows) as varchar(7)) as Rows
FROM sys .tables ta
INNER JOIN sys .partitions pa
ON pa .OBJECT_ID = ta .OBJECT_ID
INNER JOIN sys .schemas sc
ON ta .schema_id = sc .schema_id
WHERE ta .is_ms_shipped = 0
AND pa .index_id IN ( 1, 0 )
AND ta .name in ( 'VPX_STAT_COUNTER','VPX_EVENT' , 'VPX_EVENT_ARG','VPX_TASK' ,'VPX_TEXT_ARRAY')
GROUP BY sc .name, ta. name
ORDER BY SUM (pa. rows) DESC;

print "#####################################################"
print "                Hist Stat view counts                "
print "#####################################################"


SELECT (SELECT   COUNT(*) FROM VPX_HIST_STAT1) AS VPX_HIST_STAT1 ,
(SELECT COUNT(*) FROM VPX_HIST_STAT2 ) AS VPX_HIST_STAT2,
(SELECT COUNT(*) FROM VPX_HIST_STAT3 ) AS VPX_HIST_STAT3,
(SELECT COUNT(*) FROM VPX_HIST_STAT4 ) AS VPX_HIST_STAT4;

print  "#####################################################"
print  "                  Active Sessions                    "
print  "#####################################################"


SELECT
    sys. dm_exec_sessions. session_id, cast(HOST_NAME as varchar(15)) as 'Host Name', cast(program_name as varchar(10)) as 'Program Name', cast(login_name as varchar(40)) as 'Login Name', cast(status as varchar(9)) as Status,
	cpu_time AS cpu_time_in_ms ,
    total_elapsed_time AS total_elapsed_time_in_ms ,
    (memory_usage * 8 ) AS memory_usage_in_kb ,
    (user_objects_alloc_page_count * 8 ) AS user_objects_alloc_in_kb ,
    (internal_objects_alloc_page_count * 8 ) AS internal_objects_alloc_in_kb ,
    CASE is_user_process
         WHEN 1      THEN 'user'
         WHEN 0      THEN 'system'
    END          AS session_type ,
    row_count row_count
FROM
    sys. dm_db_session_space_usage
INNER JOIN sys. dm_exec_sessions ON sys . dm_db_session_space_usage .session_id = sys.dm_exec_sessions . session_id
AND status != 'sleeping'
ORDER BY row_count DESC;

print "#####################################################"
print "                   vCenter Procedures                "
print "#####################################################"
select cast(SPECIFIC_NAMe as varchar(30)) as test ,routine_type , created , last_altered from information_schema. routines where routine_type = 'PROCEDURE';

print  "#####################################################"
print  "                        Jobs                         "
print  "#####################################################"

select job_id , name , originating_server , case enabled
when 1 then 'Yes'
when 0 then 'No'
end as Enabled,
description,
owner_sid,
date_created as 'Job Created' from msdb.dbo .sysjobs_view;


select top 20 * from msdb.dbo.sysjobhistory order by run_date asc;

print  "#####################################################"
print "                     END OF REPORT                    "
print  "#####################################################"
