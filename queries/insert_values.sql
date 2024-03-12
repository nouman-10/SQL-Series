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

INSERT INTO YoutubeChannel (ChannelID, ChannelName, DateCreated)
VALUES
(4, 'TravelVlogs', '2017-04-01'),
(5, 'EducationHub', '2020-03-01'),
(6, 'FitnessFanatic', '2018-06-01'),
(7, 'MusicMasters', '2016-07-01'),
(8, 'ArtInspire', '2015-08-01'),
(9, 'ScienceToday', '2019-09-01'),
(10, 'MovieCritics', '2020-10-01'),
(11, 'GamingGeeks', '2017-11-01'),
(12, 'FoodLovers', '2016-12-01'),
(13, 'FashionForward', '2018-01-02');

INSERT INTO ChannelStats (ChannelID, SubscribersCount, TotalViews, Date)
VALUES
(4, 8000, 175000, '2020-07-01'),
(5, 22500, 450000, '2020-08-01'),
(6, 12000, 240000, '2020-09-01'),
(7, 18000, 360000, '2020-10-01'),
(8, 30000, 600000, '2020-11-01'),
(9, 50000, 1000000, '2020-12-01'),
(10, 75000, 1500000, '2021-01-01'),
(11, 100000, 2000000, '2021-02-01'),
(12, 150000, 3000000, '2021-03-01'),
(13, 200000, 4000000, '2021-04-01');
