with

source as (

    select * from {{ source('person', 'personphone') }}

), 

renamed as (

    select
        cast(businessentityid as int) as id_pessoa
        , cast(phonenumber as string) as telefone
        , cast(phonenumbertypeid as string) as tipo_telefone
        , cast(modifieddate as string) as data_modificacao
    from source

)

select * from renamed