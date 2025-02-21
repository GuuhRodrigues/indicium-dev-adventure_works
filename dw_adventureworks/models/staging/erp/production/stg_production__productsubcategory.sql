with

source as (

    select * from {{ source('production', 'productsubcategory') }}

), 

renamed as (

    select
        cast(productsubcategoryid as int) as id_subcategoria
        ,cast(productcategoryid as int) as id_categoria
        ,cast(name as string) as desc_subcategoria
        ,cast(modifieddate as string) as data_modificacao
    from source

)

select * from renamed