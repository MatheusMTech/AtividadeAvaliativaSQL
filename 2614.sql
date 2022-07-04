SELECT customers.name, rentals.rentals_date
FROM customers JOIN rentals ON customers.id = rentals.id_customers
WHERE DATE_PART('MONTH', rentals.rentals_date) = 9
AND DATE_PART('YEAR', rentals.rentals_date) = 2016 ;