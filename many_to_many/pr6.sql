SELECT DISTINCT s.description, COUNT(c.name) FROM customers AS c
  JOIN customers_services AS cs 
    ON (cs.customer_id = c.id)
  JOIN services AS s
    ON (s.id = cs.service_id)
  GROUP BY s.description HAVING COUNT(c.name) >= 3
  ORDER BY description;

-- LS SOLUTION