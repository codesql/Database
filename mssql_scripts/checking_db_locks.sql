#tons of IX probably bad.
select resource_type, resource_subtype,   request_mode FROM sys.dm_tran_locks WHERE request_session_id = @@spid;
