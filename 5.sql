--從 Pole Position 出發真的容易贏嗎？
--目的：
--計算「排位第一也贏得比賽」的次數
SELECT 
    COUNT(*) AS PoleToWin
FROM QualifyingResults Q
JOIN RaceResults R
    ON Q.Track = R.Track AND Q.Driver = R.Driver
WHERE Q.Position = 1 AND R.Position = 1;
