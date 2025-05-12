WITH cte as (
        SELECT *,ROW_NUMBER() OVER (PARTITION BY continent ORDER BY name) AS rk
        FROM Student
    )
SELECT
    MAX(case when continent = 'America' then name end) AS 'America',
    MAX(case when continent = 'Asia' then name end) AS 'Asia',
    MAX(case when continent = 'Europe' then name end) AS 'Europe'
FROM cte
GROUP BY rk;
