{{ config(
  materialized='table',
  unique_key='ID',
  schema='Salesforce'
) }}

SELECT top 10
    ID,
    IS_DELETED,
    MASTER_RECORD_ID

FROM {{ source('salesforce_account', 'ACCOUNT') }}
