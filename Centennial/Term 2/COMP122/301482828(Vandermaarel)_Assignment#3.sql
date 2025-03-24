-- 1
SELECT
    c.FIRST_NAME, 
    c.LAST_NAME, 
    o.CUSTOMER_ID, 
    o.SHIPPED_DATE
FROM 
    db4bikestore_sales_orders o
LEFT JOIN 
    db4bikestore_sales_customers c 
ON 
    o.CUSTOMER_ID = c.CUSTOMER_ID
WHERE 
    o.CUSTOMER_ID >=327
    AND ROWNUM <= 7;


-- 2
SELECT 
    s.FIRST_NAME, 
    s.LAST_NAME, 
    o.CUSTOMER_ID, 
    o.SHIPPED_DATE
FROM 
    db4bikestore_sales_orders o
right JOIN 
    db4bikestore_sales_staffs s
ON 
    s.STAFF_ID = o.STAFF_ID
WHERE
    (s.FIRST_NAME = 'Fabiola' AND s.LAST_NAME = 'Jackson') 
    OR (s.FIRST_NAME = 'Mireya' AND s.LAST_NAME = 'Copeland' AND (o.SHIPPED_DATE BETWEEN '17-JAN-2018' AND '02-APR-2018' OR o.CUSTOMER_ID IN (31, 81)))
    AND o.CUSTOMER_ID != 247
ORDER BY 
    s.FIRST_NAME, s.LAST_NAME, o.SHIPPED_DATE;



-- 3
SELECT 
    c.FIRST_NAME || c.LAST_NAME AS Customer_Name,
    o.ORDER_ID,
    o.CUSTOMER_ID, 
    o.ORDER_DATE,
    s.FIRST_NAME || s.LAST_NAME AS STAFF_NAME
FROM 
    db4bikestore_sales_staffs s
LEFT JOIN 
    db4bikestore_sales_orders o 
ON 
    o.STAFF_ID = s.STAFF_ID
LEFT JOIN
    db4bikestore_sales_customers c
ON 
    o.CUSTOMER_ID = c.CUSTOMER_ID
WHERE 
    o.ORDER_ID >= 1348
    AND (s.FIRST_NAME = 'Mireya' AND s.LAST_NAME = 'Copeland')
ORDER BY o.ORDER_ID;
    
-- 4
SELECT
    DISTINCT s.FIRST_NAME || s.LAST_NAME AS Staff_Name
FROM
    DB4BIKESTORE_SALES_STAFFS s
LEFT JOIN
    DB4BIKESTORE_SALES_ORDERS o
ON
    o.STAFF_ID = s.STAFF_ID
LEFT JOIN
    DB4BIKESTORE_SALES_ORDER_ITEMS i 
ON
    o.ORDER_ID = i.ORDER_ID
WHERE
    i.DISCOUNT > 0.05;


-- 5
SELECT * FROM USER_SYS_PRIVS;

-- 6 
SELECT
    DISTINCT c.FIRST_NAME || c.LAST_NAME AS Customer_Name
FROM
    db4bikestore_sales_orders o
LEFT JOIN
    db4bikestore_sales_customers c
ON
    o.CUSTOMER_ID = c.CUSTOMER_ID
WHERE
    o.STORE_ID = 2;

-- 7
GRANT ALL PRIVILEGES TO PUBLIC;

-- 8 
CREATE ROLE new_role;
GRANT CREATE SESSION TO new_role;
GRANT CREATE TABLE TO new_role;
GRANT CREATE VIEW TO new_role;
GRANT SELECT ON db4bikestore_brands TO new_role;
GRANT INSERT ON db4bikestore_brands TO new_role;