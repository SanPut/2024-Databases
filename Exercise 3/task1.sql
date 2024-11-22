-- The Northwind database contains following tables: orders and customers.
-- Analyze the structure of these tables and write a query, which returns all orders,
-- that are ordered to New York. Include customer's first and last name, company and
-- the order's shipping date into the result. Make sure orders which are not shipped yet
-- are included in the result.
select 
    c.first_name as first_name,
    c.last_name as last_name,
    c.company as company_name,
    o.shipped_date as shipped_date
from 
    orders o
join 
    customers c on o.customer_id = c.id
where 
    o.ship_city = 'New York' or o.shipped_date is null;