with current_times as(
    select current_date() as todays_date
)
select * from current_times