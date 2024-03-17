SELECT AVG(SubscribersCount) as AverageSubscribers
FROM ChannelStats
WHERE ChannelID IN (
    SELECT ChannelID
    FROM YoutubeChannel
    WHERE DateCreated > '2017-01-01'
)

SELECT ChannelID, 
			 SubscribersCount, 
			 (SELECT AVG(SubscribersCount) FROM ChannelStats) as AvgSubscriberCount
FROM ChannelStats;


SELECT ChannelID, SubscribersCount, Avg(SubscribersCount) as AvgSubscriberCount
FROM ChannelStats
GROUP BY ChannelID, SubscribersCount;

SELECT ChannelID, 
			 SubscribersCount, 
			 AVG(SubscribersCount) OVER () as AvgSubscriberCount
FROM ChannelStats;

SELECT * 
FROM (
	SELECT ChannelID, SubscribersCount, AVG(SubscribersCount) OVER () as AvgSubscriberCount
	FROM ChannelStats
	) as sub_query

WITH AvgSubscriberCountPerCategory_CTE AS (
    SELECT Category, AVG(SubscribersCount) AS AvgCategorySubscriberCount
    FROM ChannelStats JOIN YoutubeChannel
    ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
    WHERE Category IS NOT NULL
    GROUP BY Category
)
SELECT * FROM AvgSubscriberCountPerCategory_CTE;
-- SELECT * FROM AvgSubscriberCountPerCategory_CTE; (this will return an error)


WITH AvgSubscriberCountPerCategory_CTE AS (
    SELECT Category, AVG(SubscribersCount) AS AvgCategorySubscriberCount
    FROM ChannelStats JOIN YoutubeChannel
    ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
    WHERE Category IS NOT NULL
    GROUP BY Category
)
SELECT ChannelName, CTE.Category, CTE.AvgCategorySubscriberCount
FROM AvgSubscriberCountPerCategory_CTE as CTE
JOIN YoutubeChannel
ON CTE.Category = YoutubeChannel.Category
