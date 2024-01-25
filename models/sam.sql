-- models/account.sql

-- Ref to the source table
{{ config(
  materialized='table',
  unique_key='ID'
) }}

SELECT top 10
    ID,
    IS_DELETED,
    MASTER_RECORD_ID

FROM {{ source('salesforce_account', 'ACCOUNT') }}
