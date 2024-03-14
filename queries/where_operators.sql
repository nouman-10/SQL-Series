SELECT *
FROM YoutubeChannel
WHERE ChannelName LIKE '%s';

SELECT *
FROM YoutubeChannel
WHERE ChannelName LIKE 'T%';

SELECT *
FROM YoutubeChannel
WHERE ChannelName LIKE '%oo%';

SELECT *
FROM YoutubeChannel
WHERE DateCreated < '2020-01-01' AND ChannelName LIKE 'T%';

SELECT *
FROM ChannelStats
WHERE SubscribersCount >= 20000 OR TotalViews <= 200000;

SELECT *
FROM YoutubeChannel
WHERE NOT ChannelName LIKE '%oo%';

SELECT *
FROM YoutubeChannel
WHERE ChannelName LIKE '%s' AND (ChannelName LIKE 'T%' OR ChannelName LIKE '%oo%');

SELECT *
FROM ChannelStats
WHERE SubscribersCount BETWEEN 10000 AND 50000;

SELECT *
FROM YoutubeChannel
WHERE ChannelName IN ('TechReviews', 'WorkoutGuru', 'FoodLovers')
