-- Task 2

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task2.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

--1. The 10 most populated countries.
SELECT Country, Population from countries ORDER BY Population DESC LIMIT 10;

--2. The smallest 5 countries by area.
SELECT Country, AreaSqMi from countries ORDER BY AreaSqMi ASC LIMIT 5;

--3. The largest country in Europe
SELECT Country, AreaSqMi from countries where Continent='Europe' ORDER BY AreaSqMi DESC LIMIT 1;

--4. The smallest 3 countries in Africa
SELECT Country, AreaSqMi from countries where Continent='Africa' ORDER BY AreaSqMi ASC LIMIT 3;

--5. The 5 countries with the lowest literacy rate.
SELECT Country, LiteracyPercent from countries ORDER BY LiteracyPercent ASC LIMIT 5;

--6. The 3 richest (by GDP) countries beginning with ‘C’.
SELECT Country, GDPPerCapita from countries where Country like 'C%' ORDER BY GDPPerCapita DESC LIMIT 3;

--7. The country with the highest literacy rate with an infant mortality rate above 50.
SELECT Country, LiteracyPercent, InfantMortalityPer1000 from countries where InfantMortalityPer1000>50 ORDER BY LiteracyPercent DESC LIMIT 1;

--8. The 5 countries with the lowest phones per 1000 population with a GDP above 10000.
SELECT Country, PhonesPer1000, GDPPerCapita from countries where GDPPerCapita>10000 ORDER BY PhonesPer1000 ASC LIMIT 5;

--9. The richest landlocked country in South America.
SELECT GDPPerCapita, Country from countries where Continent='South America' and CoastlineRatio=0 ORDER BY GDPPerCapita DESC LIMIT 1;

--10. The last 10 countries alphabetically.
SELECT Country from countries ORDER BY Country LIMIT 10 OFFSET 171;
--used offset since total countries is 182 and need countries from 172-182