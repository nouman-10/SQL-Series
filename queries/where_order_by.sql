-- SELECT column1, column2, ..., columnN
-- FROM tableName
-- WHERE condition
  

SELECT *
FROM YoutubeChannel
WHERE DateCreated > '2020-01-01';

SELECT *
FROM ChannelStats
WHERE ChannelID = '3';

SELECT *
FROM YoutubeChannel
WHERE ChannelName = 'TechReviews';

SELECT *
FROM ChannelStats
WHERE SubscribersCount >= 10000;

SELECT *
FROM YoutubeChannel
ORDER BY DateCreated ASC;

SELECT *
FROM YoutubeChannel
ORDER BY ChannelName DESC;

SELECT *
FROM YoutubeChannel
ORDER BY DateCreated ASC, ChannelName ASC;

SELECT *
FROM ChannelStats
ORDER BY SubscribersCount ASC, TotalViews DESC;
