CREATE TABLE favorites (
  id INTEGER PRIMARY KEY,
  userId TEXT NOT NULL,
  movieId INTEGER NOT NULL,
  memo TEXT NOT NULL DEFAULT '',
  UNIQUE(userId, movieId)
  FOREIGN KEY (movieId) REFERENCES movies(id)
);

INSERT INTO favorites (id, userId, movieId, memo)
VALUES
  (1, 'user-a', 101, '주말에 볼 영화'),
  (2, 'user-b', 101, '친구가 추천한 영화'),
  (3, 'user-a', 102, '');

SELECT * FROM favorites ORDER BY id;
