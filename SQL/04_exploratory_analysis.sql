-- Total Records


SELECT COUNT(*) TotalTeens
FROM [dbo].[Teen_Mental_Health_Dataset];


-- Gender Distribution


SELECT Gender,
       COUNT(*) Total
FROM 
[dbo].[Teen_Mental_Health_Dataset]
GROUP BY Gender;


-- Average Social Media Usage

SELECT AVG(Daily_Social_Media_Hours) AvgHours
FROM [dbo].[Teen_Mental_Health_Dataset];


-- Depression Distribution


SELECT Depression_Label,
       COUNT(*) Total
FROM [dbo].[Teen_Mental_Health_Dataset]
GROUP BY Depression_Label;



-- Platform Usage


SELECT Platform_Usage,
       COUNT(*) Users
FROM [dbo].[Teen_Mental_Health_Dataset]
GROUP BY Platform_Usage
ORDER BY Users DESC;