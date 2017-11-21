-- sql server isn't so much deadlocks as it auto killed most of the time.

user vcdb
sys.dm_exec_requests;


kill pid;
