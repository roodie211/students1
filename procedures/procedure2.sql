CREATE PROCEDURE GetAvgScoresByMathLevel
    @MathLevel NVARCHAR(50)
AS
BEGIN
    SELECT 
        AVG(math_score) AS avg_math_score,
        AVG(reading_score) AS avg_reading_score,
        AVG(writing_score) AS avg_writing_score
    FROM exams
    WHERE math_level = @MathLevel;
END;