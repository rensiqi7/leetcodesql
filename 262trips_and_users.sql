select t.Request_at as Day,
round(sum(case when t.Status Like 'cancelled%' then 1 else 0 end)/count(*),2) as 'Cancellation Rate'
from Trips t join Users u
on u.Users_Id=t.Client_Id
and t.Request_at between '2013-10-01' and '2013-10-03'
and u.Banned='No'
group by t.Request_at

/*
select
t.Request_at Day,
round(sum(case when t.Status = 'completed' then 0 else 1 end) / count(*), 2) 'Cancellation Rate'
from Trips t
inner join Users u
on t.Client_Id = u.Users_Id and u.Banned = 'No'
where t.Request_at between '2013-10-01' and '2013-10-03'
group by t.Request_at
*/
