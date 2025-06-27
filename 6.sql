--哪個車隊在比賽表現最強？
--目的：
--用平均比賽名次來衡量整體戰力
SELECT 
    Team,
    AVG(Position) AS AvgRacePosition
FROM RaceResults
GROUP BY Team
ORDER BY AvgRacePosition ASC;
