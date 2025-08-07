select * from {{source("library","books")}} as a
where a.author in ( select * from {{ref("librarybooks")}} limit 1 )