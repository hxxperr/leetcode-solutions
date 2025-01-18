SELECT 
    activity_date day, 
    COUNT(DISTINCT user_id) active_users
FROM Activity
WHERE activity_date BETWEEN DATEADD(day, -29, '2019-07-27') AND '2019-07-27'
GROUP BY activity_date;