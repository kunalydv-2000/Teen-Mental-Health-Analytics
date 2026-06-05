CREATE PROCEDURE sp_DepressionByGender
AS
BEGIN

SELECT
Gender,
COUNT(*) TotalStudents,
SUM(cast(Depression_Label as INT)) DepressedStudents

FROM [dbo].[Teen_Mental_Health_Dataset]
GROUP BY Gender;

END;