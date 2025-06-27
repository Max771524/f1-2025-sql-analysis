--排位名次 vs 是否設最快圈速的關聯
--觀察是否越前面起跑越可能設下最快圈速
SELECT 
    Q.Position AS QualifyingPosition,
    COUNT(*) AS FastestLapCount
FROM QualifyingResults Q
JOIN RaceResults R
    ON Q.Track = R.Track AND Q.Driver = R.Driver
WHERE R."Set Fastest Lap" = 'Yes'
GROUP BY Q.Position
ORDER BY Q.Position;
