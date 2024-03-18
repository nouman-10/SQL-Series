CREATE TABLE #TopChannels
(
    ChannelID int,
    ChannelName varchar(255),
    SubscribersCount int
)

INSERT INTO #TopChannels (ChannelID, ChannelName, SubscribersCount)
SELECT TOP 10 yc.ChannelID, ChannelName, SubscribersCount
FROM YoutubeChannel yc
JOIN ChannelStats cs ON yc.ChannelID = cs.ChannelID
ORDER BY SubscribersCount DESC

SELECT * FROM #TopChannels

CREATE TABLE #AvgStatsPerCategory (
	ChannelName varchar(100),
	ChannelPerCategory int,
	AvgSubscribers int,
	AvgViews int
)

INSERT INTO #AvgStatsPerCategory
SELECT Category, Count(Category), Avg(SubscribersCount), Avg(TotalViews)
FROM ChannelStats
JOIN YoutubeChannel
ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
GROUP BY Category

SELECT * FROM #AvgStatsPerCategory
