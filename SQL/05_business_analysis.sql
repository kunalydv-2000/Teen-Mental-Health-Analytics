-- 1. Which platform has highest depression rate?

SELECT Platform_Usage,
       ROUND(
           AVG(CAST(Depression_Label AS FLOAT))*100,
           2
       ) AS Depression_Rate
FROM [dbo].[Teen_Mental_Health_Dataset]
GROUP BY Platform_Usage
ORDER BY Depression_Rate DESC;

-- 2. Sleep vs Depression

SELECT
CASE
    WHEN Sleep_Hours < 5 THEN 'Less than 5'
    WHEN Sleep_Hours < 7 THEN '5-7 Hours'
    ELSE 'More than 7'
END AS SleepGroup,

COUNT(*) TotalStudents,
SUM(CAST(Depression_Label AS INT))

FROM [dbo].[Teen_Mental_Health_Dataset]
GROUP BY
CASE
    WHEN Sleep_Hours < 5 THEN 'Less than 5'
    WHEN Sleep_Hours < 7 THEN '5-7 Hours'
    ELSE 'More than 7'
END;

-- 3. Stress Level Impact

SELECT Stress_Level,
       COUNT(*) Students,
       SUM(CAST(Depression_Label AS INT)) as Depressed
FROM [dbo].[Teen_Mental_Health_Dataset]
GROUP BY Stress_Level
ORDER BY Stress_Level;

-- 4. Social Media Addiction Analysis
SELECT
AVG(Addiction_Level) AvgAddiction,
AVG(Stress_Level) AvgStress,
AVG(Anxiety_Level) AvgAnxiety
FROM [dbo].[Teen_Mental_Health_Dataset];

-- 5. Academic Performance vs Depression

SELECT
Depression_Label,
AVG(Academic_Performance) AvgPerformance
FROM [dbo].[Teen_Mental_Health_Dataset]
GROUP BY Depression_Label;

-- 6. Physical Activity Impact
SELECT
CASE
    WHEN Physical_Activity < 1 THEN 'Low'
    WHEN Physical_Activity < 3 THEN 'Moderate'
    ELSE 'High'
END ActivityGroup,

COUNT(*) Students,
SUM(cast(Depression_Label as INT)) as  Depressed

FROM [dbo].[Teen_Mental_Health_Dataset]
GROUP BY
CASE
    WHEN Physical_Activity < 1 THEN 'Low'
    WHEN Physical_Activity < 3 THEN 'Moderate'
    ELSE 'High'
END;