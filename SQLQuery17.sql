select
(
  
  select count(*)::decimal from subscriptions
  where end_date is not null
  and end_date >= '2016-01-03'
  and end_date <= '2018-12-28'
) /
(
  select count(*)::decimal from subscriptions
  where end_date is null
  or end_date >= '2018-12-28'
) as churn