-- —оздание временной таблицы с уникальными строками
SELECT DISTINCT *
INTO #TempTable
FROM exams;

-- ”даление всех строк из основной таблицы
DELETE FROM exams;

--  опирование уникальных строк обратно в основную таблицу
INSERT INTO exams
SELECT *
FROM #TempTable;

-- ”даление временной таблицы
DROP TABLE #TempTable;
