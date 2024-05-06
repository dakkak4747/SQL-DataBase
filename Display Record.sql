-- 1. A simple query that pulls all columns and rows from a table
SELECT * FROM Acquire;

-- 2. A query that displays a subset of columns
SELECT customer_name, address, phone_number FROM Customer;

-- 3. A query that displays a subset of columns with a single clause (predicate) WHERE statement
SELECT case_material, movement_type FROM Watch WHERE case_material = 'Titanium' AND movement_type = 'quartz';
    
-- 4. A query that displays a subset of columns with a multi-clause (predicate) WHERE statement using AND/OR
SELECT watch_name, price FROM Watch WHERE price > 200 AND movement_type = 'Automatic';

-- 5. A query that performs a single table join. In other words, you are joining 2 tables.
SELECT W.watch_name, C.company_name FROM Watch W JOIN Company C ON W.company_id = C.id;

-- 6. A query that performs a multi-table join. In other words, you are joining 3 or more tables.
SELECT C.company_name, W.watch_name, P.order_date FROM Company C
JOIN Watch W ON C.id = W.company_id
JOIN Acquire P ON W.watch_id = P.watch_id;

-- 7. A query that performs an aggregate (count, min, max, sum, avg, etc.).
SELECT AVG(price) AS average_price FROM Watch;
SELECT COUNT(*) AS TotalWatches FROM Watch;

-- 8. A query that performs an aggregate (count, min, max, sum, avg, etc.) with a GROUP BY.
SELECT company_id, COUNT(*) AS TotalWatches FROM Watch GROUP BY company_id;

-- 9. A query that performs an aggregate (count, min, max, sum, avg, etc.) with a GROUP BY and a HAVING clause
SELECT * FROM Customer WHERE customer_id IN (SELECT customer_id FROM Acquire WHERE quantity > 1);

-- 10. A query that performs a subquery either as part of the WHERE clause or as a derived/virtual table.
SELECT * FROM Customer WHERE customer_id IN (SELECT customer_id FROM Acquire WHERE quantity > 1);

-- 11. A query that performs an aggregate with a join and a group by.
SELECT C.company_name, AVG(W.price) AS AveragePrice FROM Company C
JOIN Watch W ON C.id = W.company_id
GROUP BY C.company_name;
