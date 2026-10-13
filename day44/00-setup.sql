DROP TABLE IF EXISTS favorites;
CREATE TABLE favorites (
  id INTEGER PRIMARY KEY,
  userId TEXT NOT NULL,
  movieId INTEGER NOT NULL,
  memo TEXT NOT NULL DEFAULT ''
);
INSERT INTO favorites (id, userId, movieId, memo) VALUES
(1, 'user-a', 101, '주말에 볼 영화'),
(2, 'user-b', 101, '친구가 추천한 영화'),
(3, 'user-a', 102, ''),
(4, 'user-c', 103, '다시 보고 싶은 영화'),
(5, 'user-a', 104, '가족과 볼 영화'),
(6, 'user-b', 105, ''),
(7, 'user-c', 101, 'OST가 좋은 영화'),
(8, 'user-a', 106, '친구와 볼 영화');
SELECT * FROM favorites ORDER BY id ASC;
