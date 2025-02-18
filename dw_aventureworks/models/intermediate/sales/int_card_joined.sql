with

card as (

        select * from {{ ref('stg_sales__creditcard')}}

), 

person_card as (
    
            select * from {{ ref('stg_sales__personcreditcard')}}

),

joined_card as (

        select
            card.id_cartao
            ,person_card.id_pessoa
            ,card.tipo_cartao
            ,card.vencimento
            ,card.data_modificacao
        from card
        left join person_card on card.id_cartao = person_card.id_cartao

    )
 
select * from joined_card