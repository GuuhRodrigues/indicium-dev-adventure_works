with

source as (

    select * from {{ source('sales', 'salesorderheadersalesreason') }}

), 

renamed as (

    select
        cast(salesorderid as int) as id_ordem_venda
        ,cast(salesreasonid as int) as id_motivo_venda
        ,cast(modifieddate as timestamp) as data_modificacao
    from source

)

select * from renamed