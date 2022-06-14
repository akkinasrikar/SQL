# Write your MySQL query statement below
#select C.name as Customers from Customers C where C.id not in (select O.customerId from Orders O)
select name as Customers from Customers left join Orders on Customers.id=Orders.customerId where Orders.customerId is null;
