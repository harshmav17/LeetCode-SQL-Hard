/* Write your T-SQL query statement below */
SELECT DISTINCT s1.*
FROM stadium s1, stadium s2, stadium s3
WHERE s1.people >= 100
AND s2.people >= 100
AND s3.people >= 100
AND ((s1.id = s2.id - 1 AND s1.id = s3.id - 2)
      OR (s1.id = s2.id + 1 AND s1.id = s3.id + 2)
      OR (s1.id = s2.id - 1 AND s1.id = s3.id + 1))
order by S1.id      