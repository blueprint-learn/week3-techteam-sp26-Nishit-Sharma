-- TASK 7: For EVERY resource, show how many referrals it has (including zero).
--
-- Requirements:
--   - Use GROUP BY / COUNT (an aggregate query)
--   - Include resources with 0 referrals (HINT: start from `resources` and LEFT JOIN `referrals`)
--   - Return columns:
--       - resources.id   AS resource_id
--       - resources.name AS resource_name
--       - the referral count AS referral_count (use COUNT with a sensible expression)
--   - Order by resource_id ascending

SELECT
  resources.id AS resource_id,
  resources.name AS resource_name,
  COUNT(referrals.id) AS referral_count
FROM resources
LEFT JOIN referrals ON referrals.resource_id = resources.id
GROUP BY resources.id, resources.name
ORDER BY resource_id ASC;
