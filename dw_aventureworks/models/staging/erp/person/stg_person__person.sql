with

source as (

        select * from {{source("person", "person")}}

), 

renamed as (

        select
            cast(businessentityid as int) as id_pessoa,
            cast(persontype as string) as tipo_pessoa,
            cast(firstname as string) as primeiro_nome,
            cast(middlename as string) as nome_meio,
            cast(lastname as string) as ultimo_nome,
            cast(emailpromotion as int) as ind_promocao_email,
            cast(modifieddate as string) as data_modificacao
        from source

    )
 
select * from renamed