DECLARE @Gender NVARCHAR(10);
DECLARE @Age SMALLINT;

-- Установка значений
SET @Gender = 'female';
SET @Age = 18;

SELECT *
FROM exams
WHERE gender = @Gender AND age = @Age;