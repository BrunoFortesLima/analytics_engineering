{{ config(materialized='table') }}
select 
  extract(year from date(order_approved_at)) as year, 
  count(order_id) as total
  from `dbt_shop.orders_dataset` 
  group by 1