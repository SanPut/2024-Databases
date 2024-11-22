-- Northwind company has many products for sale. Find out how many orders include
-- each of the products. Write a query which returns all company's products 
-- (the name of the product) and the number of orders. Include the products which are 
-- not part of any order in the result.

select 
    p.product_name as product_name,
    count(od.order_id) as number_of_orders
from 
    products p
left join 
    order_details od on p.id = od.product_id
group by 
    p.product_name
order by 
    number_of_orders desc;