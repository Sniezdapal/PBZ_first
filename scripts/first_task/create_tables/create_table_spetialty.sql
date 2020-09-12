CREATE TABLE spetialties
(
	personal_number CHARACTER VARYING(4) REFERENCES teachers (personal_number),
	title CHARACTER VARYING(30)
);

INSERT INTO spetialties VALUES 
	('221Л', 'АСОИ'),
	('221Л', 'ЭВМ'),
	('222Л', 'ЭВМ'),
	('225Л', 'АСОИ'),
	('225Л', 'ЭВМ'),
	('430Л', 'СЛ'),
	('110Л', 'Международная экономика');