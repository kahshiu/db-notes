prompt 'Hello, this is report generator.';
accept max number prompt 'Enter the max records to print: ';
select * from orders where rownum <= &max;