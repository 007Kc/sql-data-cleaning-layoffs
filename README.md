# 📊 SQL Data Cleaning & Exploratory Analysis — Layoffs Dataset

## 📌 Overview
This project focuses on cleaning and analyzing a real-world layoffs dataset using SQL.

The goal was to transform raw, inconsistent data into a clean and reliable dataset, and then perform exploratory analysis to uncover patterns and trends.



## 🔄 Project Workflow

1. Data Cleaning (SQL)
2. Exploratory Data Analysis (EDA)



## 🧹 Data Cleaning

The dataset initially contained several issues, including duplicate records, missing values, inconsistent text formats, and improperly formatted dates.

### Key Cleaning Steps
- Removed duplicates using `ROW_NUMBER()`
- Standardized inconsistent values (e.g. industry names)
- Fixed encoding issues in location data
- Converted date column to proper DATE format
- Handled missing values and filled gaps where possible

📎 Full cleaning script: `data_cleaning.sql`



## 📊 Exploratory Data Analysis (EDA)

After cleaning the dataset, I performed analysis to answer key questions and identify trends.

### Key Questions Explored
- Which companies laid off the most employees?
- Which countries were most affected?
- When did layoffs peak over time?
- Which industries experienced the highest layoffs?
- Which companies had 100% layoffs?

### 🔍 Key Insights
- A small number of companies accounted for a large share of total layoffs.
- Layoffs were concentrated in specific countries, with some regions more affected than others.
- There were clear time periods where layoffs spiked.
- Certain industries were significantly more impacted.
- Some companies experienced complete shutdowns (100% layoffs).

📎 Full analysis script: `exploratory_data_analysis.sql`



## 🛠 Tools Used
- SQL (MySQL)
- Window Functions (`ROW_NUMBER`)
- Aggregations (`SUM`, `GROUP BY`)
- Date Functions (`YEAR`, `MONTH`)



## 📂 Dataset
The dataset contains information on company layoffs, including:
- Company
- Location
- Industry
- Total laid off
- Percentage laid off
- Date
- Funding raised



## 🚀 Conclusion
This project highlights the importance of data cleaning as a critical step before analysis, as well as how structured exploration can reveal meaningful insights from real-world data.



## 🔗 Next Steps
- Data visualization (Excel / Power BI / Tableau)
- Deeper trend analysis
- Dashboard creation
