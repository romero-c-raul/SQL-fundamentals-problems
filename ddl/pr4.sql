ALTER TABLE stars
  ALTER COLUMN distance TYPE numeric;

/* According to PostgreSQL docs:
NUMERIC
- Without any precision or scale creates a column in which numeric
  values of any precision and scale can be stored
*/

