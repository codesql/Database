
vcdb=# select pg_relation_filepath('vpx_alarm_seq');
 pg_relation_filepath 
----------------------
 base/16384/16493
(1 row)

vcdb=# \ds+ vpx_alarm_seq
                          List of relations
 Schema |     Name      |   Type   | Owner |    Size    | Description 
--------+---------------+----------+-------+------------+-------------
 vpx    | vpx_alarm_seq | sequence | vc    | 8192 bytes | 
(1 row)

vcdb=# \ds vpx_alarm_seq
             List of relations
 Schema |     Name      |   Type   | Owner 
--------+---------------+----------+-------
 vpx    | vpx_alarm_seq | sequence | vc
(1 row)


--select from infomation_schema.sequences view
vcdb=# SELECT * FROM information_schema.sequences where sequence_name='vpx_alarm_seq';

sequence_catalog | sequence_schema | sequence_name | data_type | numeric_precision | numeric_precision_radix | numeric_scale | start_value | minimum_value |    maximum_value    | increment | cycle_option 
------------------+-----------------+---------------+-----------+-------------------+-------------------------+---------------+-------------+---------------+---------------------+-----------+--
 vcdb             | vpx             | vpx_alarm_seq | bigint    |                64 |                       2 |             0 | 1           | 1             | 9223372036854775807 | 100       | NO
(1 row)

-- pg_sequences available in postgresql 10.

-- Select the sequence directly

vcdb=# select * from vpx_alarm_seq;
 sequence_name | last_value | start_value | increment_by |      max_value      | min_value | cache_value | log_cnt | is_cycled | is_called 
---------------+------------+-------------+--------------+---------------------+-----------+-------------+---------+-----------+-----------
 vpx_alarm_seq |        601 |           1 |          100 | 9223372036854775807 |         1 |           1 |       0 | f         | t
(1 row)

