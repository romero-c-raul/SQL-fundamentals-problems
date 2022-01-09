DELETE FROM customers
  WHERE name = 'Chen Ke-Hua';

ALTER TABLE customers_services
  DROP CONSTRAINT customers_services_service_id_fkey;

ALTER TABLE customers_services
  ADD FOREIGN KEY (service_id) REFERENCES services(id) ON DELETE CASCADE;

DELETE FROM services
  WHERE description = 'Bulk Email';