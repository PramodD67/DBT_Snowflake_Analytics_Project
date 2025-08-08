--select * from {{source('library','books')}} where book_id= {{var('book_id')}}

select * from {{source('library','books')}} where genre like '%{{var("genre_var")}}%' --limit {{var('limit_rows')}}