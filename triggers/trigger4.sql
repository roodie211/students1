CREATE TRIGGER trg_AddNewSubject
ON Subjects
AFTER INSERT
AS
BEGIN
    DECLARE @SubjectName NVARCHAR(100);

    SELECT @SubjectName = inserted.subject_name
    FROM inserted;

    DECLARE @CreateTableSQL NVARCHAR(MAX);
    SET @CreateTableSQL = 'CREATE TABLE ' + QUOTENAME(@SubjectName + 'Scores') + ' (
        student_id SMALLINT,
        score SMALLINT
    )';

    EXEC sp_executesql @CreateTableSQL;
END;