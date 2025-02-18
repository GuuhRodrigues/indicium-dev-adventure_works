with

source as (

    select * from {{ source('person', 'emailaddress') }}

), 

renamed as (

    select
        cast(businessentityid as int) as id_pessoa
        , cast(emailaddressid as string) as id_email
        , cast(emailaddress as string) as email
        , cast(modifieddate as string) as data_modificacao
    from source

)

select * from renamed