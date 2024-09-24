SELECT COLUMN_NAME AS subject
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'exams'
AND COLUMN_NAME IN ('math_score', 'reading_score', 'writing_score');