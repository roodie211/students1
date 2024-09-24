INSERT INTO exams (gender, age, study_hours_per_week, race_ethnicity, parental_level_of_education, 
					lunch, test_preparation_course, math_level, math_score, 
					reading_level, reading_score, writing_level, writing_score, year_of_exam, parent_id)
VALUES ('male', 20, 28, 'group B', 'some college',
		'standard', 'completed', 'advanced', 80, 
		'advanced', 70, 'beginner', 75, 2021, 1000);

-- Проверка логов
SELECT * FROM StudentLog;