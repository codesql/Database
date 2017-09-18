--ideally, there should not be WAITING state on events for Enqueue and SQL*Net message from client (network).
-- SQL* is waiting for network, poor network or client side issue. Possible waiting for the client.
-- ENQ is it is waiting to lock a row for another seesion that had it.

select sid, state, wait_time/100 "wait time in seconds", event from v$session where event like 'SQL*%' or event like 'enq%' and state ='WAITING'

The following are NOT issue.
SQL> select sid, state, wait_time/100 "wait time in seconds", event from v$session where event like 'SQL*%' or event like 'enq%' and state ='WAITING' ;

       SID STATE	       wait time in seconds   EVENT
---------- ------------------- -------------------- ----------------------------------------------------------------
	15 WAITED KNOWN TIME		       55.3    SQL*Net message from client
	19 WAITED KNOWN TIME		      55.35    SQL*Net message from client
       138 WAITED KNOWN TIME		      55.24    SQL*Net message from client
       264 WAITED KNOWN TIME		      55.25    SQL*Net message from client
       265 WAITED SHORT TIME		       -.01    SQL*Net message to client
       376 WAITED KNOWN TIME		      55.23    SQL*Net message from client

6 rows selected.

SQL> 
