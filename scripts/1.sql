--誰是比賽中表現最穩定的車手？
--目的：
--看誰的排位成績和比賽成績差距最小（不論好壞，都能穩定發揮）
SELECT 
    Q.Driver,
    Q.Team,
    AVG(ABS(Q.Position - R.Position)) AS AvgPositionGap
FROM QualifyingResults Q
JOIN RaceResults R
    ON Q.Track = R.Track AND Q.Driver = R.Driver
GROUP BY Q.Driver, Q.Team
ORDER BY AvgPositionGap ASC;
