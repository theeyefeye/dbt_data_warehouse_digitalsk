{{ config(materialized='table', schema='raw') }}

SELECT
    CAST(payment_id as INT) as payment_id,
    CAST(customer_id as INT) as customer_id,
    CAST(staff_id as INT) as staff_id,
    CAST(rental_id as INT) as rental_id,
    amount,
    payment_date
FROM {{ source('public', 'payment') }}