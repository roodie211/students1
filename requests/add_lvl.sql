UPDATE exams
SET math_level = CASE
                    WHEN ABS(CHECKSUM(NEWID())) % 3 = 0 THEN 'beginner'
                    WHEN ABS(CHECKSUM(NEWID())) % 3 = 1 THEN 'intermediate'
                    ELSE 'advanced'
                 END,
    reading_level = CASE
                        WHEN ABS(CHECKSUM(NEWID())) % 3 = 0 THEN 'beginner'
                        WHEN ABS(CHECKSUM(NEWID())) % 3 = 1 THEN 'intermediate'
                        ELSE 'advanced'
                    END,
    writing_level = CASE
                       WHEN ABS(CHECKSUM(NEWID())) % 3 = 0 THEN 'beginner'
                       WHEN ABS(CHECKSUM(NEWID())) % 3 = 1 THEN 'intermediate'
                       ELSE 'advanced'
                    END;