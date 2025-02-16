Login using SqlPlus:
- Please use the following format 
    ```
    [username]/[password]@[hostname]:[port]/[databasename] as sysdba
    ```
- Note: `as sysdba` is only relevent if you login using `sys` account
- Examples:
    ```
    sqlplus sys/test123@localhost:1521/xe as sysdba
    sqlplus chongks/abc123@orcl:1521
    ```
- Given your username and password below:
    - username: SAT0800RDS01
    - password: SAT0800RDS01
    - host: orcl
    - then type the following:
    ```
    sqlplus SAT0800RDS01/SAT0800RDS01@orcl
    ```
- If you choose to type into prompt, please include hostname into password
    - when asked for username, type `SAT0800RDS01`
    - when asked for password, type `SAT0800RDS01@orcl`
    - prompt will not ask for hostname

- you can also change password using `password`
    ```
    SQL> password
    changing password for STUDENT1
    Old password:
    New password: 
    Retype ew password: _
    ```