--
--ANALYSIS_SQL=sales_agg
--SOURCE_TABLE=emp
--RUN_COMMAND=dbt_cli compile  --select ${ANALYSIS_SQL}
--

SELECT *
FROM {{ ref('sales_agg_ephemeral') }}


