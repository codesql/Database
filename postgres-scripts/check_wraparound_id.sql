--The numbers should not be close to 4 billion or 2^32. The number should be fairly close to pg control data as well. If it is close, perform vacuum full.


select txid_current(), txid_current_snapshot();

SELECT max(age(datfrozenxid)) FROM pg_database;
