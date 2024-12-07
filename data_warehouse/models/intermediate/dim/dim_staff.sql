{{ config(materialized='table', schema='intermediate') }}

SELECT
	{{ dbt_utils.star(from=ref('raw_staff')) }}
FROM {{ ref('raw_staff') }}