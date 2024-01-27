{{
    config
    (
        materalized= "view"
    )
}}
select $1:continent::varchar as continent,
              $1:country:name::varchar as name,
              $1:country:city::variant as city
      from
       @SNOWFLAKE_DEMO.LANDING.SNOW_STAGES/SAMPLE
    
    