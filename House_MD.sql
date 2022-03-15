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

