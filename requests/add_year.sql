-- Обновление столбца случайными значениями от 2018 до 2024
UPDATE exams
SET year_of_exam = 2018 + ABS(CHECKSUM(NEWID()) % 7);