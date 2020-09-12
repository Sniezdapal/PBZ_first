CREATE TABLE subjects
(
	code_subjet_number CHARACTER VARYING(3) PRIMARY KEY,
	subject_name CHARACTER VARYING(15),
	hours_number INTEGER,
	spetialty CHARACTER VARYING(15),
	semester INTEGER
);

INSERT INTO subjects VALUES 
	('12П', 'Мини ЭВМ', 36, 'ЭВМ', 1),
	('14П', 'ПЭВМ', 72, 'ЭВМ', 2),
	('17П', 'СУБД ПК', 48, 'АСОИ', 4),
	('18П', 'ВКСС', 52, 'АСОИ', 6),
	('34П', 'Физика', 30, 'СД', 6),
	('22П', 'Аудит', 36, 'Бухучета', 3);