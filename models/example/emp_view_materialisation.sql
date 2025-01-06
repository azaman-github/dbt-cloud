--
--MODEL_NAME=emp_view_materialisation
--SOURCE_TABLE=emp
--TARGET_VIEW=emp_view_materialisation
--RUN_COMMAND=dbt_cli run -m ${MODEL_NAME}

{{ config ( materialized = "view" ) }}
--
--
WITH emp_cte as 
(

SELECT empno, fname,lname,gender
FROM emp
), final as
(
SELECT  *
FROM emp_cte
)
--
SELECT  *
FROM  final

