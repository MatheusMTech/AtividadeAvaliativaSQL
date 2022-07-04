SELECT customers.name, orders.id
FROM customers JOIN orders ON customers.id = orders.id_customers
WHERE DATE_PART('YEAR', orders.orders_date) = 2016
    AND DATE_PART('MONTH', orders.orders_date) BETWEEN 1 AND 6 ;