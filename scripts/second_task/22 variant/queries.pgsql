-- Получить все отправки, где количество находится в диапазоне от 300 до 750 включительно.
SELECT * FROM detail_numbers_for_project dnfp
WHERE dnfp.quantity BETWEEN 300 AND 750;

-- Получить все такие тройки "номера поставщиков-номера деталей-номера проектов", для которых выводимые поставщик, деталь и проект не размещены в одном городе.
SELECT p.producer_item, d.detail_item, pr.project_item FROM producers p, details d, projects pr
WHERE p.city <> d.city AND p.city <> pr.city AND d.city <> pr.city;

-- Получить все такие тройки "номера поставщиков-номера деталей-номера проектов", для которых никакие из двух выводимых поставщиков, деталей и проектов неразмещены в одном городе.
SELECT p.producer_item, d.detail_item, pr.project_item FROM producers p, details d, projects pr
WHERE p.city <> d.city OR p.city <> pr.city OR d.city <> pr.city;

-- Получить все пары названий городов, для которых поставщик из первого города обеспечивает проект во втором городе.
SELECT DISTINCT p.city, pr.city FROM producers p, projects pr
INNER JOIN detail_numbers_for_project dnfp ON dnfp.project_item = pr.project_item
WHERE dnfp.producer_item = p.producer_item;

-- Получить общее количество деталей Д1, поставляемых поставщиком П1.
SELECT SUM(dnfp.quantity) FROM detail_numbers_for_project dnfp
WHERE dnfp.producer_item = 'П1' AND dnfp.detail_item = 'Д1';

-- Получить номера проектов, использующих по крайней мере одну деталь, имеющуюся у поставщика П1.
SELECT dn.project_item FROM detail_numbers_for_project dn
WHERE dn.producer_item = 'П1';

--  Получить номера проектов, для которых среднее количество поставляемых деталей Д1 больше, чем наибольшее количество любых деталей, поставляемых для проекта ПР1.
SELECT dn.project_item FROM detail_numbers_for_project dn
WHERE (
  SELECT AVG(dn1.quantity) FROM detail_numbers_for_project dn1
  WHERE dn1.detail_item = 'Д1') > (
    SELECT MAX(dn2.quantity) FROM detail_numbers_for_project dn2
    WHERE dn2.project_item = 'ПР1');

-- Получить номера проектов, для которых не поставляются красные детали поставщиками из Лондона.
SELECT dn.project_item FROM detail_numbers_for_project dn
INNER JOIN details d ON d.detail_item = dn.detail_item
INNER JOIN producers p ON p.producer_item = dn.producer_item
WHERE d.color = 'Красный' AND p.city <> 'Лондон';

-- Получить номера поставщиков, поставляющих одну и ту же деталь для всех проектов.
SELECT dn.producer_item FROM detail_numbers_for_project dn
WHERE dn.detail_item = ALL (
  SELECT dn1.detail_item FROM detail_numbers_for_project dn1
  WHERE dn1.producer_item <> dn.producer_item);

-- Получить номера проектов, обеспечиваемых по крайней мере всеми деталями поставщика П1.
SELECT dn.project_item FROM detail_numbers_for_project dn
WHERE dn.detail_item = ALL (
  SELECT dn1.detail_item FROM detail_numbers_for_project dn1
  WHERE dn1.producer_item = 'П1');