SELECT 
    math_level,
    AVG(math_score) AS avg_math_score,
    AVG(reading_score) AS avg_reading_score,
    AVG(writing_score) AS avg_writing_score
FROM exams
GROUP BY math_level;