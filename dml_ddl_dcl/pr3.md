Does the following statement use the DDL or DML component of SQL?

```
CREATE TABLE things (
  id serial PRIMARY KEY,
  item text NOT NULL UNIQUE,
  material text NOT NULL
);
```
This is part of the DDL component. DDL is concerned with the creation of a table within a database, which is what we're doing here. 