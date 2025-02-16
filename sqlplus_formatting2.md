- column seperators
    ```
    show colsep
    set colsep "|"
    ```

- `autoprint` server outputs
    ```
    variable var1 number
    begin
        select 1 into :var1 from dual;
    end
    print var1
    ```
    In order to `autoprint` without needing statement of `print var1`, set `autoprint` on 

- output in html format
    ```
    show markup html on
    spool report.html
    select customername, creditlimit from customers where rownum <= 10>;
    spool off
    show markup html off
    ```

- enter multiple lines of sql separated by `;` command separator (default)
    - set `cmdsep` on