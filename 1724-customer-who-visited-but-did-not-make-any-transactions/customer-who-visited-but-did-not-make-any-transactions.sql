SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits as V
LEFT JOIN
Transactions as t
ON
v.visit_id = t.visit_id
WHERE
t.transaction_id IS NULL
GROUP BY customer_id