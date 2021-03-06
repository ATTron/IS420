-- 4
select DISTINCT c.first_name, c.last_name from customer c where c.customer_id IN (select customer_id from product_order);

-- 5
select DISTINCT c.first_name, c.last_name from customer c right join product_order p on c.customer_id = p.customer_id;

-- 9
select product_name from product where product_name like '%Pole';

-- 11
select product_name, COUNT(o.product_id) as num_reorder from product p left join order_details o on p.product_id = o.product_id group by product_name;
--select product_name, COUNT(o.product_id) as num_reorder from product p, order_details o where p.product_id = o.product_id group by product_name;

-- 14
select product_id, product_name, (quantity_in_stock - reorder_point) as remaining_stock from product;
