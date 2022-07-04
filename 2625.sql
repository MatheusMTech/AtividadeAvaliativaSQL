SELECT REGEXP_REPLACE(natural_person.cpf, '([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})','\1.\2.\3-\4')
FROM customers RIGHT JOIN natural_person ON customers.id = natural_person.id_customers;