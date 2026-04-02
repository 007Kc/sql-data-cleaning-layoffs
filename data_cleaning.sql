
-- DATA CLEANING PROJECT: LAYOFFS DATASET=

-- 1. Creating Staging Table
CREATE TABLE layoffs_staging LIKE layoffs;

INSERT INTO layoffs_staging
SELECT * FROM layoffs;



-- 2. REMOVING DUPLICATES

CREATE TABLE layoffs_staging2 AS
SELECT *,
ROW_NUMBER() OVER(
    PARTITION BY company, location, industry,
    total_laid_off, percentage_laid_off, `date`,
    stage, country, funds_raised_millions
) AS row_num
FROM layoffs_staging;

-- Keeps only unique rows
DELETE
FROM layoffs_staging2
WHERE row_num > 1;


-- 3. STANDARDIZING DATA


-- Trim company names
UPDATE layoffs_staging2
SET company = TRIM(company);

-- Standardize industry values
UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry IN ('CryptoCurrency', 'Crypto Currency');

-- Fix location encoding issues
UPDATE layoffs_staging2
SET location = 'Düsseldorf'
WHERE location LIKE 'DÃ¼sseldorf%';

UPDATE layoffs_staging2
SET location = 'Florianópolis'
WHERE location LIKE 'FlorianÃ³polis%';

UPDATE layoffs_staging2
SET location = 'Malmo'
WHERE location LIKE 'MalmÃ¶%';

-- Fix country inconsistencies
UPDATE layoffs_staging2
SET country = 'United States'
WHERE country LIKE 'United States%';



-- 4. FIXING DATE FORMAT


UPDATE layoffs_staging2
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

ALTER TABLE layoffs_staging2
MODIFY `date` DATE;



-- 5. HANDLING NULL VALUES


-- Convert empty strings to NULL
UPDATE layoffs_staging2
SET industry = NULL
WHERE industry = '';

-- Fill missing industry using self join
UPDATE layoffs_staging2 t1
JOIN layoffs_staging2 t2
    ON t1.company = t2.company
SET t1.industry = t2.industry
WHERE t1.industry IS NULL
AND t2.industry IS NOT NULL;



-- FINAL CLEANED DATA


SELECT *
FROM layoffs_staging2;
