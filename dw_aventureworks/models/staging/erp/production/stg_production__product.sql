with

source as (

    select * from {{ source('production', 'product') }}

), 

renamed as (

    select
        cast(productid as int) as id_produto
        ,cast(productsubcategoryid as int ) as id_subcategoria
        ,cast(name as string) as desc_produto
        ,cast(productnumber as string) as cod_produto
        ,cast(listprice as float) as preco_sugerido
        ,cast(modifieddate as string) as data_modificacao
    from source

)

select * from renamed