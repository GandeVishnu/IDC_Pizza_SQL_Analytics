-- Phase 1: Foundation & Inspection

-- List all unique pizza categories (DISTINCT).

select distinct category from pizza_types;

-- Display pizza_type_id, name, and ingredients, replacing NULL ingredients with "Missing Data". Show first 5 rows.

select pizza_type_id, name, coalesce(ingredients,'Missing Data') as mis  from pizza_types
limit 5;

--Check for pizzas missing a price (IS NULL).

select * from pizzas where price is null;


-- Phase 2: Filtering & Exploration

-- Orders placed on '2015-01-01' (SELECT + WHERE).

select * from orders where date='2015-01-01';

-- List pizzas with price descending.

select * from pizzas order by price desc;


-- Pizzas sold in sizes 'L' or 'XL'.

select ps.size ,count(*) as order_pizza_count from order_details od left join  pizzas ps on od.pizza_id=ps.pizza_id where ps.size in('L', 'XL') group by ps.size;


-- Pizzas priced between $15.00 and $17.00.

select * from pizzas 
where price between 15 and 17;


-- Pizzas with "Chicken" in the name.

select * from pizza_types
where name like '%Chicken%';


-- Orders on '2015-02-15' or placed after 8 PM.

select * from orders
where date= '2015-02-15' or time >'20:00:00';


-- Phase 3: Sales Performance

-- Total quantity of pizzas sold (SUM).

select sum(quantity) as total_quantity
from order_details;


-- Average pizza price (AVG).

select round(avg(price),2) as avg_price
from pizzas;


-- Total order value per order (JOIN, SUM, GROUP BY).

select od.order_id, SUM(ps.price * od.quantity) AS order_total
from order_details od left join pizzas ps on od.pizza_id=ps.pizza_id
group by od.order_id;


-- Total quantity sold per pizza category (JOIN, GROUP BY).

select pt.category,sum(quantity) as total_quantity 
from order_details od left join pizzas ps on od.pizza_id=ps.pizza_id 
left join pizza_types pt on ps.pizza_type_id=pt.pizza_type_id
group by pt.category; 

-- Categories with more than 5,000 pizzas sold (HAVING).

select pt.category,sum(quantity) as total_quantity 
from order_details od left join pizzas ps on od.pizza_id=ps.pizza_id
left join pizza_types pt on ps.pizza_type_id=pt.pizza_type_id
group by pt.category
having sum(quantity)>5000; 

-- Pizzas never ordered (LEFT/RIGHT JOIN).
select ps.pizza_id,ps.pizza_type_id, ps.size,ps.price,od.order_id,od.quantity from pizzas ps left join order_details od on ps.pizza_id=od.pizza_id right join pizza_types pt on pt.pizza_type_id= ps.pizza_type_id where od.pizza_id is null;

SELECT ps.pizza_id, ps.pizza_type_id, ps.size, ps.price,od.order_id,od.quantity
FROM pizzas ps
LEFT JOIN order_details od ON ps.pizza_id = od.pizza_id
WHERE od.pizza_id IS NULL;


-- Price differences between different sizes of the same pizza (SELF JOIN).

select p1.pizza_id,p1.size as size_1,p2.size as size_2,
p1.price as price_1, p2.price as price_p2,
p2.price-p1.price as price_difference 
from pizzas p1 inner join pizzas p2 
on p1.pizza_type_id=p2.pizza_type_id and p1.size<p2.size
order by p1.pizza_id;






