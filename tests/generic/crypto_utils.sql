{% test assert_valid_btc_address(model, column_name) %}
    select
    *
    from {{ model }}
    where NOT (
        {{ column_name }} like '1%' OR
        {{ column_name }} like '3%' OR
        {{ column_name }} like 'bc1%'
    )
{% endtest %}