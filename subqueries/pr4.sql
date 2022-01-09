SELECT name FROM bidders
  WHERE EXISTS 
    (SELECT bidder_id FROM bids WHERE bidder_id = bidders.id);

-- In this example, we reference a column from the surrounding query in the
-- subquery

SELECT DISTINCT bidders.name FROM bidders
  JOIN bids ON bids.bidder_id = bidders.id;