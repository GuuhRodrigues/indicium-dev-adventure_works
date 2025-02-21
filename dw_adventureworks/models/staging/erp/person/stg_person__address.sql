with 

source as (

    select * from {{ source('person', 'address') }}
    
), 

renamed as (

    select
        cast(addressid as int) as id_endereco
        , cast(stateprovinceid as int) as id_estado
        , cast(addressline1 as string) as endereco
        , cast(addressline2 as string) as endereco2
        , cast(city as string) as cidade
        , cast(postalcode as string) as codigo_postal
        , cast(modifieddate as string) as data_modificacao
    from source

)

select * from renamed