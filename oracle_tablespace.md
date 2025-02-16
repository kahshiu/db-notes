- Once installed oracle database, you'll need to create tablespace so you can have better control of the databasefile
- You can create script tablespace using script below:
    ```
    CREATE TABLESPACE my_tablespace
    -- NOTE: if you're using docker container, it should be a PATH available within the container
    -- DATAFILE '/opt/oracle/oradata/my_tablespace.dbf' -- for linux base filesystem
    DATAFILE 'c:\users\Documents\mydatbase\my_tablespace.dbf' -- for windows base filesystem
    SIZE 100M
    AUTOEXTEND ON
    NEXT 10M
    MAXSIZE UNLIMITED;
    ```
- You can create user
    ```
    CREATE USER hello_user
    IDENTIFIED BY "HelloPassword"
    DEFAULT TABLESPACE my_tablespace 
    ```
- You change your password using script below:
    ```
    ALTER USER hello_user
    IDENTIFIED BY "NewPassword"
    ```