-- In task 2 you will need GROUP BY, ORDER BY ja COUNT commands.

-- Find out which Northwind company's employees have sold products and how many. 
-- Include the count of sold orders, employee's name and title in the company to
-- the result. Order the result according the number of sales in descending order. 
-- Don't include employees that have not sold anything in the result.

select 
    e.first_name as first_name,
    e.last_name as last_name,
    e.job_title as title,
    COUNT(o.id) as number_of_sales
from 
    employees e
join 
    orders o ON e.id = o.employee_id
group by 
    e.id, e.first_name, e.last_name, e.job_title
having 
    COUNT(o.id) > 0
order by 
    number_of_sales DESC;