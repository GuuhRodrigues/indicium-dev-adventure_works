with

sales_order_header as (

        select * from {{ ref('stg_sales__salesorderheader')}}

), 

sales_order_detail as (
    
            select * from {{ ref('stg_sales__salesorderdetail')}}

),

sales_order_header_reason as (
    
            select * from {{ ref('stg_sales__salesorderheadersalesreason')}}

),

sales_reason as (
    
            select * from {{ ref('stg_sales__salesreason')}}

),

joined_sale_details as (

        select
            {{ dbt_utils.generate_surrogate_key(['sales_order_header.id_ordem_venda', 'sales_order_detail.id_ordem_venda_detalhe', 'sales_order_header_reason.id_motivo_venda']) }} as sk_venda
            ,sales_order_header.id_ordem_venda
            ,sales_order_header_reason.id_motivo_venda as fk_motivo_venda
            ,sales_order_detail.id_ordem_venda_detalhe
            ,sales_order_detail.id_produto as fk_produto
            ,sales_order_header.id_cartao as fk_cartao
            ,sales_order_header.id_endereco as fk_endereco
            ,sales_reason.desc_motivo_venda
            ,sales_reason.motivo_venda
            ,sales_order_detail.qtd_ordem as qtd_ordem_venda
            ,sales_order_detail.preco_unitario
            ,sales_order_detail.desconto_preco_unitario
            ,sales_order_header.total_venda
            ,sales_order_header.subtotal
            ,sales_order_header.dat_venda
            ,sales_order_header.data_modificacao
        from sales_order_header
        left join sales_order_detail on sales_order_header.id_ordem_venda = sales_order_detail.id_ordem_venda
        left join sales_order_header_reason on sales_order_header.id_ordem_venda = sales_order_header_reason.id_ordem_venda
        left join sales_reason on sales_order_header_reason.id_motivo_venda = sales_reason.id_motivo_venda

    )
 
select * from joined_sale_details