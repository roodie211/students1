DECLARE @MathLevel NVARCHAR(50);

-- ��������� ��������
SET @MathLevel = 'beginner';

SELECT *
FROM exams
WHERE math_level = @MathLevel;