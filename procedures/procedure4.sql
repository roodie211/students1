CREATE PROCEDURE GetStudentStatistics
AS
BEGIN
    SELECT 'Gender' AS Criteria, gender AS Category, COUNT(*) AS Count
    FROM exams
    GROUP BY gender
    UNION ALL

    SELECT 'Age' AS Criteria, CAST(age AS NVARCHAR(50)) AS Category, COUNT(*) AS Count
    FROM exams
    GROUP BY age
    UNION ALL

    SELECT 'Parental Education' AS Criteria, parental_level_of_education AS Category, COUNT(*) AS Count
    FROM exams
    GROUP BY parental_level_of_education;
END;