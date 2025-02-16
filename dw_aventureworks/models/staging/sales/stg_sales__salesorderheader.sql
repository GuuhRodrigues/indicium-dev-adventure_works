with

source as (

    select * from {{ source('sales', 'salesorderheader') }}

), 

renamed as (

    select
        cast(salesorderid as int) as id_ordem_venda
        ,cast(orderdate as timestamp) as dat_venda
        ,cast(totaldue as float) as total_devido
        ,cast(modifieddate as timestamp) as data_modificacao
    from source

)

select * from renamed