ttile "System Statistic"
set lines 150;
col name format a60;
col "Class Type" format a10;
select STATISTIC#, name, 
 (case class
  when 1 then 'User'
  when 2 then 'Redo'
  when 4 then 'Enqueue'
  when 8 then 'Cache'
  when 16 then 'OS'
  when 32 then 'RAC'
  when 64 then 'SQL'
  when 128 then 'Debug'
  end) as "Class Type",
  value  
 from V$SYSSTAT where value !=0;
