{% macro calculate_age (year) %}

(EXTRACT( YEAR FROM CURRENT_DATE() ) - {{ year }}) 

{% endmacro %}



































