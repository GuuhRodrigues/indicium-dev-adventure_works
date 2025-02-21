with

dim_cartao as (

    select * from {{ ref('int_card_joined') }}

)

select * from dim_cartao