-- Обновление балла студента
UPDATE exams
SET math_score = 52
WHERE student_id = 1;

-- Проверка логов изменений
SELECT * FROM score_changes WHERE student_id = 1;
