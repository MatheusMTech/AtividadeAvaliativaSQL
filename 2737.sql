SELECT name, customers_number FROM lawyers
WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers)
UNION ALL
SELECT name, customers_number FROM lawyers
WHERE customers_number = (SELECT MIN(customers_number) FROM lawyers)
UNION ALL
SELECT 'Average', AVG(customers_number)::INTEGER FROM lawyers ;
