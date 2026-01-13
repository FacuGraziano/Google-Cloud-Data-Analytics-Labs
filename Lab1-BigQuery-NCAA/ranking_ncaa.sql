SELECT
first_name,
last_name,
team_name,
sum(points) as total_points
FROM `bigquery-public-data.ncaa_basketball.mbb_players_games_sr`
group by first_name, last_name, team_name
order by total_points desc;
