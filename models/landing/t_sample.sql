{{
    config
    (
        materalized= "view"
    )
}}

with source as (
select ID,NAME from 
{{ 
    source('landing','sample_tab') 
}}

)

select * from source