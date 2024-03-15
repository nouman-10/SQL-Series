SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s);

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition;



SELECT Category, COUNT(ChannelID) as NumberOfChannels
FROM YoutubeChannel
GROUP BY Category;

SELECT YEAR(DateCreated) as YearCreated, COUNT(ChannelID) as NumberOfChannels
FROM YoutubeChannel
GROUP BY YEAR(DateCreated);

SELECT YEAR(Date) as Year, AVG(SubscribersCount) as AverageSubscribers
FROM ChannelStats
GROUP BY YEAR(Date)
HAVING AVG(SubscribersCount) >= 20000;

SELECT Category, COUNT(ChannelID) as NumberOfChannels
FROM YoutubeChannel
WHERE Category IN ('Misc', 'Reviews', 'Education')
GROUP BY Category;

SELECT Category, COUNT(ChannelID) as NumberOfChannels
FROM YoutubeChannel
WHERE Category IN ('Misc', 'Reviews', 'Education')
GROUP BY Category
ORDER BY NumberOfChannels DESC, Category;

SELECT Category, COUNT(ChannelID) as NumberOfChannels
FROM YoutubeChannel
WHERE Category IN ('Misc', 'Reviews', 'Education')
GROUP BY Category
ORDER BY 2 DESC, 1;

SELECT YEAR(Date) as Year, AVG(SubscribersCount) as AverageSubscribers
FROM ChannelStats
WHERE TotalViews >= 100000
GROUP BY YEAR(Date)
HAVING AVG(SubscribersCount) > 10000
ORDER BY Year;
