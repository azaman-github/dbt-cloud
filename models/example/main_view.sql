{{ config ( materialized = "view") }}

with cte  as 
(
 select 1  as  col
   union 
select 2
), final as
(
    select * from cte
)
select *  from final 