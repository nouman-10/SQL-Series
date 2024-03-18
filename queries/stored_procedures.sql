CREATE PROCEDURE sp_ChannelReport
    @channelID int,
    @date date
AS
BEGIN
    SELECT
        ChannelID,
        SubscribersCount,
        TotalViews
    FROM
        ChannelStats
    WHERE
        ChannelID = @channelID AND
        Date = @date;
END;

EXEC sp_ChannelReport 1, '2020-02-01';

CREATE PROCEDURE sp_TotalViewsByCategory
    @category nvarchar(50)
AS
BEGIN
    SELECT
        Category,
        SUM(TotalViews) as TotalViews
    FROM
        YoutubeChannel YC JOIN ChannelStats CS
        ON YC.ChannelID = CS.ChannelID
    WHERE
        Category = @category
	GROUP BY
		Category;
END;

EXEC sp_TotalViewsByCategory @Category='Fitness'

CREATE PROCEDURE sp_TopGrowthChannels
    @startDate date,
    @endDate date
AS
BEGIN
    -- Create a Temp Table to hold the initial and final subscriber counts for each channel
    CREATE TABLE #SubscriberGrowth
    (
        ChannelID int,
        InitialSubscribers int,
        FinalSubscribers int
    );

    -- Fill the Temp Table with the initial and final subscriber counts
    INSERT INTO #SubscriberGrowth
    SELECT
        ChannelID,
        (SELECT SubscribersCount FROM ChannelStats WHERE Date = @startDate) AS InitialSubscribers,
        (SELECT SubscribersCount FROM ChannelStats WHERE Date = @endDate) AS FinalSubscribers
    FROM
        YoutubeChannel;

    -- Query the Temp Table to find out the top 5 channels with the highest growth
    SELECT
        ChannelID,
        (FinalSubscribers - InitialSubscribers) AS SubscriberGrowth
    FROM
        #SubscriberGrowth
    ORDER BY
        SubscriberGrowth DESC
    LIMIT 5;

    -- Cleanup: Drop the Temp Table
    DROP TABLE #SubscriberGrowth;
END;
