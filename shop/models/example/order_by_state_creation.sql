SELECT customers.customer_state, count(orders_dataset.order_id) as total
FROM dbt_shop.orders_dataset as orders_dataset 
INNER JOIN dbt_shop.customers as customers ON customers.customer_id = orders_dataset.customer_id
group by customers.customer_state