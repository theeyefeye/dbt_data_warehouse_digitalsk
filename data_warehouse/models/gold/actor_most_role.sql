{{ config(materialized='table', schema='mart') }}

SELECT 
    dfa.actor_id, 
    da.first_name, 
    da.last_name, 
    count(film_id) as cnt
FROM {{ ref('dim_film_actor') }} dfa
LEFT JOIN {{ ref('dim_actor') }} da on dfa.actor_id = da.actor_id
GROUP BY dfa.actor_id, da.first_name, da.last_name
ORDER BY cnt desc