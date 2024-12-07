{{ config(materialized='table', schema='raw') }}

SELECT
	{{ dbt_utils.star(from=source('public', 'customer')) }}
FROM {{ source('public', 'customer') }}