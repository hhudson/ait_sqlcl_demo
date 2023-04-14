SQL> help alias

SQL> alias list

SQL> alias list tables

------------------------------------------------------------------------------
SQL> db

SQL> set serveroutput on

SQL> alias db= begin dbms_output.put_line('hi'); end;
>  /

SQL> alias drop db
------------------------------------------------------------------------------

SQL> alias load alias/alias.xml

SQL> alias list debugsession

SQL> debugsession 100 1

SQL> alias list attachsession

