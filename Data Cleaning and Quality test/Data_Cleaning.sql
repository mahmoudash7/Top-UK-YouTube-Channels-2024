/*
# Data Cleaning Steps:

1- Remove unnecessary columns by onyl selected the ones
2- Extract the youtube channel names from the first columns
3- Rename the column names

*/

CREATE VIEW view_uk_youtubers_2024 AS
SELECT 
	CAST(SUBSTRING(NOMBRE, 1, CHARINDEX('@', NOMBRE)-1) AS varchar(100)) AS channel_name,
	total_subscribers,
	total_views,
	total_videos
FROM 
	top_uk_youtubers_2024
