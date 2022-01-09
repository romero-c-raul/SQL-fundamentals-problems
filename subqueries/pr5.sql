-- Returning the number of bids associated with each bidder
SELECT count(item_id) FROM bids
GROUP BY bidder_id;

--
SELECT MAX(bid_count.count) FROM 
  (SELECT count(item_id) FROM bids 
    GROUP BY bidder_id) AS bid_count;

-- Alternate solution
SELECT COUNT(bidder_id) AS max_bid FROM bids
  GROUP BY bidder_id
  ORDER BY max_bid DESC
  LIMIT 1;