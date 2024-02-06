use ecommerce;

-- weekday vs weekend payment statistics --

select weekend_weekday,
round(sum(payment_value)/1,0) as payment
from ecommerce_sql
group by weekend_weekday;

-- number of orders with review score 5 and payment type as credit card ---

select payment_type,
count(order_id) as no_of_orders
from ecommerce_sql
where review_score = 5 
group by payment_type;

-- average number of days taken for order_delivered_customer_date for pet_shop ---

select 'pet_shop' as product_category_name,
 round(avg(Shipping_Days)/1,0) as avg_delivery_days
from ecommerce_sql
where 
product_category_name = "pet_shop";

-- average price and payment values from customers of sao paulo city ----

select 'sao paulo' as customer_city,
round(avg(price)/1,0) as avg_price,
round(avg(payment_value)/1,0) as avg_payment_value
from ecommerce_sql
where customer_city = "sao paulo";

-- relationship between shipping days vs review scores --

select review_score,
round(avg(shipping_days)/1,0) as delivere_days
from ecommerce_sql
group by review_score
order by review_score;


