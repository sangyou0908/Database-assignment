-- 01. 영화 101을 찜한 사용자의 userId와 memo 조회하기 (3행)
SELECT userId, memo
FROM favorites
WHERE movieId = 101

-- 02. user-a가 영화 104에 남긴 memo만 조회하기 (1행)
SELECT userId, movieId, memo
FROM favorites
WHERE userId = 'user-a'
AND movieId = 104;

-- 03. user-c의 찜에서 movieId와 memo를 조회하고, 영화 ID 내림차순으로 최대 1행 가져오기
SELECT userId, movieId, memo
FROM favorites
WHERE userId = 'user-c'
ORDER BY movieId DESC
LIMIT 1;

-- 04. 03번에서 LIMIT만 제외한 별도 SQL 작성하기 (103 → 101 순서, 2행)
SELECT userId, movieId, memo
FROM favorites
WHERE userId = 'user-c'
ORDER BY movieId DESC;
