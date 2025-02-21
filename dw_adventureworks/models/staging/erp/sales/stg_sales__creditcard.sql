with

source as (

    select * from {{ source('sales', 'creditcard') }}

), 

renamed as (

    select
        cast(creditcardid as int) as id_cartao
        ,cast(cardtype as string) as tipo_cartao
        ,cast(concat(expmonth,'/',expyear) as string) as vencimento
        ,cast(modifieddate as timestamp) as data_modificacao
    from source

)

select * from renamed