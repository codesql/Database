select relname as TABLE_NAME,reltuples AS ROW_NUMBERS FROM pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
WHERE nspname NOT IN ('pg_catalog', 'information_schema') and relname ='table_name_here' AND relkind='r'
ORDER BY reltuples DESC;


select relname as TABLE_NAME,reltuples AS ROW_NUMBERS FROM pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
WHERE nspname NOT IN ('pg_catalog', 'information_schema') and relname ='vpx_event_arg' AND relkind='r'
ORDER BY reltuples DESC;

  table_name   | row_numbers
---------------+-------------
 vpx_event_arg | 5.38186e+06
(1 row)



#### VCSA 6.7, vpx_event table become a view and previous vpx_event table because partitioned tables.

 select relname as TABLE_NAME,reltuples AS ROW_NUMBERS FROM pg_class C
 LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
 WHERE nspname NOT IN ('pg_catalog', 'information_schema') and relname like 'vpx_event%' AND relkind='r' 
 ORDER BY reltuples DESC;
 
 VCDB-#  ORDER BY reltuples DESC;
         table_name         | row_numbers
----------------------------+-------------
 vpx_event_arg_38           |        1958
 vpx_event_38               |         743
 vpx_event_arg_44           |         443
 vpx_event_arg_43           |         393
 vpx_event_arg_41           |         391
 vpx_event_arg_42           |         391
 vpx_event_arg_45           |         389
 vpx_event_arg_48           |         345
 vpx_event_arg_54           |         341
 vpx_event_arg_55           |         341
 vpx_event_arg_56           |         341
 vpx_event_arg_57           |         341
 vpx_event_arg_58           |         341
 vpx_event_arg_59           |         341
 vpx_event_arg_61           |         341
 vpx_event_arg_62           |         341
 vpx_event_arg_63           |         341

 
 
