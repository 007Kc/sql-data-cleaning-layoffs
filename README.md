# SQL Data Cleaning Project — Layoffs Dataset

## 📌 Overview
This project focuses on cleaning a real-world layoffs dataset using SQL.

The goal was to transform raw, messy data into a clean and reliable dataset ready for analysis.

---

## 🧠 Key Cleaning Steps

- Removed duplicate records using `ROW_NUMBER()`
- Standardized inconsistent values (e.g. industry names)
- Fixed encoding issues in location data
- Converted date column to proper DATE format
- Handled missing values and filled gaps where possible

---

## 🛠 Tools Used
- MySQL
- SQL Window Functions
- Data Cleaning Techniques

---

## 📊 Dataset
The dataset contains information about company layoffs, including:
- Company name
- Location
- Industry
- Total laid off
- Percentage laid off
- Date
- Funding raised

---

## 🚀 Project Workflow
1. Created staging tables  
2. Removed duplicates  
3. Standardized data  
4. Fixed data types  
5. Handled missing values  

---

## 📎 SQL Code
You can find the full cleaning process in:
`data_cleaning.sql`

---

## 🔜 Next Step
Exploratory Data Analysis (EDA) to uncover insights from the cleaned dataset.
