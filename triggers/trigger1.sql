CREATE TRIGGER trg_InsertStudent
ON exams
AFTER INSERT
AS
BEGIN
    INSERT INTO StudentLog (student_id, log_type, log_time)
    SELECT inserted.student_id, 'INSERT', GETDATE()
    FROM inserted;
END;