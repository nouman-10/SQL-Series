-- ALTER TABLE table_name
-- ADD column_name column_type;

-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- DROP TABLE IF EXISTS table_name;

-- ALTER TABLE table_name
-- DROP COLUMN column_name;

-- ALTER TABLE table_name
-- RENAME COLUMN old_column_name TO new_column_name;

-- ALTER TABLE table_name
-- ALTER COLUMN column_name TYPE new_data_type;


-- Adding new column
ALTER TABLE YoutubeChannel
ADD Category varchar(255);

-- Updating values in the new column
UPDATE YoutubeChannel
SET Category = 'Reviews'
WHERE ChannelName IN ('TechReviews', 'MovieCritics');

UPDATE YoutubeChannel
SET Category = 'Cooking'
WHERE ChannelName IN ('Cooking101', 'FoodLovers');

UPDATE YoutubeChannel
SET Category = 'Fitness'
WHERE ChannelName IN ('WorkoutGuru', 'FitnessFanatic');

UPDATE YoutubeChannel
SET Category = 'Misc'
WHERE ChannelName IN ('TravelVlogs', 'GamingGeeks', 'FashionForward');

UPDATE YoutubeChannel
SET Category = 'Education'
WHERE ChannelName IN ('EducationHub', 'ScienceToday');

UPDATE YoutubeChannel
SET Category = 'Art'
WHERE ChannelName IN ('MusicMasters', 'ArtInspire');

-- Dropping and recreating the table
DROP TABLE IF EXISTS YoutubeChannel;

CREATE TABLE YoutubeChannel (
    ChannelID INT PRIMARY KEY,
    ChannelName VARCHAR(255),
    DateCreated DATE,
    Category VARCHAR(255)
);

INSERT INTO YoutubeChannel (ChannelID, ChannelName, DateCreated, Category) VALUES
(1, 'TechReviews', '2020-01-01', 'Reviews'),
(2, 'Cooking101', '2019-06-01', 'Cooking'),
(3, 'WorkoutGuru', '2018-03-01', 'Fitness'),
(4, 'TravelVlogs', '2017-04-01', 'Misc'),
(5, 'EducationHub', '2020-03-01', 'Education'),
(6, 'FitnessFanatic', '2018-06-01', 'Fitness'),
(7, 'MusicMasters', '2016-07-01', 'Art'),
(8, 'ArtInspire', '2015-08-01', 'Art'),
(9, 'ScienceToday', '2019-09-01', 'Education'),
(10, 'MovieCritics', '2020-10-01', 'Reviews'),
(11, 'GamingGeeks', '2017-11-01', 'Misc'),
(12, 'FoodLovers', '2016-12-01', 'Cooking'),
(13, 'FashionForward', '2018-01-02', 'Misc');

