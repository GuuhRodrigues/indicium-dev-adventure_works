with

source as (

    select * from {{ source('production', 'productcategory') }}

), 

renamed as (

    select
        cast(productcategoryid as int) as id_categoria
        ,cast(name as string) as desc_categoria
        ,cast(modifieddate as string) as data_modificacao
    from source

)

select * from renamed