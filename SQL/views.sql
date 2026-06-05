-- Mental Health Risk View

CREATE VIEW vw_MentalHealthRisk
AS
SELECT
TeenID,
Gender,
Age,
Daily_Social_Media_Hours,
Sleep_Hours,
Stress_Level,
Anxiety_Level,
Addiction_Level,
Depression_Label,

(Stress_Level +
 Anxiety_Level +
 Addiction_Level) AS RiskScore

FROM [dbo].[Teen_Mental_Health_Dataset];