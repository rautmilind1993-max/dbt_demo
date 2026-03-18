{{ config(materialized='table') }}
with current_times as(
    select current_date() as current_dt
)
select * from current_times