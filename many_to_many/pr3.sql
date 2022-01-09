SELECT DISTINCT c.* FROM customers AS c
    LEFT OUTER JOIN customers_services AS cs 
      ON (cs.customer_id = c.id)
  WHERE service_id IS NULL;

-- Further Exploration
SELECT DISTINCT c.*, s.* FROM customers AS c
    FULL JOIN customers_services AS cs 
      ON (cs.customer_id = c.id)
    FULL JOIN services AS s
      ON (s.id = cs.service_id)
  WHERE service_id IS NULL;