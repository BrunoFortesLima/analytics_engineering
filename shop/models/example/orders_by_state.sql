SELECT customers.customer_state, count(orders.order_id) as total
FROM `dbt_shop.orders_dataset` as orders 
INNER JOIN `dbt_shop.customers` as customers ON customers.customer_id = orders.customer_id
group by customers.customer_state
