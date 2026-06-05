CREATE TABLE TeenMentalHealth
(
    TeenID INT IDENTITY(1,1) PRIMARY KEY,

    Age INT,
    Gender VARCHAR(20),

    DailySocialMediaHours DECIMAL(4,1),
    PlatformUsage VARCHAR(20),

    SleepHours DECIMAL(4,1),
    ScreenTimeBeforeSleep DECIMAL(4,1),

    AcademicPerformance DECIMAL(4,2),
    PhysicalActivity DECIMAL(4,1),

    SocialInteractionLevel VARCHAR(20),

    StressLevel INT,
    AnxietyLevel INT,
    AddictionLevel INT,

    DepressionLabel BIT
);
