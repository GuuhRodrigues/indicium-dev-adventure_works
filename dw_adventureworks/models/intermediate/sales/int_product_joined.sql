with

product as (

        select * from {{ ref('stg_production__product')}}

), 

category as (
    
            select * from {{ ref('stg_production__productcategory')}}

),

subcategory as (
    
            select * from {{ ref('stg_production__productsubcategory')}}

),

joined_product as (

        select
            product.id_produto
            ,category.id_categoria
            ,subcategory.id_subcategoria
            ,product.cod_produto
            ,product.desc_produto
            ,product.preco_sugerido
            ,category.desc_categoria
            ,subcategory.desc_subcategoria
            ,product.data_modificacao
        from product
        left join subcategory on product.id_subcategoria = subcategory.id_subcategoria
        left join category on subcategory.id_categoria = category.id_categoria

    )
 
select * from joined_product