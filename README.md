# HR Employee Attrition Analysis

## 📌 Project Overview

Employee attrition creates significant business challenges through increased hiring costs, productivity loss, and loss of experienced employees.

This project analyzes employee data to identify the key factors influencing attrition and provides data-driven recommendations to improve employee retention.

The analysis focuses on understanding how job satisfaction, overtime, job roles, departments, and compensation affect employee turnover.

---

## 🎯 Business Problem

The company is experiencing employee attrition, resulting in higher replacement costs and reduced workforce stability.

Management needs to identify which employee groups are at the highest risk of leaving and decide where retention strategies should be focused.

The analysis uses employee attributes such as:

- Job Satisfaction
- Work-Life Balance
- Overtime
- Job Role
- Department
- Monthly Income
- Experience

---

## 🛠 Tools & Technologies Used

- Python
- Pandas
- NumPy
- MySQL
- SQLAlchemy
- PyMySQL
- Power BI
- DAX

---

## 🔄 Data Cleaning & ETL Process

### Python (Pandas)

- Imported IBM HR Employee Attrition dataset
- Checked:
  - Missing values
  - Duplicate records
  - Data types
  - Statistical summary

---
### Data Transformation

Performed cleaning operations:

- Standardized column names
- Removed unnecessary columns:
  - EmployeeCount
  - EmployeeNumber
  - Over18
  - StandardHours

Created new analytical features:

- Age Group
- Income Group

Exported cleaned dataset for analysis.

---

## 🗄 Database Integration

Created an automated data pipeline:

CSV Dataset  
→ Python Cleaning  
→ Pandas DataFrame  
→ SQLAlchemy Connection  
→ MySQL Database

Loaded cleaned employee data into MySQL:

Database:

hr_analytics

Table:

employee_attrition

Successfully inserted:

1470 employee records

---

## 🔍 Business Questions Analyzed

### 1. Which employee factors contribute the most to attrition?

Analyzed:
- Job Satisfaction
- Work-Life Balance

Finding:

Employees with lowest job satisfaction had:

22.84% attrition rate

Compared to highly satisfied employees:

11.33%

### Business Impact:

Lower satisfaction significantly increases employee turnover risk.

### Recommendation:

Improve employee engagement, manager feedback systems, and career growth opportunities.

---

## 2. Are employees working overtime more likely to leave?

Finding:

Employees working overtime:

30.53% attrition

Employees without overtime:

10.44% attrition

### Business Impact:

Overtime employees are almost 3x more likely to leave.

### Recommendation:

Improve workload planning and reduce employee burnout.

---

## 3. Which job roles have the highest attrition risk?

Highest risk roles:

Sales Representative:

39.76%

Laboratory Technician:

23.94%

### Business Impact:

Attrition is concentrated in specific roles.

### Recommendation:

Focus retention programs on high-risk departments and job positions.

---

## 4. How does income affect employee retention?

Finding:

Low Income Employees:

21.76% attrition

Medium Income:

11.14%

High Income:

8.90%

### Business Impact:

Lower compensation groups have higher turnover risk.

### Recommendation:

Review compensation structure and growth opportunities for lower income employees.

---

## 📈 Dashboard KPIs

- Total Employees: 1470
- Employees Retained: 1233
- Employees Left: 237
- Overall Attrition Rate: 16.12%

---

## 📌 Key Business Insights

- Overtime is one of the strongest attrition indicators.
- Lower job satisfaction increases employee exit risk.
- Sales Representative roles require immediate retention focus.
- Lower income employees show higher attrition probability.

---

## 📢 Final Recommendation

The company should prioritize:

✔ Reducing excessive overtime  
✔ Improving employee satisfaction  
✔ Creating role-specific retention plans  
✔ Reviewing compensation for vulnerable employee groups

## 🛠 Tools Used

Python | SQL | Power BI | DAX

These actions can help reduce employee turnover and improve workforce stability.
