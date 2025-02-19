with

dim_endereco as (

    select * from {{ ref('int_address_joined') }}

)

select * from dim_endereco