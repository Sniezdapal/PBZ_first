CREATE TABLE student_groups
(
	code_group_number CHARACTER VARYING(3) PRIMARY KEY,
	group_name CHARACTER VARYING(5),
	persons_number INTEGER,
	spetialty CHARACTER VARYING(30),
	headman_surname CHARACTER VARYING(15)
);

INSERT INTO student_groups VALUES 
	('8Г', 'Э-12', 18, 'ЭВМ', 'Иванова'),
	('7Г', 'Э-15', 22, 'ЭВМ', 'Сеткин'),
	('4Г', 'АС-9', 24, 'АСОИ', 'Балабанов'),
	('3Г', 'АС-8', 20, 'АСОИ', 'Чижов'),
	('17Г', 'С-14', 29, 'СД', 'Амросов'),
	('12Г', 'М-6', 16, 'Международная экономика', 'Трубин'),
	('10Г', 'Б-4', 21, 'Бухучет', 'Зязюткин');