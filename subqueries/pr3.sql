-- Same as previous problem but using NOT IN instead
SELECT name AS "Bid on Items"
    FROM items
  WHERE id NOT IN (SELECT DISTINCT item_id FROM bids);