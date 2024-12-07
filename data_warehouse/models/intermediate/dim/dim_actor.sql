{{ config(materialized='table', schema='intermediate') }}

SELECT
	{{ dbt_utils.star(from=ref('raw_actor')) }}
FROM {{ ref('raw_actor') }}