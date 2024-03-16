
SELECT YoutubeChannel.ChannelName, ChannelStats.TotalViews, ChannelStats.SubscribersCount
FROM YoutubeChannel
INNER JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID;

SELECT YoutubeChannel.ChannelName, ChannelStats.TotalViews
FROM YoutubeChannel
LEFT JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID;

SELECT YoutubeChannel.ChannelName, ChannelStats.TotalViews
FROM YoutubeChannel
RIGHT JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID;

SELECT YoutubeChannel.ChannelName, ChannelStats.TotalViews
FROM YoutubeChannel
FULL JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID;

SELECT yc.ChannelName, cs.TotalViews
FROM YoutubeChannel AS yc
JOIN ChannelStats AS cs
ON yc.ChannelID = cs.ChannelID;

SELECT ChannelName, TotalViews
FROM YoutubeChannel AS yc
JOIN ChannelStats AS cs
ON yc.ChannelID = cs.ChannelID;


SELECT *
FROM YoutubeChannel AS yc
JOIN ChannelStats AS cs
ON yc.ChannelID = cs.ChannelID;

SELECT yc.ChannelID, ChannelName, TotalViews
FROM YoutubeChannel AS yc
JOIN ChannelStats AS cs
ON yc.ChannelID = cs.ChannelID;
