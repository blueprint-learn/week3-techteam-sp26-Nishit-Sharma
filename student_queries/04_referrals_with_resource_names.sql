-- TASK 6: Show each referral next to the related resource name.
--
-- Requirements:
--   - Use a JOIN between `referrals` and `resources`
--   - Return exactly these two columns (aliases matter for tests):
--       - referrals.family_name  AS family_name
--       - resources.name         AS resource_name
--   - Order by referrals.id ascending

SELECT
  referrals.family_name AS family_name,
  resources.name AS resource_name
FROM referrals
JOIN resources ON referrals.resource_id = resources.id
ORDER BY referrals.id ASC;
