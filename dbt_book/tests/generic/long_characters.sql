
{% test long_characters (model, column_name) %}
SELECT * FROM {{ model }}
WHERE LENGTH({{ column_name }}) > 15 
{% endtest %}