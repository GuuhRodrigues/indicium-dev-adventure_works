with

dim_pessoa as (

    select * from {{ ref('int_person_joined') }}

)

select * from dim_pessoa