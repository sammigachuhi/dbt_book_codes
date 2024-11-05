SELECT *, 
{{ calculate_age("birth_year")}} AS AGE
FROM 
{{ ref('citi_trips_long') }}














