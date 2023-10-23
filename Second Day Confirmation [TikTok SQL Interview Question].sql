SELECT user_id
FROM emails LEFT JOIN texts
ON emails.email_id = texts.email_id
WHERE texts.action_date = emails.signup_date + INTERVAL '1day'
      AND signup_action = 'Confirmed'
;