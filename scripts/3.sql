--最快單圈的王者是誰？
--目的：
--計算最快圈速出現最多的車手
SELECT 
    Driver,
    COUNT(*) AS FastestLaps
FROM RaceResults
WHERE "Set Fastest Lap" = 'Yes'
GROUP BY Driver
ORDER BY FastestLaps DESC;
