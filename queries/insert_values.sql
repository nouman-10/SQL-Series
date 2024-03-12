-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);


INSERT INTO YoutubeChannel (ChannelID, ChannelName, DateCreated)
VALUES (1, 'TechReviews', '2020-01-01');

INSERT INTO ChannelStats (ChannelID, SubscribersCount, TotalViews, Date)
VALUES (1, 5000, 100000, '2020-02-01');

INSERT INTO YoutubeChannel (ChannelID, ChannelName, DateCreated)
VALUES
(2, 'Cooking101', '2019-06-01'),
(3, 'WorkoutGuru', '2018-03-01');

INSERT INTO ChannelStats (ChannelID, SubscribersCount, TotalViews, Date)
VALUES
(2, 7000, 150000, '2020-07-01'),
(3, 10000, 300000, '2020-08-01');
