
SELECT project_item FROM detail_numbers_for_project
WHERE producer_item = 'П1' AND project_item NOT IN(
	SELECT project_item FROM detail_numbers_for_project
  	WHERE producer_item != 'П1'
);
	