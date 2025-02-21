with

address as (

        select * from {{ ref('stg_person__address')}}

), 

country as (
    
            select * from {{ ref('stg_person__countryregion')}}

),

state as (
    
            select * from {{ ref('stg_person__stateprovince')}}

),

joined_address as (

        select
            address.id_endereco
            ,address.id_estado
            ,country.cod_pais
            ,address.endereco
            ,address.codigo_postal
            ,address.cidade
            ,state.estado
            ,country.pais
            ,address.data_modificacao
        from address
        left join state on address.id_estado = state.id_estado
        left join country on state.cod_pais = country.cod_pais

    )
 
select * from joined_address