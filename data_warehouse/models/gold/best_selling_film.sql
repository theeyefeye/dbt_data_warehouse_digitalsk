{{ config(materialized='table', schema='mart') }}

SELECT 
    df.title, 
    count(fp.rental_id) as cnt
FROM {{ ref('fact_payment') }} fp
LEFT JOIN {{ ref('dim_rental') }} dr on fp.rental_id = dr.rental_id
LEFT JOIN {{ ref('dim_inventory') }} di on dr.inventory_id = di.inventory_id
LEFT JOIN {{ ref('dim_film') }} df on di.film_id = df.film_id
GROUP BY df.title
ORDER BY cnt desc