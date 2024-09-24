DECLARE @MathLevel NVARCHAR(50);

-- Установка значения
SET @MathLevel = 'beginner';

SELECT *
FROM exams
WHERE math_level = @MathLevel;