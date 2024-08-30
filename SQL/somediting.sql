BEGIN;
   UPDATE layoffs_staging2
SET 
    total_laid_off = COALESCE(total_laid_off, 0),
    percentage_laid_off = COALESCE(percentage_laid_off, 0),
    funds_raised_millions = COALESCE(funds_raised_millions, 0);

-- Optionally check the result
SELECT * FROM layoffs_staging2;

COMMIT;
