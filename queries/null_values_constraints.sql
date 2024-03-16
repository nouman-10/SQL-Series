SELECT * 
FROM YoutubeChannel
WHERE ChannelID IS NULL


SELECT * 
FROM YoutubeChannel
WHERE ChannelID IS NOT NULL


INSERT INTO YoutubeChannel (ChannelID, ChannelName, Category, DateCreated)
VALUES
(NULL, 'TechTips', 'Misc', '2015-03-20'),
(15, 'FinanceInfo', NULL, '2018-06-15'),
(16, 'Baking101', 'Food', NULL);

-- Inserting multiple rows into ChannelStats with one query
INSERT INTO ChannelStats (ChannelID, SubscribersCount, TotalViews, Date)
VALUES
(14, NULL, 12000000, '2022-01-01'),
(15, 55000, NULL, '2022-01-02'),
(NULL, 70000, 9000000, '2022-01-01');


SELECT *
FROM YoutubeChannel
WHERE Category IS NULL

-- Selecting values where SubscribersCount is null
SELECT *
FROM ChannelStats
WHERE SubscribersCount IS NULL


--CREATE TABLE table_name (
--    column1 datatype constraint,
--    column2 datatype constraint,
--    column3 datatype constraint,
--    ....
--);

--ALTER TABLE table_name
--ALTER COLUMN column_name int NOT NULL;
