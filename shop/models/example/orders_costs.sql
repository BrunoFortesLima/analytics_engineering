SELECT
  order_id,
  SUM(order_items.freight_value * order_items.price) AS total_price
FROM
  dbt_shop.orders_dataset
  JOIN dbt_shop.order_items ON orders_dataset.order_id = order_items.order_id
GROUP BY
  orders_dataset.order_id