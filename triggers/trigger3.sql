CREATE TRIGGER trg_DeleteStudent
ON exams
AFTER DELETE
AS
BEGIN
    INSERT INTO StudentLog (student_id, log_type, log_time)
    SELECT deleted.student_id, 'DELETE', GETDATE()
    FROM deleted;
END;