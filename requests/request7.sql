DECLARE @StudyHours SMALLINT;

-- ��������� ��������
SET @StudyHours = 20;

SELECT *
FROM exams
WHERE study_hours_per_week = @StudyHours;