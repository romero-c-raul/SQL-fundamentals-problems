-- Change mass type to numeric, add not null constraint, add a check
ALTER TABLE planets
  ALTER COLUMN mass TYPE numeric,
  ALTER COLUMN mass SET NOT NULL,
  ADD CHECK (mass >= 0);

-- Make designation column required
ALTER TABLE planets
  ALTER COLUMN designation SET NOT NULL;