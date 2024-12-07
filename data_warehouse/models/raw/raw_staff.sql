{{ config(materialized='table', schema='raw') }}

SELECT
	{{ dbt_utils.star(from=source('public', 'staff')) }}
FROM {{ source('public', 'staff') }}