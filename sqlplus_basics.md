## Introduction to common sqlplus commands:

- **show** - display current user 
    ```
    SQL> show user
    USER is "SYS"
    SQL>

    ```
- **connect** 
    - quickly logon to another account
    - NOTE: [username]/[password]@[host]/[database]
    - for sys acccount, please connect `as sysdba`
    - for regular account please connect to specific database

    ```
    connect sys/test123@localhost:1521 as sysdba
    connect student1/password123@localhost:1521/xe
    ```

- **disconnect** 
    - logoff from current user 
    - this will cause sqlplus to be "user-less" until next successful logon

- **host**
    - bring command window to host terminal 
    - to return to sqlplus, type "exit" in host terminal

- **clear screen, OR shorthand: cl scr**
    - clear screen for sqlplus
    - alternatively, use the host terminal to clear 
    ``` 
    host clr     ## for windows
    host clear   ## for linux
    ```

- **/** - rerun previous command

- **pause** - pause on every result page

- **help set**
    - show full list of variables to set

## Common variables to set
- set pagesize 500 - setting 500 rows per page
- set linesize 500 - setting line width t0 500 chars
- show underline - show current char used for heading underline
- set underline '=' - use '=' instead of the default '-' for underline
- set heading on
- set heading off
- show heading - show if heading is on or off (column name on top of each page)
- show timing - show time elapsed for last query
- exit - shut down sqlplus and return host terminal

## Exotic commands (not so frequently used)
- **sqlprompt**
```
SQL> show sqlprompt
sqlprompt "SQL>"
SQL> set sqlprompt "Hello> "
Hello> _
```

- **sqlterminator**
customise terminator, default is `;`
```
SQL> show sqlterminator
sqlterminator ";"
SQL> set sqlterminator ':';
SQL> select 1 from dual:
```

- **feedback on/ off**
```
CUSTOMERNAME
--------------------------------------------------
Atelier graphique
Signal Gift Stores
Australian Collectors, Co.

3 rows selected. <=== this is select query feedback, typically appear when returned recordset exceeds a certain number. To ALWAYS turn this on, `set feedback on`
```

- **verify on/off**
```
SQL> select customername from customers where rownum <= &no;
Enter value for no: 4
old   1: select customername from customers where rownum <= &no <== this is due to verify ON
new   1: select customername from customers where rownum <= 4 <== this is due to verify ON

CUSTOMERNAME
--------------------------------------------------
Atelier graphique
Signal Gift Stores
Australian Collectors, Co.
La Rochelle Gifts

4 rows selected.
```


