CREATE TABLE teacher_teaches_subjects
(
	code_group_number CHARACTER VARYING(3) REFERENCES student_groups (code_group_number),
	code_subjet_number CHARACTER VARYING(3) REFERENCES subjects (code_subjet_number), 
	personal_number CHARACTER VARYING(4) REFERENCES teachers (personal_number),
	classroom INTEGER
);

INSERT INTO teacher_teaches_subjects VALUES 
	('8Г', '12П', '222Л', 112),
	('8Г', '14П', '221Л', 220),
	('8Г', '17П', '222Л', 112),
	('7Г', '14П', '221Л', 220),
	('7Г', '17П', '222Л', 241),
	('7Г', '18П', '225Л', 210),
	('4Г', '12П', '222Л', 112),
	('4Г', '18П', '225Л', 210),
	('3Г', '12П', '222Л', 112),
	('3Г', '17П', '221Л', 241),
	('3Г', '18П', '225Л', 210),
	('17Г', '12П', '222Л', 112),
	('17Г', '22П', '110Л', 220),
	('17Г', '34П', '430Л', 118),
	('12Г', '12П', '222Л', 112),
	('12Г', '22П', '110Л', 210),
	('10Г', '12П', '222Л', 210),
	('10Г', '22П', '110Л', 210);