with

dim_cartao as (

    select * from {{ ref('dim_cartao') }}

),

dim_solic_venda as (

    select * from {{ ref('dim_solic_venda') }}

),

dim_endereco as (

    select * from {{ ref('dim_endereco') }}

),

dim_pessoa as (

    select * from {{ ref('dim_pessoa') }}

),

dim_tempo as (

    select * from {{ ref('dim_tempo') }}

),

fat_vendas as (

        select
            dim_solic_venda.sk_venda
            ,dim_solic_venda.fk_cartao
            ,dim_solic_venda.fk_endereco
            ,dim_solic_venda.fk_produto
            ,dim_solic_venda.fk_motivo_venda
            ,{{ dbt_utils.generate_surrogate_key(['dim_solic_venda.sk_venda','dim_solic_venda.dat_venda']) }} as fk_tempo
            ,dim_pessoa.id_pessoa
            ,dim_solic_venda.qtd_ordem_venda
            ,dim_solic_venda.preco_unitario
            ,dim_solic_venda.desconto_preco_unitario
            ,dim_solic_venda.subtotal
        from dim_solic_venda
        left join dim_cartao on dim_solic_venda.fk_cartao = dim_cartao.id_cartao
        left join dim_pessoa on dim_cartao.id_pessoa = dim_pessoa.id_pessoa
        left join dim_endereco on dim_solic_venda.fk_endereco = dim_endereco.id_endereco
    )
 
select * from fat_vendas
