SELECT services.description FROM customers_services
  RIGHT OUTER JOIN services 
                ON services.id = customers_services.service_id
  WHERE service_id IS NULL;

-- Using LEFT JOIN
SELECT description FROM services
LEFT OUTER JOIN customers_services
             ON service_id = services.id
WHERE service_id IS NULL;