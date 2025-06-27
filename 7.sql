--哪位車手常常「排得好、跑得差」？
--目的：
--用正向差距找出表現不穩者
SELECT 
    Q.Driver,
    Q.Team,
    SUM(Q.Position - R.Position) AS TotalChange
FROM QualifyingResults Q
JOIN RaceResults R
    ON Q.Track = R.Track AND Q.Driver = R.Driver
GROUP BY Q.Driver, Q.Team
ORDER BY TotalChange ASC
LIMIT 5;
