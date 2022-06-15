# Write your MySQL query statement below


select customer_id,count(customer_id) as count_no_trans from Visits a left join Transactions b on a.visit_id=b.visit_id where b.amount is null group by a.customer_id order by count_no_trans;