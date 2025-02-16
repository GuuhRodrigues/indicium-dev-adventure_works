with

source as (

    select * from {{ source('sales', 'creditcard') }}

), 

renamed as (

    select
        cast(creditcardid as int) as id_cartao_credito
        ,cast(cardtype as string) as desc_motivo_venda
        ,cast(expmonth as int) as mes_vencimento
        ,cast(expyear as int) as ano_vencimento
        ,cast(modifieddate as timestamp) as data_modificacao
    from source

)

select * from renamed