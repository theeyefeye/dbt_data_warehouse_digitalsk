{{ config(materialized='table', schema='mart') }}

SELECT
    payment_date,
    SUM(amount) as total_revenue
FROM {{ ref('fact_payment') }} fp
LEFT JOIN {{ ref('dim_rental') }} dr ON fp.rental_id = dr.rental_id
GROUP BY payment_date