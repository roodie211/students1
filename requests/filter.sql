-- �������� ��������� ������� � ����������� ��������
SELECT DISTINCT *
INTO #TempTable
FROM exams;

-- �������� ���� ����� �� �������� �������
DELETE FROM exams;

-- ����������� ���������� ����� ������� � �������� �������
INSERT INTO exams
SELECT *
FROM #TempTable;

-- �������� ��������� �������
DROP TABLE #TempTable;
