use vcdb
select 'alter index ' +  ind.name + ' on ' + OBJECT_NAME(ind.OBJECT_ID) + ' reorganize;' from sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, NULL) indexstats INNER JOIN sys.indexes ind  ON ind.object_id = indexstats.object_id AND ind.index_id = indexstats.index_id
WHERE indexstats.avg_fragmentation_in_percent > 70  ORDER BY indexstats.avg_fragmentation_in_percent DESC;

##########################################################
alter index VPXI_EVENT_EVENT_TYPE on VPX_EVENT reorganize;                                                                                                                                                                                                                                  
alter index VPX_EVENT_ARG_F1 on VPX_EVENT_ARG reorganize;                                                                                                                                                                                                                                   
alter index PK_VPX_DBM_COUNTER_VALUE on VPX_DBM_COUNTER_VALUE reorganize;                                            
