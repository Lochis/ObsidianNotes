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
WHERE o.CUSTOMER_ID >=327;


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
WHERE o.ORDER_ID = 1348;
    
