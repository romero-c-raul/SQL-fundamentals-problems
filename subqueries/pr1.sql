CREATE TABLE bidders (
  id serial PRIMARY KEY,
  name text NOT NULL
);

CREATE TABLE items (
  id serial PRIMARY KEY,
  name text NOT NULL,
  initial_price decimal(6, 2) NOT NULL CHECK( initial_price BETWEEN 0.01 AND 1000.00),
  sales_price decimal(6, 2) CHECK( sales_price BETWEEN 0.01 AND 1000.00)
);

CREATE TABLE bids (
  id serial PRIMARY KEY,
  bidder_id integer 
    REFERENCES bidders (id) 
    ON DELETE CASCADE
    NOT NULL,
  item_id integer
    REFERENCES items (id)
    ON DELETE CASCADE
    NOT NULL,
  amount decimal(6, 2) NOT NULL CHECK (amount BETWEEN 0.01 AND 1000.00)
);

CREATE INDEX ON bids (bidder_id, item_id);

\copy bidders FROM bidders.csv WITH CSV HEADER
\copy items FROM items.csv WITH CSV HEADER
\copy bids FROM bids.csv WITH CSV HEADER