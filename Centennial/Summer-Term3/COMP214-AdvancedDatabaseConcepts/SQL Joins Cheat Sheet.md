| Join Type  | Description                                                            | Example Output                                       |
| ---------- | ---------------------------------------------------------------------- | ---------------------------------------------------- |
| INNER JOIN | Returns only rows with matching values in both tables.                 | Only common data between tables.                     |
| LEFT JOIN  | Returns all rows from the left table and matching rows from the right. | All left table data; NULLs for unmatched right rows. |
| RIGHT JOIN | Returns all rows from the right table and matching rows from the left. | All right table data; NULLs for unmatched left rows. |
| FULL JOIN  | Returns all rows from both tables, matching where possible.            | All data from both tables; NULLs for non-matches.    |
| CROSS JOIN | Returns the Cartesian product of both tables (every combination).      | Every possible pair of rows.                         |
| SELF JOIN  | Joins a table to itself.                                               | Useful for hierarchical data (e.g., org charts).     |

**Quick Syntax Examples:**

- **INNER JOIN**
    
    sql
    
    `SELECT * FROM table1 INNER JOIN table2 ON table1.id = table2.id;`
    
- **LEFT JOIN**
    
    sql
    
    `SELECT * FROM table1 LEFT JOIN table2 ON table1.id = table2.id;`
    
- **RIGHT JOIN**
    
    sql
    
    `SELECT * FROM table1 RIGHT JOIN table2 ON table1.id = table2.id;`
    
- **FULL JOIN**
    
    sql
    
    `SELECT * FROM table1 FULL JOIN table2 ON table1.id = table2.id;`
    
- **CROSS JOIN**
    
    sql
    
    `SELECT * FROM table1 CROSS JOIN table2;`
    
- **SELF JOIN**
    
    sql
    
    `SELECT a.id, b.id FROM table AS a JOIN table AS b ON a.parent_id = b.id;`
    

**Notes:**

- Writing `JOIN` by itself defaults to `INNER JOIN`[1](https://celerdata.com/glossary/sql-join-types-made-simple)[2](https://www.datacamp.com/cheat-sheet/sql-joins-cheat-sheet)[3](https://www.dbvis.com/thetable/sql-cheat-sheet-every-join-explained/)[5](https://minimaldevops.com/sql-joins-cheatsheet-b88e90ae64cf)[6](https://www.linkedin.com/posts/piyush-ranjan-9297a632_sql-joins-cheat-sheet-breaks-down-four-common-activity-7232695577866575872-bdEH).
    
- Use `LEFT JOIN` or `RIGHT JOIN` to include unmatched rows from one side[1](https://celerdata.com/glossary/sql-join-types-made-simple)[2](https://www.datacamp.com/cheat-sheet/sql-joins-cheat-sheet)[5](https://minimaldevops.com/sql-joins-cheatsheet-b88e90ae64cf)[6](https://www.linkedin.com/posts/piyush-ranjan-9297a632_sql-joins-cheat-sheet-breaks-down-four-common-activity-7232695577866575872-bdEH).
    
- Use `FULL JOIN` for a complete set from both tables, with NULLs for missing matches[1](https://celerdata.com/glossary/sql-join-types-made-simple)[6](https://www.linkedin.com/posts/piyush-ranjan-9297a632_sql-joins-cheat-sheet-breaks-down-four-common-activity-7232695577866575872-bdEH).
    
- `CROSS JOIN` is rarely used except for generating all combinations[1](https://celerdata.com/glossary/sql-join-types-made-simple)[2](https://www.datacamp.com/cheat-sheet/sql-joins-cheat-sheet)[5](https://minimaldevops.com/sql-joins-cheatsheet-b88e90ae64cf).
    

This table and the examples provide a quick reference for choosing and writing SQL joins[1](https://celerdata.com/glossary/sql-join-types-made-simple)[2](https://www.datacamp.com/cheat-sheet/sql-joins-cheat-sheet)[5](https://minimaldevops.com/sql-joins-cheatsheet-b88e90ae64cf)[6](https://www.linkedin.com/posts/piyush-ranjan-9297a632_sql-joins-cheat-sheet-breaks-down-four-common-activity-7232695577866575872-bdEH).