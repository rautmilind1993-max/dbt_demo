SELECT
    CUSTOMER_ID AS customer_id,
    TRIM(FIRST_NAME) as FIRST_NAME,
    TRIM(LAST_NAME) as LAST_NAME,
    TRIM(FIRST_NAME) || ' ' || TRIM(LAST_NAME) AS customer_name,
    LOWER(EMAIL) AS email,
    UPPER(GENDER) AS gender,
    DATE_OF_BIRTH AS date_of_birth,
    INITCAP(CITY) AS city,
    UPPER(STATE) AS state,
    UPPER(COUNTRY) AS country,
    CAST(CREATED_AT AS TIMESTAMP) AS created_at,
    CAST(UPDATED_AT AS TIMESTAMP) AS updated_at
FROM {{ source('raw', 'CUSTOMERS') }}