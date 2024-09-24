CREATE TRIGGER trg_UpdateParentalEducation
ON parents
AFTER UPDATE
AS
BEGIN
    UPDATE e
    SET e.[parental_level_of_education] = i.[parental_level_of_education]
    FROM exams e
    INNER JOIN inserted i ON e.parent_id = i.parent_id;
END;