USE LifeExpectancy;

CREATE TABLE life_expectancy (
    Country VARCHAR(255),
    Year INT,
    infant_deaths INT,
    GDP DECIMAL(15, 2),
    Schooling DECIMAL(5, 2),
    Population BIGINT
);

SELECT * FROM life_expectancy;

-- Sum of infant deaths, average GDP, and count of records

SELECT 
    SUM(infant_deaths) AS total_infant_deaths,
    AVG(GDP) AS average_gdp,
    COUNT(*) AS record_count
FROM 
    life_expectancy;

-- Infant deaths and GDP

SELECT 
    Country,
    SUM(infant_deaths) AS total_infant_deaths,
    SUM(GDP) AS GDP
FROM 
    life_expectancy
GROUP BY 
    Country
ORDER BY 
    total_infant_deaths ASC;
    
-- Countries with GDP greater than 2000

SELECT 
    Country,
    Year,
    GDP,
    Population
FROM 
    life_expectancy
WHERE 
    GDP > 2000;

-- Categorize countries based on GDP
SELECT 
    Country,
    GDP,
    CASE 
        WHEN GDP > 25000 THEN 'High GDP'
        WHEN GDP BETWEEN 13000 AND 15000 THEN 'Medium GDP'
        ELSE 'Low GDP'
    END AS gdp_category
FROM 
    life_expectancy;






