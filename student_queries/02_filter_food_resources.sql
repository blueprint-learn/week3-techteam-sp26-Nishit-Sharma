-- TASK 4: List resources that are in the Food category.
--
-- Requirements:
--   - Use WHERE to filter by category
--   - Match the exact category name: Food
--   - Return all columns from `resources`
--   - Order by id ascending

SELECT id, name, category, address, contact_email
FROM resources
WHERE category = 'Food'
ORDER BY id ASC;
