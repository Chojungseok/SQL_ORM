-- Movie.objects.all()

SELECT * FROM movies_movie ;

-- User.objects.all()
SELECT * FROM movies_user;

--  Movie.objects.all().order_by('year')
SELECT * FROM movies_movie ORDER BY year DESC;

-- User.objects.filter(age=31)
SELECT * FROM movies_user WHERE age = 31;

-- 
SELECT * FROM movies_user WHERE age < 20;


SELECT * FROM movies_user WHERE age >= 20 AND age < 30;

SELECT AVG(age) FROM movies_user;

-- 1번 영화의 평균 평점
SELECT MAX(value), AVG(value) FROM movies_score WHERE movie_id = 1;

SELECT COUNT(*) From movies_score WHERE user_id = 1;

-- Movie.objects.filter(Q(year__lt = 2000) | Q(year__gt=2010))
SELECT * FROM movies_movie WHERE year < 2000 OR year > 2010;



SELECT title, MAX(year) FROM movies_movie;





-- Movie.objects.filter(title__contains = 'the')
SELECT * FROM movies_movie WHERE title LIKE '%the%';



-- Movie.objects.filter(title__contains = 'the')
SELECT * FROM movies_movie WHERE title LIKE 'the%';

-- ORM에서 사용하려면 정규표현식을 사용해야 합니다.
SELECT * FROM movies_movie WHERE LIKE '%g__d%';


SELECT COUNT(DISTINCT country) FROM movies_user;

SELECT * FROM movies_user WHERE age BETWEEN 20 AND 29;

SELECT * From movies_movie WHERE year IN (2000, 2005, 2010);