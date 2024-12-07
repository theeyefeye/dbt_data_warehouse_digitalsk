{{ config(materialized='table', schema='raw') }}

SELECT
	{{ dbt_utils.star(from=source('public', 'rental')) }}
FROM {{ source('public', 'rental') }}