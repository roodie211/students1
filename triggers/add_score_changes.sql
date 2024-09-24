CREATE TABLE score_changes (
    change_id SMALLINT PRIMARY KEY IDENTITY(1,1),
    student_id SMALLINT,
    subject VARCHAR(50),
    old_score SMALLINT,
    new_score SMALLINT,
    change_date DATETIME DEFAULT GETDATE()
);