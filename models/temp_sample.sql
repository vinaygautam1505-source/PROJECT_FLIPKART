{{ config(
    materialized='incremental',
    unique_key='product_id'
) }}

SELECT *
FROM {{ source('flipkart_order_details', 'FLIPKARD') }}
{% if is_incremental() %}
WHERE listing_at > (SELECT MAX(listing_at) FROM {{ this }})
{% endif %}
