--哪一站比賽的名次變動最大？
--目的：
--觀察哪個賽道的比賽結果和排位差距最大（代表比賽變數大）
SELECT 
    Q.Track,
    AVG(ABS(Q.Position - R.Position)) AS AvgGridChange
FROM QualifyingResults Q
JOIN RaceResults R
    ON Q.Track = R.Track AND Q.Driver = R.Driver
GROUP BY Q.Track
ORDER BY AvgGridChange DESC;
