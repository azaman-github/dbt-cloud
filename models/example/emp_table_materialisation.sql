--
--MODEL_NAME=emp_table_materialisation
--SOURCE_TABLE=emp
--TARGET_TABLE=emp_table_materialisation
--RUN_COMMAND=dbt_cli run -m ${MODEL_NAME}
--
{{ config ( materialized = "table" ) }}
--
--
WITH emp_cte as 
(

SELECT empno, fname||' '||lname as full_name
FROM emp
), final as
(
SELECT  *
FROM emp_cte
)
--
SELECT  *
FROM  final

