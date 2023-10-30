SELECT user_id, 
       EXTRACT(DAY FROM (MAX(post_date)-MIN(post_date))) AS days_between
FROM posts
WHERE post_date BETWEEN '01/01/2021' AND '12/31/2021'
GROUP BY user_id
HAVING  COUNT(user_id) > 1
;