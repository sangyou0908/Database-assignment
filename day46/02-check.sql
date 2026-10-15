-- A
INSERT INTO favorites (id, userId, movieId, memo)
VALUES (10, 'user-a', 101, '다시 찜한 영화');

-- B
INSERT INTO favorites (id, userId, movieId, memo)
VALUES (11, 'user-a', 103, '다음 주에 볼 영화');

-- C
INSERT INTO favorites (id, userId, movieId, memo)
VALUES (12, 'user-b', 999, '새로 찜한 영화');

-- D
DELETE FROM movies
WHERE id = 103;

SELECT * FROM favorites ORDER BY id;

SELECT * FROM movies WHERE id = 103;
