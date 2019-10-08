SELECT count(distinct(t1.user_id)),
             device
FROM sadavath.demo_marketing t1
full JOIN sadavath.adwords_rollup_demo t2
  ON t1.user_id = t2.user_id
WHERE event_type = 'signup_flow'
GROUP BY 2