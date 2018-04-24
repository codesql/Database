-- how is pga condition looks like
- what is the passthru
select name, value from v$sysstat where name like  'workarea executions%';

-- what do I have currently.
-- while on it, look at cache hits as well.
set lines 150;
col name format a50;
select * from v$pgastat;

-- what using all my pga.
select pid, program, pga_used_mem, pga_alloc_mem, pga_freeable_mem, pga_max_mem from v$process;

