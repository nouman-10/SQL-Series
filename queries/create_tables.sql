CREATE TABLE YoutubeChannel (
    ChannelID int,
    ChannelName varchar(255),
    DateCreated date
);

CREATE TABLE ChannelStats (
    ChannelID int,
    SubscribersCount int,
    TotalViews int,
    Date date
);
