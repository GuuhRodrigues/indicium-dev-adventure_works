with

dim_detalhes_venda as (

    select * from {{ ref('int_sale_details_joined') }}

)

select * from dim_detalhes_venda