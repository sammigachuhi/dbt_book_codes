
{% test long_characters (model, column_name) %}
{{ config(severity = 'warn') }}
SELECT * FROM {{ model }}
WHERE LENGTH({{ column_name }}) > 15 
{% endtest %}