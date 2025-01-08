{{  config ( materialized = "view" )  }}
with cte  as
(select 1
  union
  select 2
), final as
(select *
  from cte
)
select *
from final