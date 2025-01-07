{{  config ( materialized = 'view') }}

with cte  as
(SELECT 1
   union
SELECT  2
    union 
    SELECT 3
), final as
(SELECT *
    from cte
)
SELECT *
FROM final