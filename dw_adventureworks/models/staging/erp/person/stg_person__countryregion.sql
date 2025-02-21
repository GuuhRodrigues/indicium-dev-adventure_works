with

source as (

    select * from {{ source('person', 'countryregion') }}

), 

renamed as (

    select
        cast(countryregioncode as string) as cod_pais
        , cast(name as string) as pais
        , cast(modifieddate as string) as data_modificacao
    from source

)

select * from renamed