SELECT ChannelName, SubscribersCount
FROM ChannelStats
JOIN YoutubeChannel ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
ORDER BY SubscribersCount DESC;

SELECT TOP 1 ChannelName, TotalViews
FROM ChannelStats
JOIN YoutubeChannel ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
ORDER BY TotalViews DESC;

SELECT Category, AVG(TotalViews) as AverageViews
FROM ChannelStats
JOIN YoutubeChannel ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
WHERE Category = 'Fitness'
GROUP BY Category;

SELECT Category, AVG(TotalViews) as AverageViews
FROM ChannelStats
JOIN YoutubeChannel ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
WHERE Category <> 'Fitness'
GROUP BY Category;

SELECT Category, SUM(TotalViews) as SumViews
FROM ChannelStats
JOIN YoutubeChannel ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
GROUP BY Category
ORDER BY SumViews DESC;

SELECT Category, SUM(TotalViews) as SumViews
FROM ChannelStats
JOIN YoutubeChannel ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
WHERE Category IS NOT NULL
GROUP BY Category
ORDER BY SumViews DESC;

SELECT Category, SUM(TotalViews) / COUNT(*) as AvgViewsPerChannelPerCategory, COUNT(*)
FROM ChannelStats
JOIN YoutubeChannel ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
WHERE Category IS NOT NULL
GROUP BY Category
ORDER BY AvgViewsPerChannelPerCategory DESC;

SELECT Date, TotalViews
FROM ChannelStats
JOIN YoutubeChannel ON ChannelStats.ChannelID = YoutubeChannel.ChannelID
WHERE ChannelName = 'TechReviews'
ORDER BY Date;
