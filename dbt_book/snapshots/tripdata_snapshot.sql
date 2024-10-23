{% snapshot tripdata_snapshot %}

{{
  config(      
    target_schema='snapshots',      
    strategy='check',      
    unique_key='_id',      
    check_cols='all'    
  )  
}}  

SELECT * FROM {{ source('nyc_bikes_nyc_bikes2014', '2014-tripdata') }}

{% endsnapshot %}
