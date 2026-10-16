SELECT favorites.userId, movies.title, favorites.memo
FROM favorites
JOIN movies ON favorites.movieId = movies.id
WHERE favorites.memo = ''
ORDER BY favorites.id ASC;

SELECT COUNT(*) AS emptyMemoCount
FROM favorites
WHERE memo = '';

SELECT userId, COUNT(*) AS emptyMemoCount
FROM favorites
WHERE memo = ''
GROUP BY userId
ORDER BY userId ASC;
