SELECT
  orders_dataset.order_id,
  SUM(order_items.quantity * order_items.price) AS total_price
FROM
  orders
  JOIN order_items ON orders_dataset.order_id = order_items.order_id
GROUP BY
  orders_dataset.order_id;