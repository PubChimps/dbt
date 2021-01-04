

  create or replace table `dbt-technical-training`.`dbt_nick`.`my_second_dbt_model`
  
  
  OPTIONS()
  as (
    -- Use the `ref` function to select from other models

select *
from `dbt-technical-training`.`dbt_nick`.`my_first_dbt_model`
where id = 1
  );
    