--每站比賽前十名的車手分布
--了解哪些車手最常進入積分區（Top 10）
SELECT 
    Driver,
    COUNT(*) AS Top10Finishes
FROM RaceResults
WHERE Position <= 10
GROUP BY Driver
ORDER BY Top10Finishes DESC;
