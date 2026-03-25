-- Week 3 — Intro to PostgreSQL (CommunityBridge-themed practice data)
--
-- TASK 1: Define two related tables for a simplified nonprofit resource hub.
--
-- Requirements:
--   1) Create table `resources` with columns:
--        - id          : primary key (SERIAL is fine)
--        - name        : VARCHAR or TEXT, NOT NULL
--        - category    : VARCHAR or TEXT
--        - address     : VARCHAR or TEXT
--        - contact_email : VARCHAR or TEXT
--
--   2) Create table `referrals` with columns:
--        - id            : primary key (SERIAL is fine)
--        - family_name   : VARCHAR or TEXT, NOT NULL
--        - resource_id   : INTEGER that REFERENCES resources(id)
--        - referral_date : DATE
--        - notes         : TEXT (or VARCHAR)
--
--   3) Add a FOREIGN KEY so every referrals.resource_id must match resources.id
--   4) Create referrals AFTER resources (Postgres needs the referenced table first)

CREATE TABLE resources (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  category TEXT,
  address TEXT,
  contact_email TEXT
);

CREATE TABLE referrals (
  id SERIAL PRIMARY KEY,
  family_name TEXT NOT NULL,
  resource_id INTEGER NOT NULL REFERENCES resources (id),
  referral_date DATE,
  notes TEXT
);
