{{ config(materialized='table', schema='raw') }}

SELECT
	{{ dbt_utils.star(from=source('public', 'film')) }}
FROM {{ source('public', 'film') }}