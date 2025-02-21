with

source as (

    select * from {{ source('person', 'stateprovince') }}

), 

renamed as (

    select
        cast(stateprovinceid as int) as id_estado
        , cast(countryregioncode as string) as cod_pais
        , cast(name as string) as estado
        , cast(modifieddate as string) as data_modificacao
    from source

)

select * from renamed