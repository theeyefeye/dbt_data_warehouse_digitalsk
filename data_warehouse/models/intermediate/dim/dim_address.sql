{{ config(materialized='table', schema='intermediate') }}

SELECT
	{{ dbt_utils.star(from=ref('raw_address')) }}
FROM {{ ref('raw_address') }}