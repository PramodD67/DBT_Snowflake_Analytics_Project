{{
    config( materialized='table',
            transient=false)
        
}}


select 
'Pramod' as name,
99999999 as phno,
'HB halli' as address,
100 as id
from dual