ALTER TABLE stars
  ADD CHECK (
              spectral_type = 'O' OR
              spectral_type = 'B' OR
              spectral_type = 'A' OR
              spectral_type = 'F' OR
              spectral_type = 'G' OR
              spectral_type = 'K'
            );

ALTER TABLE stars
  DROP CONSTRAINT stars_spectral_type_check;

ALTER TABLE stars
  ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K'));

ALTER TABLE stars
  ALTER COLUMN spectral_type SET NOT NULL;


-- Further Exploration
ALTER TABLE stars
DROP CONSTRAINT stars_spectral_type_check,
ALTER COLUMN spectral_type DROP NOT NULL;

INSERT INTO stars (name, distance, companions)
           VALUES ('Epsilon Eridani', 10.5, 0);

INSERT INTO stars (name, distance, spectral_type, companions)
           VALUES ('Lacaille 9352', 10.68, 'X', 0);

DELETE FROM stars
  WHERE id = 3 OR id = 4;

ALTER TABLE stars
ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')),
ALTER COLUMN spectral_type SET NOT NULL;