SET linesize 120
SET Pagesize 20

alter session set nls_date_format = 'DD-MM-YYYY';

set termout off

column curr_year new_value title_year
select to_char(sysdate, 'YYYY') as curr_year from dual;

set termout on

set colsep '|'
set recsep wrapped
set recsepchar '-'
set underline '='

ttitle -
    center 'Player Attributes Levelup History, ' title_year skip 1-
    center '======================================' skip 2-
    left 'Date: ' _date skip 1-
    left 'Page: ' sql.pno right 'Total Pages: 2'  skip 2
column playerclass format A20 heading 'Class|Type'
column playername format A20 heading 'Player|Name'
column attributename format A20 heading 'Attribute'
column attributescore format 999 heading 'Attribute|Value'
column playercreated format A20 heading 'Player|Creation'

break on playerclass on playername

select 'barbarian' as playerclass, 'john doe'  as playername, 'strength'     as attributename,  2 as attributescore, to_date('2022-01-03','yyyy-mm-dd') as playercreated from dual union
select 'barbarian' as playerclass, 'john doe'  as playername, 'strength'     as attributename, 20 as attributescore, to_date('2022-02-20','yyyy-mm-dd') as playercreated from dual union
select 'barbarian' as playerclass, 'maximus'   as playername, 'dexterity'    as attributename, 25 as attributescore, to_date('2022-04-25','yyyy-mm-dd') as playercreated from dual union
select 'barbarian' as playerclass, 'maximus'   as playername, 'dexterity'    as attributename, 25 as attributescore, to_date('2022-04-25','yyyy-mm-dd') as playercreated from dual union
select 'barbarian' as playerclass, 'maximus'   as playername, 'intelligence' as attributename, 20 as attributescore, to_date('2022-04-25','yyyy-mm-dd') as playercreated from dual union
select 'barbarian' as playerclass, 'ben'       as playername, 'dexterity'    as attributename, 25 as attributescore, to_date('2022-04-25','yyyy-mm-dd') as playercreated from dual union
select 'barbarian' as playerclass, 'ben'       as playername, 'dexterity'    as attributename, 25 as attributescore, to_date('2022-04-25','yyyy-mm-dd') as playercreated from dual union
select 'barbarian' as playerclass, 'ben'       as playername, 'intelligence' as attributename, 20 as attributescore, to_date('2022-04-25','yyyy-mm-dd') as playercreated from dual union
select 'magician'  as playerclass, 'john doe2' as playername, 'strength'     as attributename, 30 as attributescore, to_date('2022-09-09','yyyy-mm-dd') as playercreated from dual union
select 'magician'  as playerclass, 'john doe2' as playername, 'strength'     as attributename, 30 as attributescore, to_date('2022-09-09','yyyy-mm-dd') as playercreated from dual union
select 'magician'  as playerclass, 'john doe2' as playername, 'dexterity'    as attributename, 15 as attributescore, to_date('2022-12-30','yyyy-mm-dd') as playercreated from dual union
select 'magician'  as playerclass, 'john doe2' as playername, 'dexterity'    as attributename, 15 as attributescore, to_date('2022-03-03','yyyy-mm-dd') as playercreated from dual union
select 'magician'  as playerclass, 'john doe2' as playername, 'intelligence' as attributename, 10 as attributescore, to_date('2022-04-13','yyyy-mm-dd') as playercreated from dual union 
select 'magician'  as playerclass, 'john doe2' as playername, 'intelligence' as attributename, 20 as attributescore, to_date('2022-12-30','yyyy-mm-dd') as playercreated from dual union
select 'magician'  as playerclass, 'john doe2' as playername, 'intelligence' as attributename, 15 as attributescore, to_date('2022-03-03','yyyy-mm-dd') as playercreated from dual union
select 'magician'  as playerclass, 'john doe2' as playername, 'intelligence' as attributename, 10 as attributescore, to_date('2022-04-13','yyyy-mm-dd') as playercreated from dual; 