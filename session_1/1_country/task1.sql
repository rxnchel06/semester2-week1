-- Task 1

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task1.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

SELECT * from countries;

--2.
SELECT Country, Population from countries;

--3.
SELECT Country from countries where Continent='Europe';

--4.
SELECT Country from countries where Population>100000000;

--5.
SELECT Country, GDPPerCapita from countries where Continent='Asia' and GDPPerCapita>20000;

--6.
SELECT Country, LiteracyPercent from countries where LiteracyPercent<70;

--7.
SELECT Country, CoastlineRatio from countries where CoastlineRatio=0;

--8.
SELECT Country from countries where Country like 'A%';

--9.
SELECT Country from countries where Country like '%United%';

--10.
SELECT Country from countries where Birthrate>Deathrate and Population>50000000;




