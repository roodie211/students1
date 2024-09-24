INSERT INTO parents (parent_id, parental_level_of_education)
SELECT number, 'Unknown'
FROM Numbers
WHERE number <= 999;