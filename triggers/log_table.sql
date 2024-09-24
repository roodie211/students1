CREATE TABLE StudentLog (
    log_id SMALLINT IDENTITY(1,1) PRIMARY KEY,
    student_id SMALLINT,
    log_type NVARCHAR(50),
    log_time DATETIME
);