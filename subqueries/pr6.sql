-- A scalar subquery must only return one column and one row.
SELECT count(item_id) FROM bids
GROUP BY item_id;

-- 
SELECT name, (SELECT count(item_id) FROM bids WHERE items.id = bids.item_id)
  FROM items;

-- Using JOIN
SELECT items.name, count(bids.item_id)
    FROM items
  LEFT JOIN bids ON items.id = bids.item_id
  GROUP BY items.name; 