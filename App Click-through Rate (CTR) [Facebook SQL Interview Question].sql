SELECT app_id,
       ROUND(100.0*
       SUM(CASE 
           WHEN event_type = 'click' 
           THEN 1
           ELSE 0 
           END)/
           SUM(CASE
           WHEN event_type = 'impression'
           THEN 1
           ELSE 0
           END)
           ,2) AS ctr
FROM events
WHERE timestamp BETWEEN '01/01/2022 00:00:01' AND '12/31/2022 23:59:59'
GROUP BY app_id
;