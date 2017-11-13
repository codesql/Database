--pga
- estimate extra bytes read/write and counts, consider hit ratio too.
show parameter pga;
select * from v$pga_target_advice;

-sga
-db_time
sho parameter sga;
select * from v$sga_target_advice
