  -- script vc6.5 where event and event args partitioned. 
  -- or develope an explicit cursor 
  
  select 'truncate table ' || table_name || ';' from user_tables where table_name like 'VPX_EVENT%';
  
  'TRUNCATETABLE'||TABLE_NAME||';'
----------------------------------------------
truncate table VPX_EVENT_ARG_1;
truncate table VPX_EVENT_ARG_2;
truncate table VPX_EVENT_ARG_3;
truncate table VPX_EVENT_ARG_4;
truncate table VPX_EVENT_ARG_5;
truncate table VPX_EVENT_ARG_6;
truncate table VPX_EVENT_ARG_7;
truncate table VPX_EVENT_ARG_8;
truncate table VPX_EVENT_ARG_9;
truncate table VPX_EVENT_ARG_10;
truncate table VPX_EVENT_ARG_11;
truncate table VPX_EVENT_ARG_12;
truncate table VPX_EVENT_ARG_13;
