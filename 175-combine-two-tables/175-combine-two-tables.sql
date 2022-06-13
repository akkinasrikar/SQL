# Write your MySQL query statement below
# 175 - left join

select firstname,lastname,city,state from person left join address on person.personid=address.personid;