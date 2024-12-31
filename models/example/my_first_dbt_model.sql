
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
<<<<<<< HEAD
    This change is to test commit from local repo
<<<<<<< HEAD
    This change is to test second commit from local repo
=======
=======
>>>>>>> 89f638750e261a6b271bc56307e55c10bc526a0f
>>>>>>> adfc0ac20152ea64a3b5529619f9106e69f7f6e7
*/

{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
