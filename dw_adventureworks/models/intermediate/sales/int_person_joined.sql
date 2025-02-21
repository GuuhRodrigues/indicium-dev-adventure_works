with

person as (

        select * from {{ ref('stg_person__person')}}

), 

email as (
    
            select * from {{ ref('stg_person__emailaddress')}}

),

phone as (
    
            select * from {{ ref('stg_person__personphone')}}

),

joined_person as (

        select
            person.id_pessoa
            ,concat(person.primeiro_nome, ' ', person.ultimo_nome) as nome_completo
            ,person.tipo_pessoa
            ,email.email
            ,phone.telefone
            ,phone.tipo_telefone
            ,person.data_modificacao
        from person
        left join email on person.id_pessoa = email.id_pessoa
        left join phone on person.id_pessoa = phone.id_pessoa

    )
 
select * from joined_person