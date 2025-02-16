with

source as (

    select * from {{ source('person', 'countryregion') }}

), 

renamed as (

    select
        cast(countryregioncode as int) as id_pais_regiao
        , cast(name as string) as nome_pais_regiao
        , cast(modifieddate as string) as data_modificacao
    from source

)

select * from renamed