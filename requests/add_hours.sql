UPDATE exams
SET study_hours_per_week = ABS(CHECKSUM(NEWID()) % 33) + 8;