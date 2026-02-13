{{ config(
    materialized='incremental',
    unique_key='product_id'
) }}

SELECT *
FROM {{ source('flipkart_order_details', 'FLIPKARD') }}
{% if is_incremental() %}
WHERE listing_date > (SELECT MAX(listing_date) FROM {{ this }})
{% endif %}
