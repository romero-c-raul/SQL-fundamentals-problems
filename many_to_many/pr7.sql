-- For visualizing
SELECT DISTINCT sum(s.price) FROM customers AS c
  JOIN customers_services AS cs 
    ON (cs.customer_id = c.id)
  JOIN services AS s
    ON (s.id = cs.service_id);

-- LS solution
SELECT SUM(s.price) FROM customers_services AS cs
  JOIN services AS s ON s.id = cs.service_id;