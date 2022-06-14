# Write your MySQL query statement below

# select email from Person group by email having count(email)>1;
select email from (select email,count(email) as c from person group by email) as ptable where c>1;