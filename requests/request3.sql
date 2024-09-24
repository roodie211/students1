SELECT TOP 10 
    *,
    ( [math_score] + [reading_score] + [writing_score] ) / 3.0 AS average_score
FROM exams
ORDER BY average_score DESC;