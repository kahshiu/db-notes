## formatting
- ttitle 
    - top title
    - includes date + page number
- btitle
    - bottom title 
- adjust pagesize 
    - increase rows per pagee
    - to reduce heading counts
    - NOTE: page rows includes title + heading row
- adjust linesize to adjust page width
- `column` 
    - to show all settings of column
    - will show `SP2-0045: * no COLUMN defined` when you have not defined any column
- make sure to `clear` visual items because they are tied to session and will clear on exiting session
    - ttitle, 
    - btitle, 
    - column
- string is left aligned by default
- numbers is right aligned by default
- set `recsep` wrapped - record seperator, `wrapped` or `on` or `off`
- set `recsepchar` "-"

- clear columns

## examples
- formatting title
    - `ttitle center "hello report" skip 1 left "antoher thing" right "ssss" skip 1 center "boom"`
        ```
                        hello report
        antoher thing								    ssss
                            boom

        ```
    - use `COL 6` or any other number to indent title line
    - `sql.pno` is used to print current page
    - unfortunately "total pages" is not available from system maintained value, need to calculate yourself
    - `_date` is used to print current date
    - use `-` to indicate your intention to break to next line (for long multi-line ttitle) 
- formatting number 
    - `column salary format 99,999.99 heading 'EmpSalary'`
- formatting text
    - `column firstname format a8`
    - column value reduce to 8 characters
    - choose `wrapped` or `truncated`
    - choose `justify left` or `justify right` or `justify center`
    - `heading` to change column name
        - `|` split column name into next text line, "Order|Date"
- inherit styling from another column
    - inherit from `REQURED_DATE` styling (via COLUMN command)
    - column `ORDER_DATE` like `REQUIRED_DATE` heading "Order Date"



### Reference Resources
- [formatting examples - Oracle](https://docs.oracle.com/database/121/SQPUG/ch_six.htm#SQPUG016)
- [formatting model - Oracle](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlqr/Format-Models.html#GUID-291CA766-0B7D-4336-954A-B8A23036F6ED)