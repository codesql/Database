The numbers should not be close to 4 billion or 2^32. If it is close, perform vacuum full.

select txid_current(), txid_current_snapshot();

SELECT max(age(datfrozenxid)) FROM pg_database;
