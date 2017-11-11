- generally, output should be fairly clean. Tables with constant flush and fill might see something.
select chain_cnt, round(chain_cnt/num_rows*100,2), avg_row_len, pct_free, pct_used from dba_tables where table_name = '&tablename';

-Just to look at row chains from another perspective
select table_name from dba_tables where table_name like '%VPX_%' and chain_cnt != 0;
