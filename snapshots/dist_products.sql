{% snapshot dist_products %}

{{
    config(
        unique_key='product_id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

SELECT
    product_id,
    product_name,
    category,
    sub_category,
    brand,
    unit_cost,
    created_at,
    updated_at
FROM {{ ref('stg_products') }}

{% endsnapshot %}