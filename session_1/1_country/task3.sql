-- Task 3

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task3.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

--1. Count the total number of countries in the dataset.
SELECT COUNT(*) AS total_countries from countries;

--2. Find how many countries belong to each continent.
SELECT Count(Country) as sum_countries, Continent from countries GROUP BY Continent;

--3. Calculate the total population for each continent.
SELECT SUM(Population) as total_population, Continent from countries GROUP BY Continent;

--4. Find the average GDP per capita for each continent.
SELECT AVG(GDPPerCapita), Continent from countries GROUP BY Continent;

--5. Find continents that have more than 5 countries.
SELECT Count(Country) as total_countries, Continent from countries GROUP BY Continent HAVING total_countries > 5;

--6. Find continents where the total population is greater than 1 billion.
SELECT SUM(Population) as total_population, Continent from countries GROUP BY Continent HAVING total_population>1000000000;

--7. Find the country with the highest population in each continent.
SELECT MAX(Population), Continent, Country from countries GROUP BY Continent;

--8. For each continent, find the average population density, the highest population, and the lowest GDP per capita.
SELECT AVG(Population) as avg_population, MAX(Population) as max_population, MIN(GDPPerCapita) as lowest_GDP, Continent from countries GROUP BY Continent;

--9. Find continents where the average population density is greater than 100 and the total GDP per capita is greater than 5000.
SELECT AVG(Population) as avg_population, SUM(GDPPerCapita) as total_GDP, Continent from countries GROUP BY Continent HAVING avg_population>100 and total_GDP>5000;

--10. For each continent, calculate the total area, the total arable percentage, and the average birthrate for countries with a population greater than 10 million.
SELECT Continent, SUM(AreaSqMi) as total_area, SUM(ArablePercent) as total_arable_percent, (AVG(Birthrate) as average_birthrate where total_population>10000000) from countries GROUP BY Continent;