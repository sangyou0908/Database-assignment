CREATE TABLE favorites (
  id INTEGER PRIMARY KEY,
  userId TEXT NOT NULL,
  movieId INTEGER NOT NULL,
  memo TEXT NOT NULL DEFAULT '',
  -- TODO 1: userId와 movieId 조합의 중복을 막는 제약조건을 작성합니다. 끝에 쉼표를 붙입니다.
  -- TODO 2: movieId가 movies.id를 참조하도록 외래 키를 작성합니다.
);

INSERT INTO favorites (id, userId, movieId, memo)
VALUES
  (1, 'user-a', 101, '주말에 볼 영화'),
  (2, 'user-b', 101, '친구가 추천한 영화'),
  (3, 'user-a', 102, '');

SELECT * FROM favorites ORDER BY id;
