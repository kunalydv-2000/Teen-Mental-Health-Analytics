-- Check Nulls

SELECT *
FROM TeenMentalHealth
WHERE Age IS NULL
   OR Gender IS NULL;

-- Duplicate Check

SELECT *
FROM
(
    SELECT *,
           ROW_NUMBER() OVER
           (
               PARTITION BY
               Age,
               Gender,
               DailySocialMediaHours,
               PlatformUsage
               ORDER BY TeenID
           ) rn
    FROM TeenMentalHealth
) t
WHERE rn > 1;