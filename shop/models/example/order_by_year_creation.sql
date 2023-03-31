SELECT 
   date(order_approved_at) as year, 
   count(order_id) as num_orders 
FROM 
   `dbt_shop.orders_dataset` 
GROUP BY order_approved_at