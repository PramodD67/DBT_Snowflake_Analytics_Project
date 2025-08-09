 --Working on other schema. Current schema connected to dbt is 'dbt_pd' but I want to create tables using dbt models in different schema and diff database then
--It create new database and schema
-- You cant set a warehouse using config directly. You can either define it in the profiles.yml or you can use pre_hooks to set it dynamically.

 {{
    config( materialized='table',
            transient=false,
            database='db_mydb',
            schema='SC_MYSCHEMA'

             )
 }}

 select 1 as id, 'Hello' as message