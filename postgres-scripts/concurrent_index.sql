--rebuild index concurrently.
create index concurrently NEW_INDEX on TABLE_NAME (COLUMN NAME)
BEGIN;
DROP INDEX OLD_IND;
ALTER INDEX NEW_INDEX RENAME TO OLD_INDEX;
COMMIT;
