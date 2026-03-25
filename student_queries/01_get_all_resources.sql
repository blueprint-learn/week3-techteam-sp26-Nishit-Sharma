-- TASK 3: Return every column for all resources.
--
-- Requirements:
--   - Use SELECT
--   - Include all rows from `resources`
--   - Order by id ascending (so results are easy to read and test)

SELECT id, name, category, address, contact_email
FROM resources
ORDER BY id ASC;
