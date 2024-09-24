CREATE PROCEDURE GetStudentsByCriteria
    @Gender NVARCHAR(10) = NULL,
    @Age SMALLINT = NULL,
    @ParentalEducation NVARCHAR(50) = NULL,
    @StudyHours SMALLINT = NULL
AS
BEGIN
    SELECT *
    FROM exams
    WHERE (@Gender IS NULL OR gender = @Gender)
      AND (@Age IS NULL OR age = @Age)
      AND (@ParentalEducation IS NULL OR [parental_level_of_education] = @ParentalEducation)
      AND (@StudyHours IS NULL OR study_hours_per_week = @StudyHours);
END;