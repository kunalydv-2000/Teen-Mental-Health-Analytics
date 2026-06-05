![project_banner](https://github.com/kunalydv-2000/Teen-Mental-Health-Analytics/blob/dfb5f2cef3a3f942637579f7e665ce1d5aa7f970/project_banner.png)

# Teen Mental Health Analytics Dashboard

![SQL](https://img.shields.io/badge/SQL%20Server-Database-red)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Data Analytics](https://img.shields.io/badge/Data-Analytics-blue)
![Healthcare Analytics](https://img.shields.io/badge/Domain-Mental%20Health-green)

## Project Overview

Mental health challenges among teenagers have become an increasing concern in the digital age. This project analyzes the relationship between social media usage, sleep habits, stress levels, anxiety, and depression among teenagers.

Using SQL Server for data storage and transformation and Power BI for visualization, this project identifies key behavioral factors associated with depression and provides actionable insights through an interactive dashboard.

---

## Business Problem

Teenagers are increasingly exposed to:

- Excessive social media usage
- Poor sleep habits
- Increased screen time before sleep
- Academic stress
- Anxiety and addiction-related behaviors

The objective of this project is to answer:

> Which behavioral factors are most strongly associated with depression among teenagers?

---

## Project Goals

- Analyze depression prevalence among teenagers.
- Identify behavioral patterns associated with mental health risks.
- Build a dimensional data model using Star Schema.
- Create analytical SQL queries and reusable views.
- Develop an interactive Power BI dashboard.
- Generate actionable insights for educators, parents, and policymakers.

---

## Dataset Information

| Attribute | Description |
|------------|------------|
| Records | 1,200 Teenagers |
| Target Variable | Depression (Yes/No) |
| Features | Age, Gender, Sleep, Stress, Anxiety, Social Media Usage, Addiction Level, Academic Performance, Physical Activity, Platform Usage |
| Missing Values | None |

### Dataset Fields

- Age
- Gender
- Daily Social Media Hours
- Platform Used
- Sleep Hours
- Screen Time Before Sleep
- Academic Performance
- Physical Activity Level
- Social Interaction Level
- Stress Level
- Anxiety Level
- Addiction Level
- Depression

---

## Technology Stack

### Database

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

### Data Visualization

- Power BI Desktop

### Data Source

- CSV Dataset

### Version Control

- Git
- GitHub

---

## Data Architecture

```text
CSV Dataset
     │
     ▼
SQL Server
     │
     ▼
Data Cleaning & Transformation
     │
     ▼
Star Schema
     │
     ▼
SQL Views
     │
     ▼
Power BI Dashboard
```

---

## Data Model

### Fact Table

#### FactTeenMentalHealth

| Column |
|----------|
| TeenID |
| AgeID |
| GenderID |
| PlatformID |
| SleepHours |
| SocialMediaHours |
| ScreenTimeBeforeSleep |
| AcademicPerformance |
| PhysicalActivity |
| StressLevel |
| AnxietyLevel |
| AddictionLevel |
| Depression |

---

### Dimension Tables

#### DimAge

| Column |
|----------|
| AgeID |
| Age |
| AgeGroup |

---

#### DimGender

| Column |
|----------|
| GenderID |
| Gender |

---

#### DimPlatform

| Column |
|----------|
| PlatformID |
| PlatformName |

---

## Star Schema

```text
                 DimAge
                    |
                    |
DimGender ---- FactTeenMentalHealth ---- DimPlatform
```

---

## SQL Analysis Performed

### Depression Rate Analysis

- Overall depression prevalence
- Depression distribution

### Sleep Analysis

- Average sleep hours by depression status
- Sleep category comparison

### Social Media Analysis

- Usage hours by platform
- Social media impact on depression

### Stress & Anxiety Analysis

- Average stress levels
- Average anxiety levels
- Risk assessment

### Demographic Analysis

- Gender-wise depression rates
- Age group comparisons

### Risk Segmentation

- High Risk
- Medium Risk
- Low Risk

---

## SQL Views Created

### vw_DepressionOverview

Provides overall mental health KPIs.

### vw_GenderAnalysis

Provides gender-based behavioral metrics.

### vw_PlatformAnalysis

Provides platform-wise usage and depression analysis.

### vw_RiskSegmentation

Categorizes teenagers into risk groups based on behavioral indicators.

---

## Power BI Dashboard

### Page 1: Executive Overview

KPIs:

- Total Teenagers
- Depression Rate
- Average Sleep Hours
- Average Stress Level
- Average Social Media Usage

Visualizations:

- Depression Distribution
- Gender Breakdown
- Platform Distribution

---

### Page 2: Depression Drivers

Visualizations:

- Sleep vs Depression
- Stress vs Depression
- Anxiety vs Depression
- Social Media Usage vs Depression

---

### Page 3: Social Media Analytics

Visualizations:

- Platform Comparison
- Average Usage Hours
- Addiction Levels
- Depression Rate by Platform

---

### Page 4: Risk Segmentation

Visualizations:

- Risk Distribution
- High-Risk Teenagers
- Risk by Gender
- Risk by Platform

---

## Key Findings

### Sleep Deprivation

Teenagers sleeping fewer than 5 hours per night exhibited significantly higher depression rates compared to those sleeping more than 6 hours.

### Social Media Usage

Depression prevalence increased among teenagers spending more than 6 hours daily on social media platforms.

### Stress & Anxiety

Stress and anxiety emerged as the strongest psychological indicators associated with depression.

### Platform Analysis

TikTok users showed slightly higher depression prevalence compared with Instagram users.

### Academic Performance

Academic performance showed minimal relationship with depression levels.

---

## Sample Business Insights

- Poor sleep habits are strongly associated with depression.
- Heavy social media usage increases mental health risk.
- Stress and anxiety are major contributing factors.
- Risk segmentation can help identify vulnerable teenagers early.
- Mental health interventions should prioritize sleep quality and stress management.

---

## Project Structure

```text
Teen-Mental-Health-Analytics/
│
├── Dataset/
│   └── Teen_Mental_Health_Dataset.csv
│
├── SQL/
│   ├── 01_Create_Database.sql
│   ├── 02_Create_Tables.sql
│   ├── 03_Load_Data.sql
│   ├── 04_Data_Cleaning.sql
│   ├── 05_Analysis_Queries.sql
│   └── 06_Create_Views.sql
│
├── PowerBI/
│   └── TeenMentalHealth.pbix
│
├── Dashboard_Screenshots/
│   ├── Overview.png
│   ├── DepressionAnalysis.png
│   ├── SocialMediaAnalysis.png
│   └── RiskSegmentation.png
│
├── README.md
│
└── Project_Banner.png
```

---

## Skills Demonstrated

### SQL

- Database Design
- Star Schema Modeling
- Data Cleaning
- Joins
- Aggregations
- Views
- Business Analysis Queries

### Power BI

- Data Modeling
- DAX Measures
- KPI Cards
- Interactive Dashboards
- Drillthrough Analysis
- Risk Segmentation

### Analytics

- Exploratory Data Analysis
- Healthcare Analytics
- Behavioral Analytics
- Insight Generation
- Business Reporting

---

## Future Enhancements

- Predictive Depression Risk Model
- Machine Learning Integration
- Real-Time Dashboard Updates
- Advanced Segmentation Analysis
- Time-Series Mental Health Monitoring

---

## Author

**Kunal Yadav**

Aspiring Data Analyst | SQL | Power BI | Data Visualization | Business Intelligence

LinkedIn: Add Your Profile Link

GitHub: Add Your GitHub Profile Link
