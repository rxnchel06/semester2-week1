-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

--1. Find the average population for each continent.
SELECT AVG(Population) as average_population, Continent from countries GROUP BY continent;
