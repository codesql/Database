select pg_get_indexdef(indexrelid) from pg_index where indrelid::regclass::text = 'table_name_here';



Sample output: 
Description: This works sort of like Oracle DBMS_METADATA.GET_DDL Package


vcdb=# select indexrelid::regclass::text , indrelid::regclass, indisvalid, indisready from pg_index where indexrelid::regclass::text = 'pk_vpx_entity';
  indexrelid   |  indrelid  | indisvalid | indisready
---------------+------------+------------+------------
 pk_vpx_entity | vpx_entity | t          | t
(1 row)


vcdb=> select pg_get_indexdef(indexrelid) from pg_index where indrelid::regclass::text = 'vpx_entity';
                           pg_get_indexdef
----------------------------------------------------------------------
CREATE UNIQUE INDEX pk_vpx_entity ON vpx_entity USING btree (id)
CREATE INDEX vpx_entity_f1 ON vpx_entity USING btree (parent_id)
CREATE INDEX vpxi_entity_type_id ON vpx_entity USING btree (type_id)
(3 rows)


OR 

vcdb=# select * from pg_indexes where tablename = 'vpx_int_array';

schemaname |   tablename   |    indexname     | tablespace |                                  indexdef
------------+---------------+------------------+------------+-----------------------------------------------------------------------------
vpx        | vpx_int_array | vpx_int_array_f1 |            | CREATE INDEX vpx_int_array_f1 ON vpx_int_array USING btree (array_id)
vpx        | vpx_int_array | vpx_int_array_f2 |            | CREATE INDEX vpx_int_array_f2 ON vpx_int_array USING btree (type_id)
vpx        | vpx_int_array | vpx_int_array_m1 |            | CREATE INDEX vpx_int_array_m1 ON vpx_int_array USING btree (mo_type, mo_id)
(3 rows)
