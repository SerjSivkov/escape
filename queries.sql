SELECT user_id
FROM reports
WHERE created_at BETWEEN '2018-01-01' AND '2018-12-31'
UNION (
  SELECT SUM(reward)
  FROM reports
  WHERE created_at BETWEEN '2019-01-01' AND '2019-12-31');
  
SELECT reports.barcode, reports.price
FROM reports
LEFT JOIN pos ON pos.id = reports.pos_id
GROUP BY title;
