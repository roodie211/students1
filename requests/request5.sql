DECLARE @ParentalEducation NVARCHAR(50);

-- Установка значения
SET @ParentalEducation = 'some college';

SELECT 
    AVG(math_score) AS avg_math_score,
    AVG(reading_score) AS avg_reading_score,
    AVG(writing_score) AS avg_writing_score
FROM exams
WHERE parental_level_of_education = @ParentalEducation;