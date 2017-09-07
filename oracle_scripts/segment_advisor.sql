
-- too much row chaining
-- small table with few rows but poor responds time and poorly performing query accessing that table.
--take a look at the segment advisor

select
   tablespace_name,
   segment_owner,
   segment_name,
   segment_type,
   allocated_space,
   used_space,
   reclaimable_space
from ( select * from   table(dbms_space.asa_recommendations('TRUE','TRUE','ALL')));

select
   tablespace_name,
   allocated_space,
   used_space reclaimable_space
from
   table(dbms_space.asa_recommendations('TRUE', 'TRUE', 'ALL'));

select 
 'Segment Advice ----------------------' || chr(10) ||
 'TABLESPACE_NAME : ' || tablespace_name    || chr(10) ||
 'SEGMENT_OWNER   : ' || segment_owner      || chr(10) ||
 'SEGMENT_NAME    : ' || segment_name       || chr(10) ||
 'ALLOCATED_SPACE : ' || allocated_space    || chr(10) ||
 'RECLAIMABLE_SPACE :'||reclaimable_space  || chr(10) ||
 'RECOMMENDATIONS :' ||recommendations     || chr(10) ||
 'SOLUTION 1      :' ||c1                  || chr(10) ||
 'SOLUTION 2      :' ||c2                  || chr(10) ||
 'SOLUTION 3      :' ||c3 Advice
from Table(dbms_space.asa_recommendations('TRUE','FALSE','FALSE'));
 
