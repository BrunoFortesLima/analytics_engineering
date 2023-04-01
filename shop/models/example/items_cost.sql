SELECT
  order_id,
  product_id,
  freight_value,
  price,
  freight_value * price AS total_price
FROM
  dbt_shop.order_items