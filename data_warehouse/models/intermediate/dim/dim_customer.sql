{{ config(materialized='table', schema='intermediate') }}

SELECT
	{{ dbt_utils.star(from=ref('raw_customer')) }}
FROM {{ ref('raw_customer') }}