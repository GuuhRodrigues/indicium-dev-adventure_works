with

dim_produto as (

    select * from {{ ref('int_product_joined') }}

)

select * from dim_produto