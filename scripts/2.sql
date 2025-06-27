--誰是「比賽中最常超車」的車手？
--目的：
--排位落後但比賽進步最多的「逆襲王」
SELECT 
    Q.Driver,
    Q.Team,
    SUM(Q.Position - R.Position) AS TotalImprovement
FROM QualifyingResults Q
JOIN RaceResults R
    ON Q.Track = R.Track AND Q.Driver = R.Driver
GROUP BY Q.Driver, Q.Team
ORDER BY TotalImprovement DESC
LIMIT 5;
