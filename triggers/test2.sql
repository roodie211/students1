-- ���������� ����� ��������
UPDATE exams
SET math_score = 52
WHERE student_id = 1;

-- �������� ����� ���������
SELECT * FROM score_changes WHERE student_id = 1;
