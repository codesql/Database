-- ratio should be fairly low
select d.value as disk, m.value as memory, (d.value/m.value)*100 as ratio from v$sysstat m, v$sysstat d where m.name = 'sorts (memory)' and d.name ='sorts (disk)';

--watch out for multipass
--typically issue with respond time with large queries sorting
--increase PGA_AGGREGATE_TARGET


select name, value from v$sysstat where name like 'workarea executions%';
