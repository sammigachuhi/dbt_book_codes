{% test special_characters (model, column_name) %}
SELECT * FROM {{ model }}
WHERE {{ column_name }}
LIKE '%^[a-zA-Z0-9+-]%'
{% endtest %}