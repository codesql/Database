--check which stsatistics are enable at what level

select statistics_name, activation_level from v$statistics_level order by 2; 

SQL> select statistics_name, activation_level from v$statistics_level order by 2; 

STATISTICS_NAME 						 ACTIVAT
---------------------------------------------------------------- -------
Plan Execution Statistics					 ALL
Global Cache CPU Statistics					 ALL
Timed OS Statistics						 ALL
Segment Level Statistics					 TYPICAL
PGA Advice							 TYPICAL
Shared Pool Advice						 TYPICAL
Modification Monitoring 					 TYPICAL
Longops Statistics						 TYPICAL
Bind Data Capture						 TYPICAL
Ultrafast Latch Statistics					 TYPICAL
Threshold-based Alerts						 TYPICAL

STATISTICS_NAME 						 ACTIVAT
---------------------------------------------------------------- -------
Global Cache Statistics 					 TYPICAL
Active Session History						 TYPICAL
Undo Advisor, Alerts and Fast Ramp up				 TYPICAL
Streams Pool Advice						 TYPICAL
Time Model Events						 TYPICAL
Plan Execution Sampling 					 TYPICAL
Automated Maintenance Tasks					 TYPICAL
Automatic DBOP Monitoring					 TYPICAL
SQL Monitoring							 TYPICAL
Adaptive Thresholds Enabled					 TYPICAL
V$IOSTAT_* statistics						 TYPICAL

STATISTICS_NAME 						 ACTIVAT
---------------------------------------------------------------- -------
Timed Statistics						 TYPICAL
OLAP row load time precision					 TYPICAL
Buffer Cache Advice						 TYPICAL
MTTR Advice							 TYPICAL

26 rows selected.
