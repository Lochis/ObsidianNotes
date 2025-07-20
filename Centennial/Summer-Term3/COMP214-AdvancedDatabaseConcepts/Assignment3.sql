-- 1. Data Processing with composite variables
DECLARE
    CURSOR c_orderCat IS 
        SELECT oi.product_id, SUM(oi.unit_price * quantity) as total
        FROM OT_ORDER_ITEMS oi
        JOIN OT_PRODUCTS p ON oi.product_id = p.product_id
        GROUP BY oi.product_id;
        
    v_category VARCHAR(20);

BEGIN
     DBMS_OUTPUT.PUT_LINE(RPAD('Product Id', 12) || ' ' || RPAD('Total',12) || ' ' || RPAD('Category', 15));
    FOR rec_orderCat in c_orderCat LOOP
        IF rec_orderCat.total BETWEEN 100000 AND 300000 THEN 
            v_category := 'Low';
        ELSIF rec_orderCat.total BETWEEN 300001 AND 700000 THEN 
            v_category := 'Mid Low';
        ELSIF rec_orderCat.total BETWEEN 700001 AND 999999 THEN 
            v_category := 'Mid High';
        ELSIF rec_orderCat.total >= 1000000 THEN 
            v_category := 'Extreme High';
        ELSE 
            v_category := 'Too low';
        END IF;
        DBMS_OUTPUT.PUT_LINE(
            RPAD(rec_orderCat.product_id, 12) || ' ' ||
            RPAD(rec_orderCat.total, 12) || ' ' ||
            RPAD(v_category, 15)
        );
    END LOOP;
END;







-- 2. using nested IF statements
ACCEPT donorType CHAR PROMPT 'Enter donor type (I/B/G): '
ACCEPT pledgeAmount NUMBER PROMPT 'Enter pledge amount: '
DECLARE
    v_donorType CHAR(1) := '&donorType';
    v_donorTypeFull VARCHAR2(30);
    v_pledgeAmt NUMBER := &pledgeAmount;
    v_matching NUMBER;
    v_total NUMBER;

BEGIN
    IF v_donorType = 'I' THEN
        v_donorTypeFull := 'Individual';
        IF v_pledgeAmt BETWEEN 100 AND 249 THEN
            v_matching := 0.5;
        ELSIF v_pledgeAmt BETWEEN 250 AND 499 THEN
            v_matching := 0.3;
        ELSIF v_pledgeAmt >= 500 THEN
            v_matching := 0.2;
        ELSE
        -- 0, not one of the options
            v_matching := 0;
        END IF;
    ELSIF v_donorType = 'B' THEN
        v_donorTypeFull := 'Business';
        IF v_pledgeAmt BETWEEN 100 AND 499 THEN
            v_matching := 0.2;
        ELSIF v_pledgeAmt BETWEEN 500 AND 999 THEN
            v_matching := 0.1;
        ELSIF v_pledgeAmt >= 1000 THEN
            v_matching := 0.05;
        ELSE
        -- 0, not one of the options
            v_matching := 0;
        END IF;
    ELSIF v_donorType = 'G' THEN
        v_donorTypeFull := 'Grant funds';
        IF v_pledgeAmt >= 100 THEN
            v_matching := 0.05;
        ELSE
        -- 0, not one of the options
            v_matching := 0;
        END IF;
    ELSE
        -- invalid type
        DBMS_OUTPUT.PUT_LINE(v_donorType || ' is an invalid Donor Type.');
    END IF;
    
    IF v_matching = 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_pledgeAmt || ' is too low.');
    ELSIF v_donorType IN ('I', 'B', 'G') THEN
         DBMS_OUTPUT.PUT_LINE('Donor Type of (' || v_donorType || ')' || v_donorTypeFull || ' for $' || v_pledgeAmt);
        DBMS_OUTPUT.PUT_LINE('The organization is matching ' || v_matching * 100 || '% ($' || v_pledgeAmt * v_matching || ') ');
        v_total := v_pledgeAmt + (v_pledgeAmt * v_matching);
        DBMS_OUTPUT.PUT_LINE('Total donation is $' || v_total);       
    END IF;
END;


-- 3. Procedure to find Product sales total amount and product name

-- calling procedure
VARIABLE v_total VARCHAR2(100)
VARIABLE v_product_name VARCHAR2(100)
EXEC sp_product_total(70, 32, :v_total, :v_product_name)
PRINT v_total
PRINT v_product_name









