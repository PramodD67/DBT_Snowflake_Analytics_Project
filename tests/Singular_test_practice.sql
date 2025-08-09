--Singular Test

--select * from customers where BIRTH_YEAR>1947

--use ref func

select * from {{ref("custseed")}}

