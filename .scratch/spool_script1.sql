set termout off
set verify off


-- From: https://stackoverflow.com/questions/13474899/default-value-for-paramteters-not-passed-sqlplus-script
-- and: http://vbegun.blogspot.com/2008/04/on-sqlplus-defines.html
-- Allow for optional value of 2
column 1 new_value 1
column 2 new_value 2
select '' "1", '' "2" 
from dual 
where rownum = 0;

define 1
define 2

define FILE_NAME = "&1"
define TABLE_NAME = "&2"

set termout on
set serveroutput on
begin
  dbms_output.put_line ( 'File name: &FILE_NAME' );
  dbms_output.put_line ( 'Table name: &TABLE_NAME' );
  dbms_output.put_line ( '------------------' );
end;
/
set serveroutput off

set term off
set feed off
spool &FILE_NAME.txt

select * from &TABLE_NAME;

spool off