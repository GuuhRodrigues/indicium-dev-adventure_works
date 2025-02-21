with

source as (

    select * from {{ source('sales', 'personcreditcard') }}

), 

renamed as (

    select
        cast(businessentityid as int) as id_pessoa
        ,cast(creditcardid as int) as id_cartao
        ,cast(modifieddate as timestamp) as data_modificacao
    from source

)

select * from renamed