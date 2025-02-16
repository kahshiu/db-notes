## Using system prompt and taking user inputs
1. You can print a message on user screen
    - `prompt 'Hello, this is report generator.'`
2. You can also take user inputs and slot them into your command
    - Assume the following command, it takes `&max` as its argument

        `select * from orders where rownum <= &max`
    - You can as user to slot in `&max`

        `accept max number format 9999 prompt 'Enter the max records to print: '`
3. Write script into sql file `my_prompt.sql` and execute it using `@my_prompt.sql`; 
    ```
    prompt 'Hello, this is report generator.'
    accept max number format 9999 prompt 'Enter the max records to print: '
    select * from orders where rownum <= &max;
    ```
