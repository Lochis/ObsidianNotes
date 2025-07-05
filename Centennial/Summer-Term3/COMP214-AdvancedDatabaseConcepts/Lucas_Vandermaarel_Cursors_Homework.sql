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