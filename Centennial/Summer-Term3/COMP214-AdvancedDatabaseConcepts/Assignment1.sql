

-- 1.
-- All book titles with their corresponding order# from orderitems
-- where the spending amount is greater than 100.

SELECT b.title, o.order#
FROM JL_BOOKS b
JOIN JL_ORDERITEMS o ON b.ISBN = o.ISBN
WHERE o.order# IN (
    SELECT order#
    FROM JL_ORDERITEMS
    GROUP BY order#
    HAVING SUM(quantity * paideach) > 100
);





-- 2.
SELECT customer#, count(*) as "Orders Delayed"
FROM JL_ORDERS
WHERE shipdate-orderdate >= 1
GROUP BY customer#
HAVING COUNT(*) >= 2;



















-- 3.
SELECT SUM(quantity)as "Total Sold"
FROM JL_ORDERITEMS
WHERE ISBN = '3437212490';

















-- 4.
SELECT b.title
FROM JL_BOOKS b
WHERE b.category IN (
    SELECT b.category
    FROM JL_BOOKS b
    JOIN JL_ORDERITEMS oi ON b.ISBN = oi.ISBN
    JOIN JL_ORDERS o ON oi.order# = o.order#
    WHERE o.customer# = 1005
)
AND b.ISBN NOT IN (
    SELECT oi.ISBN 
    FROM JL_ORDERITEMS oi
    JOIN JL_ORDERS o ON oi.order# = o.order#
    WHERE o.customer# = 1005
);



-- 5.
SELECT shipcity, shipstate
FROM JL_ORDERS
WHERE shipdate-orderdate = (
    SELECT MAX(shipdate-orderdate)
    FROM JL_ORDERS
);



-- 6.
SELECT c.firstname || ' ' || c.lastname as "Customer"
FROM JL_CUSTOMERS c
JOIN JL_ORDERS o ON c.customer# = o.customer#
JOIN JL_ORDERITEMS oi ON o.order# = oi.order#
JOIN JL_BOOKS b ON oi.ISBN = b.ISBN
WHERE b.retail = 
    (SELECT MIN(retail)
    FROM JL_BOOKS
);



-- 7.
SELECT DISTINCT l.location_id, l.street_address, l.city, c.country_name
FROM HR_DEPARTMENTS d
JOIN HR_LOCATIONS l ON d.location_id = l.location_id
JOIN HR_COUNTRIES c ON l.country_id = c.country_id
ORDER BY l.location_id;

















-- 8.
SELECT e.employee_id, e.last_name, e.salary, j.job_title, d.department_id, d.department_name, l.city, c.country_id
FROM HR_EMPLOYEES e
JOIN HR_JOBS j ON e.job_id = j.job_id
JOIN HR_DEPARTMENTS d ON e.department_id = d.department_id
JOIN HR_LOCATIONS l ON d.location_id = l.location_id
JOIN HR_COUNTRIES c ON l.country_id = c.country_id
WHERE c.country_id = 'US'
AND e.salary BETWEEN 3400 AND 9500
ORDER BY e.employee_id;











