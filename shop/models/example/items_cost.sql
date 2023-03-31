SELECT
  order_id,
  product_id,
  quantity,
  price,
  quantity * price AS total_price
FROM
  order_items;