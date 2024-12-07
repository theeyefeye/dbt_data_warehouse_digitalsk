{{ config(materialized='table', schema='raw') }}

SELECT
	{{ dbt_utils.star(from=source('public', 'inventory')) }}
FROM {{ source('public', 'inventory') }}