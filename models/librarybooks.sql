{{
    config(materialized="table",
           transient=false,
           query_tag='dbt_query')
}}

select  a.author as maxborrowcount from {{source('library','books')}} a
 join {{source('library','borrowed_books')}} b on a.book_id=b.book_id  group by a.author order by count(*) desc

