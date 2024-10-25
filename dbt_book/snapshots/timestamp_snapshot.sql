{% snapshot timestamp_snapshot %}

{{
  config(      
    target_schema='snapshots',      
    strategy='timestamp',      
    unique_key='_id',      
    updated_at='updated_at'    
  )  
}}  

SELECT * FROM `dbt-project-437116`.`nyc_bikes_nyc_bikes_nyc_bikes2014`.`nyc_bikes_timestamp`

{% endsnapshot %}