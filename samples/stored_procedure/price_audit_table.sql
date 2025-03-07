drop table Price_Audit;

create table Price_Audit
(  In_Product_Code	varchar2(20),
   v_productname	varchar(70),
   v_oldprice		number(7,2),
   v_newprice		number(7,2),
   user_name		varchar2(20),
   date_change	date
);
