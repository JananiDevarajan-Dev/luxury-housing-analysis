# luxury-housing-analysis
# 🏙️ Luxury Housing Sales Analysis – Bengaluru

A complete **end-to-end real estate analytics solution** replicating an enterprise-level data pipeline using Python, MySQL, and Power BI.  
The project analyzes over **100,000+ housing records** from the Bengaluru luxury real estate market to generate actionable business insights.

---

## 📖 Table of Contents
- [Problem Statement](#-problem-statement)
- [Objectives & Business Use Cases](#-objectives--business-use-cases)
- [Tools & Technologies](#-tools--technologies)
- [Project Workflow](#-project-workflow)
- [Data Cleaning & Transformation (Python)](#-data-cleaning--transformation-python)
- [Data Warehousing (SQL)](#-data-warehousing-sql)
- [Data Visualization (Power-BI)](#-data-visualization-power-bi)
- [Dashboard KPIs & Visuals](#-dashboard-kpis--visuals)
- [Results & Insights](#-results--insights)
- [Project Structure](#-project-structure)
- [Setup & Installation](#-setup--installation)
- [Future Enhancements](#-future-enhancements)
- [Author](#-author)
- [License](#-license)

---

## 💡 Problem Statement

To build a **real-world real estate analytics system** that:
- Cleans and preprocesses large-scale luxury housing data using **Python**  
- Loads the refined dataset into a **SQL database**  
- Connects **Power BI** directly to SQL for **interactive dashboards and business storytelling**

The dataset contains **100,000+ records** across multiple features such as builder, micro-market, ticket price, amenities, and buyer details.

---

## 🎯 Objectives & Business Use Cases

### 🔹 Market Intelligence  
Identify high-performing localities, builder trends, and shifting demand patterns.  

### 🔹 Sales Optimization  
Analyze booking and inquiry data to detect drop-offs in the buyer journey.  

### 🔹 Buyer Persona Analysis  
Group buyers by sentiment and purchase type to tailor marketing.  

### 🔹 Competitive Pricing  
Compare pricing strategies across builders and market segments.  

### 🔹 Amenity Conversion Impact  
Study the relationship between amenities and booking success rates.  

### 🔹 Quarterly Trend Tracking  
Track market patterns across quarters to aid real estate investments.  

---

## 🧰 Tools & Technologies

| Category | Tool / Technology |
|-----------|------------------|
| Programming | Python (Pandas, NumPy) |
| Database | MySQL  |
| Visualization | Power BI |
| Data Handling | SQLAlchemy  |
| Analysis | Jupyter Notebook |
| Version Control | Git & GitHub |

---

## 🔄 Project Workflow

### 🐍 Step 1: Python — Data Cleaning & Feature Engineering  
- Load raw `.csv` data  
- Handle null values and inconsistent formats (`Ticket_Price_Cr`, `Amenity_Score`, `Booking_Status`)  
- Normalize text fields (`Builder`, `Micro_Market`)  
- Create new derived columns:
  - `Price_per_Sqft`
  - `Quarter_Number`
  - `Booking_Flag`
- Output cleaned dataset ready for database insertion  

### 🧠 Step 2: SQL — Data Warehousing  
- Design SQL table schema  
- Insert cleaned data via **SQLAlchemy **  
- Validate load with queries like:
  ```sql
  SELECT COUNT(*)
  FROM housing_sales;

  SELECT Builder, AVG(Ticket_Price_Cr)
  FROM housing_sales
  GROUP BY Builder;
  ```

### 📊 Step 3: Power BI — Dashboard & Visualization  
- Connect Power BI directly to SQL database  
- Build data model & relationships  
- Develop visuals and KPIs for strategic insights  

---

## 📈 Dashboard KPIs & Visuals

| # | Visualization Question | Visual Type |
|---|------------------------|--------------|
| 1 | Quarterly booking trends across micro-markets | Line Chart |
| 2 | Top-performing builders by sales & average ticket | Bar/Matrix Chart |
| 3 | Correlation: Amenity Score vs Booking Success | Scatter Plot |
| 4 | Booking conversion by micro-market | Stacked Column |
| 5 | Configuration demand (3BHK/4BHK) | Pie / Donut Chart |
| 6 | Sales channel performance | 100% Stacked Column |
| 7 | Builder performance by quarter | Matrix Table |
| 8 | Possession status vs Buyer type | Clustered Column |
| 9 | Project geographical distribution | Map Visual |
| 10 | Top 5 Builders by Revenue & Conversion | KPI / Card Visuals |

---

## 📊 Results & Insights

- Clean, validated dataset loaded into SQL for live Power BI connections  
- Interactive dashboards showcasing builder and market trends  
- Insights on pricing, demand, and amenity-based conversions  
- Data-driven foundation for **investment and marketing strategy decisions**

---

## 🧱 Project Structure

```
Luxury-Housing-Analysis/
│
├── data/
│   ├── Luxury_Housing_Bangalore.csv
│   └── Luxury_Housing_Bangalore_Cleaned.csv
│
├── notebooks/
│   ├── 01_Data_Cleaning.ipynb
│   
│
├── sql/
│   ├── Luxury_Housing_Bangalore.sql
│ 
│
├── powerbi/
│   └── Luxury_Housing_Dashboard.pbix
│
├── requirements.txt
├── README.md

```

---

## ⚙️ Setup & Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/JananiDevarajan-Dev/luxury-housing-analysis.git
   cd luxury-housing-analysis
   ```



2. **Install Dependencies**
   ```bash
   pip install -r requirements.txt
   ```


3. **Load Data into SQL**
   - Update DB credentials 
   - Execute SQL scripts or Python loading scripts

4. **Connect Power BI**
   - Open `.pbix` file  
   - Connect to your SQL database instance  
   - Refresh visuals to view live data

---

