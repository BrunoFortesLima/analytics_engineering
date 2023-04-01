(CREATE TABLE customers_with_region,
(region STRING)
AS
SELECT customer_state 
FROM dbt_shop.customers
CASE 
    WHEN customers IN ('SP', 'RJ') THEN 'Sudeste',
    WHEN customers IN ('CE', 'PI', 'MA', 'BA') THEN 'Nordeste'
)
