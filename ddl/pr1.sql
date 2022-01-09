-- CREATE TABLE stars (
--   id serial PRIMARY KEY,
--   name varchar(25) UNIQUE NOT NULL,
--   distance integer NOT NULL CHECK (distance > 0),
--   spectral_type char(1) CHECK (
--                                 spectral_type = 'O' OR
--                                 spectral_type = 'B' OR
--                                 spectral_type = 'A' OR
--                                 spectral_type = 'F' OR
--                                 spectral_type = 'G' OR
--                                 spectral_type = 'K'
--                               ),
--   companions integer CHECK (companions >= 0)
-- );


CREATE TABLE stars (
  id serial PRIMARY KEY,
  name varchar(25) UNIQUE NOT NULL,
  distance integer NOT NULL CHECK (distance > 0),
  spectral_type char(1),
  companions integer NOT NULL CHECK (companions >= 0)
);

CREATE TABLE planets (
  id serial PRIMARY KEY,
  designation char(1),
  mass integer
);