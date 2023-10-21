SELECT num_of_tweets AS tweet_bucket, COUNT(*) as user_num
from
(
SELECT user_id, COUNT(*) AS num_of_tweets
FROM tweets
where tweet_date BETWEEN '01/01/2022 00:00:00' AND '12/31/2022 23:59:59'
GROUP BY user_id
)t
GROUP BY num_of_tweets
ORDER BY num_of_tweets ASC;