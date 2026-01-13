WITH rankings AS (
SELECT
RANK() OVER (ORDER BY points DESC) AS ranking,
first_name,
last_name,
team_name,
points
FROM
`bigquery-public-data.ncaa_basketball.mbb_players_games_sr`
)
SELECT
ranking ,
first_name,
last_name,
team_name,
points
FROM
rankings
WHERE
ranking<=10
ORDER BY
ranking;
