SELECT 
    'math score' AS subject, AVG([math_score]) AS average_score
FROM exams
UNION
SELECT 
    'reading score' AS subject, AVG([reading_score]) AS average_score
FROM exams
UNION
SELECT 
    'writing score' AS subject, AVG([writing_score]) AS average_score
FROM exams;