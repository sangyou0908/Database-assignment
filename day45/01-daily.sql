-- Day45 데일리 과제

-- TODO 1. id 30 / user-b / 영화 109 찜을 추가합니다. INSERT의 열 목록에서 memo는 생략합니다.

-- 추가 확인: memo는 빈 문자열입니다.
SELECT *
FROM favorites
WHERE id = 30;

-- 수정 전 확인: 이 행이 수정할 찜이 맞는지 확인합니다.
SELECT *
FROM favorites
WHERE id = 30;

-- TODO 2. id 30의 memo를 '주말에 다시 보기'로 변경합니다.

-- 수정 후 확인: 이 결과를 result-update.png로 캡처합니다.
SELECT *
FROM favorites
WHERE id = 30;

-- 삭제 전 확인: user-b의 영화 109 찜인지 확인합니다.
SELECT userId, movieId
FROM favorites
WHERE id = 30;

-- TODO 3. id 30인 찜 행만 삭제합니다.

-- 삭제 후 확인: 결과가 0행이어야 합니다.
SELECT userId, movieId
FROM favorites
WHERE id = 30;

-- 전체 확인: id 1~8의 데이터 8건이 그대로 남아 있어야 합니다. (이 결과를 result-delete.png로 캡처합니다.)
SELECT *
FROM favorites
ORDER BY id ASC;
