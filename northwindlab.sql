select * from customers;

select distinct country from customers;

select * from customers where customer_id like 'BL%';

select * from orders limit 100;

select * from customers where postal_code in ('1010', '3012', '12209', '05023');

select * from orders where ship_region IS NOT NULL;

select * from customers order by country, city;

insert into customers (customer_id, company_name, contact_name, country)
values ('newbi', 'Company', 'Melissa', 'USA');

update orders set ship_region='EuroZone' where ship_country ='France'

delete from order_details where quantity=1;

select avg(quantity) as avg_quantity,
       max(quantity) as max_quantity,
       min(quantity) as min_quantity
from order_details;


select order_id,
		avg(quantity) as avg_quantity,
       max(quantity) as max_quantity,
       min(quantity) as min_quantity
from order_details
group by order_id;

select customer_id from orders where order_id = 10290;

select * from orders inner join customers on orders.customer_id = customers.customer_id;

select * from orders left join customers on orders.customer_id = customers.customer_id;

select * from orders right join customers on orders.customer_id = customers.customer_id;

select o.ship_city, o.ship_country
from orders o
join employees e on o.employee_id = e.employee_id
where e.city = 'London';

select o.ship_name
from orders o
join order_details od on o.order_id = od.order_id
join products p on od.product_id = p.product_id
where p.discontinued = 1;

select e1.first_name
from employees e1
left join employees e2 on e1.reports_to = e2.employee_id
where e1.reports_to is NULL;

select e1.first_name
from employees e1
join employees e2 on e1.reports_to = e2.employee_id
where e2.first_name = 'Andrew';

create index idx_customer_id on customers (customer_id);






