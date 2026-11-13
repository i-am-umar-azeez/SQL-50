select id, movie, description, rating from Cinema
where id % 2 >= 1 and description is not 'boring'
order by rating