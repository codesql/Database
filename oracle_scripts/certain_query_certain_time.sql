-- to track certain queries and looking at certain time.
-- I did not do whole lot of testing on the query reload or waits but this served me fine. For wait, looking into sessions. 
-- if details needed, setup auditing.

select a.sql_text, a.first_load_time from gv$sql a, gv$session b, gv$process p where b.sql_address = a.address AND b.paddr = p.addr and b.sql_hash_value= a.hash_value and a.sql_text like '%insert%';
