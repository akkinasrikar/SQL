# Write your MySQL query statement below
# select score,rank() over(order by score desc) as `rank` from scores;
# above sql output is 
# {"headers":["score","rank"],"values":[[4.00,1],[4.00,1],[3.85,3],[3.65,4], [3.65, 4], [3.50,6]]}

select score,dense_rank() over(order by score desc) as `rank` from scores;