with

source as (

    select * from {{ source('sales', 'salesorderheader') }}

), 

renamed as (

    select
        cast(salesorderid as int) as id_ordem_venda
        ,cast(creditcardid as int) as id_cartao
        ,cast(shiptoaddressid as int) as id_endereco
        ,cast(orderdate as timestamp) as dat_venda
        ,cast(totaldue as float) as total_venda
        ,cast(modifieddate as timestamp) as data_modificacao
    from source

)

select * from renamed