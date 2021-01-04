

  create or replace table `dbt-technical-training`.`dbt_nick`.`stg_customers`
  
  
  OPTIONS()
  as (
    select
    id as customer_id,
    first_name,
    last_name

from `dbt-tutorial`.jaffle_shop.customers
  );
    