SELECT sender_id, COUNT(sender_id) AS message_count
FROM messages
WHERE sent_date BETWEEN '08/1/2022 00:00:00' AND '08/31/2022 23:59:59'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;