CREATE TABLE customers_with_region,
(region STRING)
AS
SELECT dbt_shop 
FROM shop_conjunto.customers
CASE 
    WHEN dbt_shop.customers IN ('SP', 'RJ') THEN 'Sudeste',
    WHEN dbt_shop.customers IN ('CE', 'PI', 'MA', 'BA') THEN 'Nordeste';
