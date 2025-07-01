-- 3. Delivery cost calculation

DECLARE 
    v_state CHAR(2) := &state;
    v_num_items NUMBER := &number_of_items;
    v_price_item NUMBER;
    v_total_price NUMBER;
BEGIN
    IF v_state = 'ON' THEN
        v_price_item := CASE
            WHEN v_num_items BETWEEN 0 AND 99 THEN 1.50
            WHEN v_num_items BETWEEN 100 AND 499 THEN 2.28
            WHEN v_num_items BETWEEN 500 AND 749 THEN 2.27
            WHEN v_num_items BETWEEN 750 AND 1000 THEN 2.26
            WHEN v_num_items > 1000 THEN 2.25
            ELSE 0
        END;
        
    ELSIF v_state = 'BC' THEN
     v_price_item := CASE
            WHEN v_num_items BETWEEN 0 AND 99 THEN 1.70
            WHEN v_num_items BETWEEN 100 AND 499 THEN 2.35
            WHEN v_num_items BETWEEN 500 AND 749 THEN 2.45
            WHEN v_num_items BETWEEN 750 AND 1000 THEN 2.50
            WHEN v_num_items > 1000 THEN 2.75
            ELSE 0
        END;
    ELSE
     v_price_item := CASE
            WHEN v_num_items BETWEEN 0 AND 99 THEN 0.70
            WHEN v_num_items BETWEEN 100 AND 499 THEN 1.35
            WHEN v_num_items BETWEEN 500 AND 749 THEN 1.45
            WHEN v_num_items BETWEEN 750 AND 1000 THEN 1.50
            WHEN v_num_items > 1000 THEN 1.75
            ELSE 0
        END;
    END IF;
    
    v_total_price := v_price_item * v_num_items;
    
    DBMS_OUTPUT.PUT_LINE('Price per item: $' || v_price_item);
    DBMS_OUTPUT.PUT_LINE('Total price of delivery: $' || v_total_price);
END;



-- 4. 

DECLARE
    v_sum NUMBER := 1;    
BEGIN
    FOR i IN 10..30 LOOP
        v_sum := v_sum + i;
        DBMS_OUTPUT.PUT_LINE(v_sum);
        
        CONTINUE WHEN i >= 20;
        v_sum := v_sum + i;
        DBMS_OUTPUT.PUT_LINE(v_sum);
    END LOOP;
END;


-- 5. In this task you will ask the end user how many side shape has and based on the entry you will print name of the shape

DECLARE
    v_num_sides NUMBER := &num_of_sides;
BEGIN
    CASE
        WHEN v_num_sides = 3 THEN DBMS_OUTPUT.PUT_LINE('Triangle');
        WHEN v_num_sides = 4 THEN

            IF UPPER('&equal_or_not') IN ('TRUE', '1') THEN 
                DBMS_OUTPUT.PUT_LINE('Square');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Rectangle');
            END IF;
        WHEN v_num_sides = 5 THEN DBMS_OUTPUT.PUT_LINE('Pentagon');
        WHEN v_num_sides = 6 THEN DBMS_OUTPUT.PUT_LINE('Hexagon');
        WHEN v_num_sides = 8 THEN DBMS_OUTPUT.PUT_LINE('Octagon');
        ELSE DBMS_OUTPUT.PUT_LINE('No Shape Available');
    END CASE;
END;



-- 6. Ask the user their name and how many times they want to output their name (using a for loop).

DECLARE 
v_name  varchar(50) := '&name';
v_num_times  number :=&numb;

BEGIN
    FOR i in 1..v_num_times LOOP
        DBMS_OUTPUT.PUT_LINE(v_name);
    END LOOP;
END;


-- 7. Create a visitors application that prompts the user for the number 
-- of visitors each day for the past 5 days and then displays the
-- average number of visitors per day.

DECLARE
    type num_visitors_type IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_n_array num_visitors_type;
    
    v_total_sum NUMBER := 0;
    v_avg NUMBER;
BEGIN
       
    v_n_array(1) := &num1;
    v_n_array(2) := &num2;
    v_n_array(3) := &num3;
    v_n_array(4) := &num4;
    v_n_array(5) := &num5;

    for i in 1..v_n_array.COUNT LOOP
        v_total_sum := v_total_sum + v_n_array(i);
    END LOOP;
    
    v_avg := v_total_sum / v_n_array.COUNT;
    
    DBMS_OUTPUT.PUT_LINE('The average number of visitors is: ' || v_avg); 
END;






-- 8. Earthquake impact scale measurement program

DECLARE
    v_magnitude NUMBER := &magnitude;
    v_descriptor VARCHAR(20);
BEGIN
    CASE
        WHEN v_magnitude < 2.0 THEN v_descriptor := 'Micro';
        WHEN v_magnitude >= 2.0 AND v_magnitude < 3.0 THEN v_descriptor := 'Very minor';
        WHEN v_magnitude >= 3.0 AND v_magnitude < 4.0 THEN v_descriptor := 'Minor';
        WHEN v_magnitude >= 4.0 AND v_magnitude < 5.0 THEN v_descriptor := 'Light';
        WHEN v_magnitude >= 5.0 AND v_magnitude < 6.0 THEN v_descriptor := 'Moderate';
        WHEN v_magnitude >= 6.0 AND v_magnitude < 7.0 THEN v_descriptor := 'Strong';
        WHEN v_magnitude >= 7.0 AND v_magnitude < 8.0 THEN v_descriptor := 'Major';
        WHEN v_magnitude >= 8.0 AND v_magnitude < 10.0 THEN v_descriptor := 'Great';
        WHEN v_magnitude >= 10.0 THEN v_descriptor := 'Meteoric';
    END CASE;
    
    DBMS_OUTPUT.PUT_LINE('A magnitude of ' || v_magnitude || ' is considered to be a ' || v_descriptor || ' earthquake');

END;




-- 9. and 10.
DROP TABLE A_TEST;
CREATE TABLE A_TEST(id number);

DECLARE 
    v_counter number := 1;
BEGIN
    FOR i in 1..10 LOOP
        INSERT INTO A_TEST VALUES (i);
    END LOOP;
   
    
    WHILE v_counter <= 10 LOOP
        INSERT INTO A_TEST VALUES (v_counter);
        v_counter := v_counter + 1; 
    END LOOP;
    
END;






































































