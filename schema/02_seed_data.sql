-- Week 3 — Seed data for local practice + automated tests
--
-- TASK 2: Insert the rows below in the correct order.
-- Use explicit ids (1..5 for resources, 1..6 for referrals) so tests are stable.

INSERT INTO resources (id, name, category, address, contact_email)
VALUES
  (1, 'Community Food Pantry', 'Food', '100 Main St', 'pantry@example.org'),
  (2, 'Harbor Health Clinic', 'Healthcare', '200 Bay Rd', 'intake@harborhealth.example'),
  (3, 'Riverside Family Shelter', 'Housing', '45 River Ave', 'frontdesk@riverside.example'),
  (4, 'Open Hands Legal Aid', 'Legal', '88 Court St', 'help@openhands.example'),
  (5, 'Job Ready Training Center', 'Education', '12 Workshop Ln', 'info@jobready.example');

SELECT setval(
  pg_get_serial_sequence('resources', 'id'),
  (SELECT COALESCE(MAX(id), 1) FROM resources)
);

INSERT INTO referrals (id, family_name, resource_id, referral_date, notes)
VALUES
  (1, 'Miguel', 1, DATE '2026-01-10', 'Needs weekly groceries'),
  (2, 'Nishit', 1, DATE '2026-01-12', 'Returning family'),
  (3, 'Esther', 2, DATE '2026-01-15', 'New patient intake'),
  (4, 'Emilio', 3, DATE '2026-02-01', 'Temporary housing'),
  (5, 'Dominic', 3, DATE '2026-02-05', 'Follow-up visit'),
  (6, 'Lucas', 5, DATE '2026-02-20', 'Career counseling');

SELECT setval(
  pg_get_serial_sequence('referrals', 'id'),
  (SELECT COALESCE(MAX(id), 1) FROM referrals)
);
