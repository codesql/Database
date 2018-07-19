## informatin hidden in information_schema not in catalog. Should build a view for pg_columns.

select column_name from information_schema.columns where table_name='vpx_version';

  column_name
---------------
 ver_id
 version_value
(2 rows)

