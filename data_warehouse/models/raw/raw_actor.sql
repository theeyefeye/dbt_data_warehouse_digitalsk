{{ config(materialized='table', schema='raw') }}

SELECT
	{{ dbt_utils.star(from=source('public', 'actor')) }}
FROM {{ source('public', 'actor') }}