SELECT country, COUNT(*)
FROM movies_user
GROUP BY country;

SELECT country, AVG(value)
FROM movies_user 
JOIN movies_score
ON movies_user.id = movies_score.user_id
GROUP BY country;