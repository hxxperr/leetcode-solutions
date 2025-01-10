SELECT w1.id
FROM Weather w1
JOIN Weather w2 on DATEDIFF(day, w2.recordDate, w1.recordDate) = 1
WHERE w2.temperature < w1.temperature;