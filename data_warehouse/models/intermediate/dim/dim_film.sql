{{ config(materialized='table', schema='intermediate') }}

SELECT
	{{ dbt_utils.star(from=ref('raw_film')) }}
FROM {{ ref('raw_film') }}