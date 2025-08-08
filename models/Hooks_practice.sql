{# {{
    config( materialized='table',
            transient=false,
            pre_hook=["delete from customers where first_name='4'"]

            query_tag='Dbt_hook_query')
}} #}


{{
    config( materialized='table',
            transient=false,
            pre_hook=["use schema sc_myschema",
                      "insert into sample_tbl(NAME ,PHONENO,ADDRESS,PS_NUMBER) values('Priya',6756564545,'NA',102)"],

            query_tag='Dbt_hook_query')
}}

select * from sample_tbl where name='Priya'