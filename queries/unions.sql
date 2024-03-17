CREATE TABLE DeletedYoutubeChannel
(
ChannelID INT,
ChannelName VARCHAR(255),
DateCreated DATE,
Category VARCHAR(255)
);

INSERT INTO DeletedYoutubeChannel
VALUES
(1, 'Mathology', '2010-01-01', 'Education'),
(13, 'FashionForward', '2018-01-02', 'Misc'),
(3, 'ClassicalArt', '2012-03-03', 'Art'),
(6, 'FitnessFanatic', '2018-06-01', 'Fitness');

SELECT * FROM YoutubeChannel
UNION
SELECT * FROM DeletedYoutubeChannel;

SELECT * FROM YoutubeChannel
UNION ALL
SELECT * FROM DeletedYoutubeChannel;

SELECT Category, ChannelName FROM YoutubeChannel
UNION
SELECT ChannelName, Category FROM DeletedYoutubeChannel;

SELECT ChannelID, DateCreated FROM YoutubeChannel
UNION
SELECT TotalViews, Date FROM ChannelStats
