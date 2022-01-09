-- For Visualizing
SELECT s.price * COUNT(DISTINCT c.name) FROM customers AS c
  LEFT JOIN customers_services AS cs 
    ON (cs.customer_id = c.id)
  LEFT JOIN services AS s
    ON (s.id = cs.service_id)
  GROUP BY s.price;

-- My solution: current expected income
SELECT sum(services.price)
    FROM customers_services
  JOIN services ON services.id = customers_services.service_id
  WHERE services.price >= 100;

-- Hypothetical maximum
SELECT sum(s.price) FROM customers AS c
  CROSS JOIN services AS s
  WHERE s.price >= 100;