ALTER TABLE planets
  ADD COLUMN semi_major_axis numeric NOT NULL;

-- Further exploration
ALTER TABLE planets
DROP COLUMN semi_major_axis;

DELETE FROM stars;
INSERT INTO stars (name, distance, spectral_type, companions)
           VALUES ('Alpha Centauri B', 4.37, 'K', 3);
INSERT INTO stars (name, distance, spectral_type, companions)
           VALUES ('Epsilon Eridani', 10.5, 'K', 0);

INSERT INTO planets (designation, mass, star_id)
           VALUES ('b', 0.0036, 6); -- check star_id; see note below
INSERT INTO planets (designation, mass, star_id)
           VALUES ('c', 0.1, 7); -- check star_id; see note below

ALTER TABLE planets
ADD COLUMN semi_major_axis numeric NOT NULL;

-- To make this work, I will insert column without not null constraint, add values,
-- Then add not null constraint

ALTER TABLE planets
ADD COLUMN semi_major_axis numeric;

UPDATE planets SET semi_major_axis = 0.04 WHERE star_id = 6;
UPDATE planets SET semi_major_axis = 40 WHERE star_id = 7;

ALTER TABLE planets
  ALTER COLUMN semi_major_axis SET NOT NULL;