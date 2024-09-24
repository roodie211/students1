DECLARE @Subject NVARCHAR(50);
DECLARE @SQL NVARCHAR(MAX);

-- Установка значения
SET @Subject = 'math_score';

SET @SQL = N'
SELECT *
FROM exams
WHERE [' + @Subject + '] = (
    SELECT MAX([' + @Subject + '])
    FROM exams
)';

EXEC sp_executesql @SQL;