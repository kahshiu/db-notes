## Using system prompt and taking user inputs (variable substitution)
1. You can print a message on user screen
    - `prompt 'Hello, this is report generator.'`
2. You can also take user inputs and slot them into your command
    - Assume the following command, it takes `&max` as its argument

        `select * from orders where rownum <= &max`
    - This will immediately pop input reader in next line, if `&max` is not declared
    - You can ask user to slot in `&max`

        ```
        accept max number format 9999 prompt 'Enter the max records to print: '
        select * from orders where rownum <= &max
        ```
3. Write script into sql file `my_prompt.sql` and execute it using `@my_prompt.sql`; 
    ```
    prompt 'Hello, this is report generator.'
    accept max number format 9999 prompt 'Enter the max records to print: '
    select * from orders where rownum <= &max;
    ```
4. For user inputs, you should use `&value` or `&&value`.
5. `&value` or `&&value` inputs are typically accepted as strings.
6. Difference being `&value` is immediately discarded if not used, `&&value` will persist throughout your session.
6. You can try to implement a format checker using `accept`, but system will store them as string.
7. When applying &value or &&value in sql scripts, you'll probably need to cast then into proper datatypes.
    ```
    -- You can use the following:
    accept mydate timestamp prompt 'Enter a date to use in filter: '
    select * from orderdetails where orderdate <= to_date('&mydate', 'YYYY-MM-DD');
    ```
8. You can explicity declare values to substitute too
    ```
    define myvar = 222;
    ```

## Using variable binding
You just saw variable substitution explained above. There's also variable bindings. Usecase typically happen in stored procedures/ ad hoc scripts

```
-- using common variables in sql script
variable inputordernumber number = 100
select * from orderdetails where ordernumber = :inputordernumber

-- using in adhoc scripts
variable inputordernumber number
begin
    :inputordernumber := 1;
    -- continue with usage in script 
end;
```




