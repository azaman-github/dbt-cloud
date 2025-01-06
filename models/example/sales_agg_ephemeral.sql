/*

overview
========
1. This is an ephemeral model
2. TWhen this model is run, the outout does not show anything that is executed 
3. The model is simply saved after being compiled.
4. When this model is referenced in another SQL as a source, the model will be run to create a temporary view and
   data will be returned from this view

History
Data           Author      Comment
---------------------------------------------
20/12/2024     A Zaman     Initial creation

*/
--
--MODEL_NAME=sales_agg_ephemeral
--SOURCE_TABLE=sales
--RUN_COMMAND=dbt_cli run -m ${MODEL_NAME}
--

{{ config ( materialized = "ephemeral") }}

with  sales_agg_cte as
(
select
    to_varchar(order_date,'MM-YYYY') as month,
    sum(sales_amt) as total_sales
from sales 
group by 1
),
final as
(
SELECT *
FROM sales_agg_cte
)
SELECT *
FROM final
--
--
