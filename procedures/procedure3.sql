CREATE PROCEDURE GetTopStudentsBySubject
    @Subject NVARCHAR(50)
AS
BEGIN
    DECLARE @subjectColumn NVARCHAR(50);
    SET @subjectColumn = CASE @Subject
                            WHEN 'math' THEN 'math_score'
                            WHEN 'reading' THEN 'reading_score'
                            WHEN 'writing' THEN 'writing_score'
                         END;
    EXEC('
        SELECT TOP 5 *
        FROM exams
        ORDER BY ' + @subjectColumn + ' DESC
    ');
END;