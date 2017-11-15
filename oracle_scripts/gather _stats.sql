--regather stats for vc enter
--schema
set echo on
begin
dbms_stats.gather_schema_stats (
          ownname => 'VC51', 
          cascade => true,
          estimate_percent => dbms_stats.auto_sample_size
          );
end;
--gather table
execute dbms_stats.gather_table_stats(
          ownname => 'VC51', 
          tabname =>  'VPX_HIST_STAT1_1', 
          estimate_percent => DBMS_STATS.AUTO_SAMPLE_SIZE, 
          method_opt => 'FOR ALL COLUMNS SIZE AUTO'
          );
