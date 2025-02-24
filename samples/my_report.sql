SET linesize 120
SET Pagesize 20

alter session set nls_date_format = 'DD-MM-YYYY';

set termout off

column curr_year new_value title_year
select to_char(sysdate, 'YYYY') as curr_year from dual;

set termout on

set colsep '|'
set underline '='

ttitle -
    center 'Happy Winners Team Members, ' title_year skip 1-
    center '======================================' skip 2-
    left 'Date: ' _date skip 1-
    left 'Page: ' sql.pno right 'Total Pages: 2'  skip 2
column playername format A20 heading 'Player Name'
column playerstrength heading 'Player|Strength'
column playerpocket format $99.99 heading 'Player|Pocket'
column playercreated heading 'Player|Creation'

select 'john doe' as playername, 2 as playerstrength, 3.50 as playerpocket, to_date('2022-01-03','yyyy-mm-dd') as playercreated from dual union
select 'john doe1' as playername, 21 as playerstrength, 13.50 as playerpocket, to_date('2022-02-20','yyyy-mm-dd') as playercreated from dual union
select 'john doe2' as playername, 24 as playerstrength, 43.50 as playerpocket, to_date('2022-04-25','yyyy-mm-dd') as playercreated from dual union
select 'john doe3' as playername, 32 as playerstrength, 63.50 as playerpocket, to_date('2022-09-09','yyyy-mm-dd') as playercreated from dual union
select 'john doe4' as playername, 52 as playerstrength, 39.50 as playerpocket, to_date('2022-12-30','yyyy-mm-dd') as playercreated from dual union
select 'john doe5' as playername, 62 as playerstrength, 34.50 as playerpocket, to_date('2022-03-03','yyyy-mm-dd') as playercreated from dual union
select 'john doe6' as playername, 102 as playerstrength, 0.50 as playerpocket, to_date('2022-04-13','yyyy-mm-dd') as playercreated from dual; 