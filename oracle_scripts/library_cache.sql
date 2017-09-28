- checking library cache condition
- reloads - reparsing happens due to aged out cached SQL. Expectation - near 0.
- invalidation - lib cache invalidated and have to be reparsed, Expectation should be near 0.

set lines 150;
SELECT namespace, pins, pinhits, reloads, invalidations  FROM V$LIBRARYCACHE  ORDER BY namespace;

NAMESPACE							       PINS    PINHITS	  RELOADS INVALIDATIONS
---------------------------------------------------------------- ---------- ---------- ---------- -------------
ACCOUNT_STATUS								  0	     0		0	      0
APP CONTEXT								 43	    20		0	      0
AUDIT POLICY							      92542	 92377		0	      0
BODY								    3536658    3531152	      870	      0
CLUSTER 							     138849	138387		0	      0
DBINSTANCE								  0	     0		0	      0
DBLINK									  0	     0		0	      0
DIRECTORY							       6831	  6727		0	      0
EDITION 							    1363551    1363441		3	      0
INDEX								    1320472    1006199	    23455	      0
OBJECT ID								  0	     0		0	      0

NAMESPACE							       PINS    PINHITS	  RELOADS INVALIDATIONS
---------------------------------------------------------------- ---------- ---------- ---------- -------------
PDB									  0	     0		0	      0
QUEUE									160	   109	       22	      0
RULE									 10	     3		2	      0
RULESET 								 61	    45		0	      0
SCHEMA									  0	     0		0	      9
SQL AREA							   77220354   75267198	   402683	 293632
SQL AREA BUILD								  0	     0		0	      0
SQL AREA STATS							     741034	230927		0	      0
SUBSCRIPTION								  2	     0		0	      0
SUMMARY 								  6	     4		1	      0
TABLE/PROCEDURE 						   15472802   14753968	   282442	     53

NAMESPACE							       PINS    PINHITS	  RELOADS INVALIDATIONS
---------------------------------------------------------------- ---------- ---------- ---------- -------------
TEMPORARY INDEX 						      39502	     0	    16010	      0
TEMPORARY TABLE 						     108282	     0	    88996	      0
TRIGGER 							     493120	490917		0	      0
USER PRIVILEGE								 84	    55		0	      3
XDB CONFIG								  8	     7		0	      0
XML SCHEMA								 81	    72		0	      0

28 rows selected.
