CREATE PROCEDURE GetAvgScoreByStudyHours
    @StudyHours SMALLINT
AS
BEGIN
    SELECT 
        AVG([math_score]) AS avg_math_score,
        AVG([reading_score]) AS avg_reading_score,
        AVG([writing_score]) AS avg_writing_score
    FROM exams
    WHERE study_hours_per_week = @StudyHours;
END;