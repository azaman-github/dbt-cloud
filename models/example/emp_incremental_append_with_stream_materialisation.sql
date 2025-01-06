--
-- with the append strategy, source records must be identified in the select statement
--
--MODEL_NAME=emp_incremental_append_with_stream_materialisation
--SOURCE_TABLE=emp
--TARGET_TABLE=emp_incremental_append_with_stream_materialisation
--RUN_COMMAND=dbt_cli run -m ${MODEL_NAME}
--
{{ config ( materialized = "incremental", incremental_strategy = "append" ) }}
--
--
WITH emp_cte as 
(
SELECT empno, fname, lname, created_dt
FROM emp_stream
)
--
SELECT  empno, fname, lname , created_dt
FROM emp_cte

