ALTER TABLE exams ADD parent_id SMALLINT,
FOREIGN KEY (parent_id) REFERENCES parents(parent_id);