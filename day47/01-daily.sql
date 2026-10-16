SELECT /* TODO: 사용자 ID, 영화 제목, 메모 */
FROM favorites
JOIN movies ON /* TODO: 두 테이블을 연결할 조건 */
WHERE favorites.memo = ''
ORDER BY favorites.id ASC;

SELECT /* TODO: 메모가 없는 찜 수를 집계하고 emptyMemoCount로 표시 */
FROM favorites
WHERE memo = '';

SELECT userId, /* TODO: 사용자별 메모가 없는 찜 수를 emptyMemoCount로 표시 */
FROM favorites
WHERE memo = ''
GROUP BY /* TODO: 같은 사용자끼리 묶을 기준 열 */
ORDER BY userId ASC;
