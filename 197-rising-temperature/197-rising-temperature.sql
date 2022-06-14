# Write your MySQL query statement below
select a.id from weather a,weather b where a.temperature>b.temperature and to_days(a.recorddate)-to_days(b.recorddate)=1;