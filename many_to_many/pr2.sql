-- Did this first to visualize table
SELECT DISTINCT c.* FROM customers AS c
  JOIN customers_services AS cs 
    ON (cs.customer_id = c.id)
  JOIN services AS s
    ON (s.id = cs.service_id);


-- Actual Answer
SELECT DISTINCT c.* FROM customers AS c
  JOIN customers_services AS cs 
    ON (cs.customer_id = c.id);
