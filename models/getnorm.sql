
{% macro get_mean_std(column_name, model_name, table_name) %}

{% set relation_query %}
select distinct
{{ column_name }}
from {{ table_name }}
where model_name = model_name
order by 1
{% endset %}

{% set results = run_query(relation_query) %}

{% if execute %}
{# If mean in 3rd column, standard deviation in 4th #}
{% set results_list = [results.columns[2].values(), results.columns[2].values() %}

{% else %}
{% set results_list = [] %}
{% endif %}

{{ return(results_list) }}

{% endmacro %}


{% macro get_payment_methods() %}

{{ return(get_mean_values('amount', 'mar_forecasting-2021-02-10-01-34-30',ref('model_statistics'))) }}

{% endmacro %}
