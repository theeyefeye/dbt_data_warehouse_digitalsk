{{ config(materialized='table', schema='intermediate') }}

SELECT
	{{ dbt_utils.star(from=ref('raw_film_actor')) }}
FROM {{ ref('raw_film_actor') }}