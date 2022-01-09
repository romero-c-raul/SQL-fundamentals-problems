-- Return the distinct item_id values from the bids table
SELECT DISTINCT item_id FROM bids;

-- Return the items that have bids on them
SELECT name AS "Bid on Items"
    FROM items
  WHERE id IN (SELECT DISTINCT item_id FROM bids);