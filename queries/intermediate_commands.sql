SELECT ChannelName,
CASE
    WHEN SubscribersCount < 10000 THEN 'Small'
    WHEN SubscribersCount BETWEEN 10000 AND 100000 THEN 'Medium'
    ELSE 'Large'
END as ChannelSize
FROM ChannelStats 
JOIN YoutubeChannel
ON ChannelStats.ChannelID = YoutubeChannel.ChannelID;

CREATE TABLE LargeChannels (
	ChannelName varchar(255),
	SubscribersCount int,
	TotalViews int
)

INSERT INTO LargeChannels (ChannelName, SubscribersCount, TotalViews)
SELECT ChannelName, SubscribersCount, TotalViews
FROM YoutubeChannel
JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID
WHERE SubscribersCount > 100000;

SELECT ChannelName, SubscribersCount, TotalViews
INTO SmallChannels
FROM YoutubeChannel
JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID
WHERE SubscribersCount < 10000;

SELECT ChannelName, ISNULL(DateCreated, '2010-01-01') as DateCreated
FROM YoutubeChannel;

SELECT ChannelName, COALESCE(DateCreated, Date, '2010-01-01') as DateCreated
FROM YoutubeChannel
JOIN ChannelStats
ON YoutubeChannel.ChannelID = ChannelStats.ChannelID;
