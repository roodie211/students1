SELECT 'math' AS subject, math_level AS level, COUNT(*) AS student_count
FROM exams
GROUP BY math_level
UNION ALL
SELECT 'reading' AS subject, reading_level AS level, COUNT(*) AS student_count
FROM exams
GROUP BY reading_level
UNION ALL
SELECT 'writing' AS subject, writing_level AS level, COUNT(*) AS student_count
FROM exams
GROUP BY writing_level;