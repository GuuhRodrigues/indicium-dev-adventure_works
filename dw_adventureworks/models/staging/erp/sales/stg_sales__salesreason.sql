with

source as (

    select * from {{ source('sales', 'salesreason') }}

), 

renamed as (

    select
        cast(salesreasonid as int) as id_motivo_venda
        ,cast(name as string) as status
        ,cast(reasontype as string) as motivo_venda
        ,cast(modifieddate as timestamp) as data_modificacao
    from source

)

select * from renamed