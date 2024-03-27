CREATE TABLE YoutubeChannelStats (
    ChannelName VARCHAR(255),
    Subscribers INT
);

INSERT INTO YoutubeChannelStats (ChannelName, Subscribers) VALUES
('Channel A', 100),
('Channel B', 200),
('Channel C', 300),
('Channel D', 400),
('Channel E', 500),
('Channel F', 600),
('Channel G', 700),
('Channel H', 700),
('Channel I', 800),
('Channel J', 1000),
('Channel K', 1000),
('Channel L', 1000),
('Channel M', 1100);;


SELECT ChannelName, Subscribers, RANK() OVER(ORDER BY Subscribers) AS Rank
FROM YoutubeChannelStats;

SELECT ChannelName, Subscribers, DENSE_RANK() OVER(ORDER BY Subscribers) AS DenseRank
FROM YoutubeChannelStats;

SELECT ChannelName, Subscribers, ROW_NUMBER() OVER(ORDER BY Subscribers) AS RowNumber
FROM YoutubeChannelStats;

SELECT ChannelName, Subscribers,
       RANK() OVER(ORDER BY Subscribers DESC) AS Rank,
       DENSE_RANK() OVER(ORDER BY Subscribers DESC) AS DenseRank,
       ROW_NUMBER() OVER(ORDER BY Subscribers DESC) AS RowNumber
FROM YoutubeChannelStats;
