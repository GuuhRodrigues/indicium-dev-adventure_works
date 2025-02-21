with

source as (

    select * from {{ source('sales', 'salesorderdetail') }}

), 

renamed as (

    select
        cast(salesorderid as int) as id_ordem_venda
        ,cast(salesorderdetailid as int) as id_ordem_venda_detalhe
        ,cast(productid as int) as id_produto
        ,cast(orderqty as int) as qtd_ordem
        ,cast(unitprice as float) as preco_unitario
        ,cast(unitpricediscount as float) as desconto_preco_unitario
        ,cast(modifieddate as timestamp) as data_modificacao
    from source

)

select * from renamed