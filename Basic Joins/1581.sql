select v.customer_id, count(*) as count_no_trans
from Visits as v
left join Transactions as t
on v.visit_id = t.visit_id
where amount is null
group by v.customer_id