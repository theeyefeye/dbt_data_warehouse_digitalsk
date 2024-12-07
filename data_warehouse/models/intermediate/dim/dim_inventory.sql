{{ config(materialized='table', schema='intermediate') }}

SELECT
	{{ dbt_utils.star(from=ref('raw_inventory')) }}
FROM {{ ref('raw_inventory') }}