PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS favorites;
DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL
);

INSERT INTO movies (id, title)
VALUES
  (101, '인셉션'),
  (102, '인터스텔라'),
  (103, '다크 나이트');

PRAGMA foreign_keys;

SELECT * FROM movies ORDER BY id;
