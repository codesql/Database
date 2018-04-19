--kl
--get rid of temp objects.

set serveroutput on
declare 
cursor cur_obj is
select object_name, object_type from user_objects where object_name like '%TMP';
  var_obj cur_obj%ROWTYPE;
begin 
open cur_obj;
loop
fetch cur_obj into var_obj;
exit when cur_obj%NOTFOUND;
dbms_output.put_line('drop '  ||   var_obj.object_type  || ' ' || var_obj.object_name || ';');
end loop;
exception
when no_data_found
then 
CLOSE cur_obj;
end;
/
--output
drop TABLE VCI_STORED_PROC_INOUT_TMP;
drop INDEX UK_VCI_STORED_PROC_INPUT_TMP;
