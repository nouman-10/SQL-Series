-- SELECT column1, column2, ..., columnN
-- FROM tableName

-- SELECT *
-- FROM tableName

  

SELECT ChannelID, ChannelName
FROM YoutubeChannel

SELECT *
FROM ChannelStats

SELECT TOP 5 *
FROM ChannelStats

SELECT DISTINCT(ChannelName)
FROM YoutubeChannel

SELECT COUNT(ChannelID)
FROM YoutubeChannel

SELECT COUNT(DISTINCT ChannelID)
FROM YoutubeChannel

SELECT MAX(SubscribersCount), MIN(SubscribersCount), AVG(SubscribersCount)
FROM ChannelStats

SELECT MAX(SubscribersCount) AS MaxSubscribers, MIN(SubscribersCount) AS MinSubscribers, AVG(SubscribersCount) AS AverageSubscribers
FROM ChannelStats
