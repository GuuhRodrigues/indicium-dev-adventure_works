with

dim_solic_venda as (

    select * from {{ ref('int_solic_sale_details_joined') }}

)

select * from dim_solic_venda