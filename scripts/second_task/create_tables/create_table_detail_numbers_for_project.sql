CREATE TABLE detail_numbers_for_project
(
	producer_item CHARACTER VARYING(2) REFERENCES producers (producer_item),
	detail_item CHARACTER VARYING(2) REFERENCES details (detail_item),
	project_item CHARACTER VARYING(3) REFERENCES projects (project_item),
	quantity INTEGER,
	PRIMARY KEY(producer_item, detail_item, project_item)
);

INSERT INTO detail_numbers_for_project VALUES 
	('П1', 'Д1', 'ПР1', 200),
	('П1', 'Д1', 'ПР2', 700),
	('П2', 'Д3', 'ПР1', 400),
	('П2', 'Д2', 'ПР2', 200),
	('П2', 'Д3', 'ПР3', 200),
	('П2', 'Д3', 'ПР4', 500),
	('П2', 'Д3', 'ПР5', 600),
	('П2', 'Д3', 'ПР6', 400),
	('П2', 'Д3', 'ПР7', 800),
	('П2', 'Д5', 'ПР2', 100),
	('П3', 'Д3', 'ПР1', 200),
	('П3', 'Д4', 'ПР2', 500),
	('П4', 'Д6', 'ПР3', 300),
	('П4', 'Д6', 'ПР7', 300),
	('П5', 'Д2', 'ПР2', 200),
	('П5', 'Д2', 'ПР4', 100),
	('П5', 'Д5', 'ПР5', 500),
	('П5', 'Д5', 'ПР7', 100),
	('П5', 'Д6', 'ПР2', 200),
	('П5', 'Д1', 'ПР2', 100),
	('П5', 'Д3', 'ПР4', 200),
	('П5', 'Д4', 'ПР4', 800),
	('П5', 'Д5', 'ПР4', 400),
	('П5', 'Д6', 'ПР4', 500);