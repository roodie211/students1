CREATE TRIGGER trg_LogScoreChanges
ON exams
AFTER UPDATE
AS
BEGIN
    IF UPDATE(math_score)
    BEGIN
        INSERT INTO score_changes (student_id, subject, old_score, new_score)
        SELECT i.student_id, 'math', d.math_score, i.math_score
        FROM inserted i
        JOIN deleted d ON i.student_id = d.student_id
        WHERE i.math_score <> d.math_score;
    END
    IF UPDATE(reading_score)
    BEGIN
        INSERT INTO score_changes (student_id, subject, old_score, new_score)
        SELECT i.student_id, 'reading', d.reading_score, i.reading_score
        FROM inserted i
        JOIN deleted d ON i.student_id = d.student_id
        WHERE i.reading_score <> d.reading_score;
    END
    IF UPDATE(writing_score)
    BEGIN
        INSERT INTO score_changes (student_id, subject, old_score, new_score)
        SELECT i.student_id, 'writing', d.writing_score, i.writing_score
        FROM inserted i
        JOIN deleted d ON i.student_id = d.student_id
        WHERE i.writing_score <> d.writing_score;
    END
END;