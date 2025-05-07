WITH ThreeMonthSalary AS (
    SELECT
        e1.id,
        e1.month,
        SUM(ISNULL(e2.salary, 0)) AS salary
    FROM hard.Employee e1
    LEFT JOIN hard.Employee e2
        ON e1.id = e2.id
        AND e2.month BETWEEN e1.month - 2 AND e1.month
    GROUP BY e1.id, e1.month
	--order by e1.id,e1.month
),
LatestMonth AS (
    SELECT id, MAX(month) AS latest_month
    FROM hard.Employee
    GROUP BY id
)

SELECT tms.id, tms.month, tms.salary
FROM ThreeMonthSalary tms
JOIN LatestMonth lm
    ON tms.id = lm.id
WHERE tms.month < lm.latest_month  
ORDER BY tms.id ASC, tms.month DESC;
