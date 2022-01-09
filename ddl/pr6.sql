-- Remove previous constraint
ALTER TABLE stars
  DROP CONSTRAINT stars_spectral_type_check;

-- Create enum
CREATE TYPE spectral_values AS ENUM ('O', 'B', 'A', 'F', 'G', 'K');

ALTER TABLE stars
  ADD COLUMN spectral_type spectral_values NOT NULL;

-- LS Solution
CREATE TYPE spectral_type_enum AS ENUM ('O', 'B', 'A', 'F', 'G', 'K', 'M');

ALTER TABLE stars
ALTER COLUMN spectral_type TYPE spectral_type_enum
                           USING spectral_type::spectral_type_enum;