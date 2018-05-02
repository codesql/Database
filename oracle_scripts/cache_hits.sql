--https://docs.oracle.com/cd/B19306_01/server.102/b14211/memory.htm#i36899
--Use the following query to monitor the statistics in the V$ROWCACHE view over a period of time while your application is running. The derived column PCT_SUCC_GETS can be considered the item-specific hit ratio:

column parameter format a21
column pct_succ_gets format 999.9
column updates format 999,999,999

SELECT parameter
     , sum(gets)
     , sum(getmisses)
     , 100*sum(gets - getmisses) / sum(gets)  pct_succ_gets
     , sum(modifications)                     updates
  FROM V$ROWCACHE
 WHERE gets > 0
 GROUP BY parameter;
