--joining house_imdb & house_episode, ordering by rating limiting result to the first 10 rows 
--to get top shows by rating 
SELECT 
    hi.season,
    episode_num,
    hi.title,
    imdb_rating,
    total_votes,
    us_viewers,
    hi.original_air_date,
    he.directed_by,
    he.written_by
FROM
    house.house_imdb AS hi
        JOIN
    house_episodes AS he ON he.episode_num_in_season = hi.episode_num
        AND he.season = hi.season
ORDER BY imdb_rating DESC
LIMIT 10;


-- to get top shows by total votes
-- join the filels and order by total votes descending 
SELECT 
    hi.season,
    episode_num,
    hi.title,
    imdb_rating,
    total_votes,
    us_viewers,
    hi.original_air_date,
    he.directed_by,
    he.written_by
FROM
    house.house_imdb AS hi
        JOIN
    house_episodes AS he ON he.episode_num_in_season = hi.episode_num
        AND he.season = hi.season
ORDER BY total_votes DESC
LIMIT 10;


-- to get top shows by US views
SELECT 
    hi.season,
    episode_num,
    hi.title,
    imdb_rating,
    total_votes,
    us_viewers,
    hi.original_air_date,
    he.directed_by,
    he.written_by
FROM
    house.house_imdb AS hi
        JOIN
    house_episodes AS he ON he.episode_num_in_season = hi.episode_num
        AND he.season = hi.season
ORDER BY us_viewers DESC
LIMIT 10;

-- to order the episodes by directors, join both fles on episode number and season.
SELECT 
    hi.season,
    episode_num,
    hi.title,
    imdb_rating,
    total_votes,
    us_viewers,
    hi.original_air_date,
    he.directed_by,
    he.written_by
FROM
    house.house_imdb AS hi
        JOIN
    house_episodes AS he ON he.episode_num_in_season = hi.episode_num
        AND he.season = hi.season
ORDER BY directed_by

