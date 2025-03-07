CREATE OR REPLACE PROCEDURE PRC_PRICE_INCR(In_Product_Code IN varchar2) IS 
	v_productname varchar2(70);
	v_oldprice number(7,2);
	v_newprice number(7,2);
BEGIN
-- GET THE PRODUCT PRICE
	SELECT ProductName, MSRP INTO v_productname, v_oldprice
        FROM PRODUCTS
        WHERE ProductCode = IN_Product_Code;

	v_newprice := round(v_oldprice *1.1,2);

-- UPDATE the record
	UPDATE PRODUCTS
	SET MSRP = v_newprice
	WHERE ProductCode = IN_Product_Code;

-- WRITE DATA TO THE PRICE_AUDIT TABLE   
	INSERT INTO Price_Audit VALUES(IN_Product_Code, v_productname, v_oldprice, v_newprice, USER, SYSDATE);

	DBMS_OUTPUT.PUT_LINE('Product '||IN_Product_Code||' '||v_productname||' new price is $' ||v_newprice);
END;