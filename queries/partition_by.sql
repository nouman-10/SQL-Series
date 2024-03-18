SELECT ChannelName, 
       Category, 
       COUNT(Category) OVER (PARTITION BY Category) as ChannelsPerCategory
FROM YoutubeChannel
JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID
WHERE Category IS NOT NULL;

SELECT ChannelName, 
       Category, 
       COUNT(Category) as ChannelsPerCategory
FROM YoutubeChannel
JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID
WHERE Category IS NOT NULL
GROUP BY Category, ChannelName;


SELECT ChannelName, 
       Category, 
       COUNT(Category) OVER (PARTITION BY Category) as ChannelsPerCategory,
       AVG(TotalViews) OVER (PARTITION BY Category) as AvgViewsPerCategory,
       MIN(TotalViews) OVER (PARTITION BY Category) as MinViewsPerCategory,
       SUM(TotalViews) OVER (PARTITION BY Category) as TotalViewsPerCategory
FROM YoutubeChannel
JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID
WHERE Category IS NOT NULL;


SELECT ChannelName, 
       Category, 
	   TotalViews,
       ROW_NUMBER() OVER (PARTITION BY Category ORDER BY TotalViews DESC) as 'Row Number',
       COUNT(Category) OVER (PARTITION BY Category) as ChannelsPerCategory,
       AVG(TotalViews) OVER (PARTITION BY Category) as AvgViewsPerCategory,
       MIN(TotalViews) OVER (PARTITION BY Category) as MinViewsPerCategory,
       SUM(TotalViews) OVER (PARTITION BY Category) as TotalViewsPerCategory
FROM YoutubeChannel
JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID
WHERE Category IS NOT NULL;
