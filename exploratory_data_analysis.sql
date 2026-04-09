
-- EXPLORATORY DATA ANALYSIS (EDA)
-- LAYOFFS DATASET

-- Preview Data
SELECT *
FROM layoffs_staging_2;


-- 1. Total Layoffs by Company

SELECT 
    company,  
    SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging_2
GROUP BY company
ORDER BY total_laid_off DESC;



-- 2. Layoffs by Country


SELECT 
    country,  
    SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging_2
GROUP BY country
ORDER BY total_laid_off DESC;



-- 3. Layoff Trends Over Time

SELECT 
    YEAR(`date`) AS year,
    MONTH(`date`) AS month,
    SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging_2
GROUP BY year, month
ORDER BY year, month;



-- 4. Layoffs by Industry

SELECT 
    industry,  
    SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging_2
GROUP BY industry
ORDER BY total_laid_off DESC;



-- 5. Companies with 100% Layoffs


SELECT 
    company,
    industry,
    total_laid_off,
    percentage_laid_off
FROM layoffs_staging_2
WHERE percentage_laid_off = 1;
