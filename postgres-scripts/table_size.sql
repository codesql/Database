SELECT nspname || '.' || relname AS "relation", pg_size_pretty(pg_total_relation_size(C.oid)) AS "total_size" 
 FROM pg_class C LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace) WHERE nspname NOT IN ('pg_catalog', 'information_schema') 
 AND C.relkind <> 'i' AND nspname !~ '^pg_toast' ORDER BY pg_total_relation_size(C.oid) DESC LIMIT 20; 


Example

        relation        | total_size
------------------------+------------
 vc.vpx_event_arg_65    | 17 GB
 vc.vpx_event_arg_61    | 13 GB
 vc.vpx_event_65        | 8770 MB
 vc.vpx_event_61        | 6632 MB
 vc.vpx_event_arg_66    | 269 MB
 vc.vpx_event_66        | 134 MB
 vc.vpx_topn_past_month | 13 MB
 vc.vpx_topn_past_week  | 13 MB
 vc.vpx_event_arg_57    | 11 MB
 vc.vpx_event_arg_39    | 10 MB
 vc.vpx_event_arg_58    | 10 MB
 vc.vpx_event_arg_59    | 10216 kB
 vc.vpx_hist_stat3_1    | 10168 kB
 vc.vpx_event_arg_41    | 10144 kB
 vc.vpx_event_arg_47    | 10120 kB
 vc.vpx_event_arg_55    | 10080 kB
 vc.vpx_event_arg_53    | 10048 kB
 vc.vpx_event_arg_51    | 10032 kB
 vc.vpx_event_arg_43    | 10016 kB
 vc.vpx_event_arg_37    | 10008 kB
(20 rows) 
