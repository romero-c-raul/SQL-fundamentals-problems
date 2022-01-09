SELECT DISTINCT c.name, 
                string_agg(s.description, ', ') AS services
    FROM customers AS c
  LEFT JOIN customers_services AS cs 
         ON (cs.customer_id = c.id)
  LEFT JOIN services AS s
         ON (s.id = cs.service_id)
  GROUP BY c.name;

-- Further Exploration
SELECT CASE lag(customers.name) OVER (ORDER BY customers.name)
        WHEN customers.name THEN NULL
        ELSE customers.name
        END,
       services.description
FROM customers
LEFT OUTER JOIN customers_services
             ON customer_id = customers.id
LEFT OUTER JOIN services
             ON services.id = service_id;


SELECT customers.name, lag(customers.name) OVER (ORDER BY customers.name),
       services.description
FROM customers
LEFT OUTER JOIN customers_services
             ON customer_id = customers.id
LEFT OUTER JOIN services
             ON services.id = service_id;
