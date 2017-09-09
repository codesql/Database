alter index VPXI_ENTITY_TYPE_ID monitoring usage;
Index altered.


--Oracle 11g
select * from v$object_usage;
INDEX_NAME		       TABLE_NAME		      MON USE START_MONITORING	  END_MONITORING
------------------------------ ------------------------------ --- --- ------------------- -------------------
VPXI_ENTITY_TYPE_I    VPX_ENTITY		    YES NO  09/09/2017 11:59:09


--Oracle12C. dba_object_usage is is new view in Oracle12C
col Index_Name format a20;
col table_name format a20;
col monitoring format a10;
col used format a10;

select * from v$object_usage;
INDEX_NAME	     TABLE_NAME 	  MONITORING USED	START_MONITORING    END_MONITORING
-------------------- -------------------- ---------- ---------- ------------------- -------------------
VPXI_ENTITY_TYPE_ID  VPX_ENTITY 	  YES	     NO 	09/09/2017 14:50:51

SQL> select index_name, table_name, monitoring, used from dba_object_usage;

INDEX_NAME	     TABLE_NAME 	  MONITORING USED
-------------------- -------------------- ---------- ----------
VPXI_ENTITY_TYPE_ID  VPX_ENTITY 	  YES	     NO
