{{ config(materialized='table', schema='raw') }}

SELECT
	{{ dbt_utils.star(from=source('public', 'address')) }}
FROM {{ source('public', 'address') }}