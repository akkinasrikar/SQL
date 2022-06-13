# Write your MySQL query statement below
# 176 - ifnull and limit 1,1 
select ifnull((select distinct(salary) from employee order by salary desc limit 1,1),null) as SecondHighestSalary;