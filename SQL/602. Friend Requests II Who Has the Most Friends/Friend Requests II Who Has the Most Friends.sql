WITH CTE AS(
    SELECT requester_id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id FROM RequestAccepted
)
SELECT top 1 requester_id AS id,COUNT(*) AS num
FROM CTE
GROUP BY requester_id
ORDER BY COUNT(*) DESC