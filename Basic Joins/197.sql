select id from( 
    select
    id, temperature, recordDate,
    lag(recordDate) over (order by recordDate) as prev_date,
    lag(temperature) over (order by recordDate) as prev_temp
    from Weather
) as t
where temperature > prev_temp and
datediff(recordDate, prev_date) = 1;