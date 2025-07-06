/* 
==========================================
  Homework #1
==========================================

-- Problem:
    - Get a list of all employees who work in 'Seattle'
    - Retrieve the following columns:
       first_name, last_name, salary, department_name, city
    - Load this list into a cursor named x_cursor
    - Fetch each row from the cursor into a record variable named x_record
    - For each record:
      - If the employee earns less than 7000, add 300 to their salary
      - If the employee earns 7000 or more, add 100 to their salary
*/


DECLARE
    CURSOR emp_cursor IS
        -- in order to actually select employee in the later record, employee_id is best to use.
        SELECT e.employee_id, e.first_name, e.last_name, e.salary, d.department_name, l.city
        FROM HR_EMPLOYEES e 
        JOIN HR_DEPARTMENTS d ON e.department_id = d.department_id
        JOIN HR_LOCATIONS l ON d.location_id = l.location_id
        WHERE l.city = 'Seattle';
        
    emp_record emp_cursor%ROWTYPE;
    -- instead of re-selecting the same SELECT statement as emp_cursor, 
    -- updating salary and using this variable to store the increased salary for log.
    v_increased_salary NUMBER;

BEGIN
    
    -- don't need OPEN emp_cursor because for loop automatically opens it.
    -- also don't need FETCH or CLOSE.
    
    FOR emp_record IN emp_cursor LOOP
    
        DBMS_OUTPUT.PUT_LINE('Employee: ' || emp_record.first_name || ' ' || emp_record.last_name || ' (' || emp_record.employee_id || ') Salary: ' || emp_record.salary);
    
        IF emp_record.salary < 7000 THEN 
            UPDATE HR_EMPLOYEES
            SET salary = salary + 300
            WHERE employee_id = emp_record.employee_id;
            
            v_increased_salary := emp_record.salary + 300;
            
            DBMS_OUTPUT.PUT_LINE('Salary less than 7000, adding 300');
            DBMS_OUTPUT.PUT_LINE('Employee: ' || emp_record.first_name || ' ' || emp_record.last_name || ' (' || emp_record.employee_id || ') Salary: ' || v_increased_salary);
            DBMS_OUTPUT.PUT_LINE('------------------------------------------');
           
        ELSIF emp_record.salary >= 7000 THEN
            UPDATE HR_EMPLOYEES
            SET salary = salary + 100
            WHERE employee_id = emp_record.employee_id;
            
            v_increased_salary := emp_record.salary + 100;
            
            DBMS_OUTPUT.PUT_LINE('Salary is 7000 or more, adding 100');
            DBMS_OUTPUT.PUT_LINE('Employee: ' || emp_record.first_name || ' ' || emp_record.last_name || ' (' || emp_record.employee_id || ') Salary: ' || v_increased_salary);
            DBMS_OUTPUT.PUT_LINE('------------------------------------------');
        END IF;
    END LOOP;
    
    -- Am not commiting because I do not want this to actually change the database.
    --COMMIT;
    
END;

ROLLBACK;


 SELECT e.employee_id, e.first_name, e.last_name, e.salary, d.department_name, l.city
        FROM HR_EMPLOYEES e 
        JOIN HR_DEPARTMENTS d ON e.department_id = d.department_id
        JOIN HR_LOCATIONS l ON d.location_id = l.location_id
        WHERE l.city = 'Seattle';


/* 
==========================================
  Homework #2
==========================================

-- Problem:
    - Go through all customers from the JL_XXX system
    - Load all customers into a cursor
    - Fetch each customer record using:
        - Either a FOR LOOP over the cursor
        - Or manual OPEN, FETCH, and CLOSE cursor statements
    - For each customer record:
        - If the email address is NULL:
            - Do nothing
            - Print: 'this customer is not eligible for online campaign'
        - If the email address is NOT NULL:
            - If region is 'NW', assign $5 credit via a local variable
            - If region is 'SE', assign $7 credit via a local variable
            - If region is 'N', assign $10 credit via a local variable
            - For any other region, assign $2 credit
        - In all non-NULL email cases:
            - Print eligibility and the credit amount

*/


DECLARE 

    CURSOR cust_cursor IS SELECT * FROM JL_CUSTOMERS;
    
    cust_record cust_cursor%ROWTYPE;
    
    v_credit NUMBER;
BEGIN
    
    FOR cust_record IN cust_cursor LOOP
        IF cust_record.email IS NOT NULL THEN
            IF cust_record.region = 'NW' THEN v_credit := 5;
            ELSIF cust_record.region = 'SE' THEN v_credit := 7;
            ELSIF cust_record.region = 'N' THEN v_credit := 10;
            ELSE v_credit := 2;
            END IF;
            
            DBMS_OUTPUT.PUT_LINE(cust_record.firstname || ' ' || cust_record.lastname || ' is eligible for the credit amount of ' || v_credit);
            
        ELSE DBMS_OUTPUT.PUT_LINE(cust_record.firstname || ' ' || cust_record.lastname || ' is NOT eligible for online campaign');
        END IF;
    
    END LOOP;

END;









SELECT * FROM JL_CUSTOMERS;
