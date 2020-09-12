CREATE TABLE teachers
(
	personal_number CHARACTER VARYING(4) PRIMARY KEY,
	last_name CHARACTER VARYING(15),
	tacher_position CHARACTER VARYING(15),
	department CHARACTER VARYING(15),
	phone_number INTEGER
);

INSERT INTO teachers VALUES 
	('221Л', 'Фролов', 'Доцент', 'ЭВМ',  487),
	('222Л', 'Костин', 'Доцент', 'ЭВМ', 543),
	('225Л', 'Бойко', 'Профессор', 'АСУ', 112),
	('430Л', 'Глазов', 'Ассистент', 'ТФ', 421),
	('110Л', 'Петров', 'Ассистент', 'Экономики', 324);