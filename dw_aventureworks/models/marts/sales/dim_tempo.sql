with

int_sale_details_joined as (

        select * from {{ ref('int_sale_details_joined')}}

), 


dim_tempo as (

        select
            {{ dbt_utils.generate_surrogate_key(['int_sale_details_joined.sk_venda','int_sale_details_joined.dat_venda']) }} as sk_tempo
            ,int_sale_details_joined.dat_venda as data
            ,to_char(int_sale_details_joined.dat_venda, 'MM/YYYY') as competencia
            ,month(int_sale_details_joined.dat_venda) as mes
            ,year(int_sale_details_joined.dat_venda) as ano
        from int_sale_details_joined

    )
 
select * from dim_tempo