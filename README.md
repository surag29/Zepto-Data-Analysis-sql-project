# Zepto Product Data Analysis (SQL Project)

## 📌 Project Overview
This project performs an end-to-end **data analysis on Zepto’s product catalog** using SQL.  
The goal is to explore product availability, pricing, discounts, inventory weight, and revenue potential to generate **actionable business insights**.

The analysis focuses on **data exploration, data cleaning, and business-driven queries** that would be relevant for decision-making teams such as pricing, inventory, and category management.

---

## 🧰 Tools & Technologies
- **Database:** PostgreSQL  
- **Language:** SQL  
- **Concepts Used:**  
  - Data cleaning  
  - Aggregations & grouping  
  - Conditional logic (`CASE`)  
  - Ranking & sorting  
  - Business metrics calculation  

---

## 🗂 Dataset Description
The dataset represents Zepto product listings with the following attributes:

| Column Name | Description |
|------------|------------|
| sku_id | Unique product SKU |
| category | Product category |
| name | Product name |
| mrp | Maximum Retail Price (₹) |
| discountPercent | Discount offered (%) |
| availableQuantity | Units available in inventory |
| discountedSelllingPrice | Final selling price after discount (₹) |
| weightInGms | Product weight in grams |
| outOfStock | Stock availability status |
| quantity | Units per SKU |

---

## 🔍 Analysis Workflow

### 1️⃣ Data Exploration
- Sample data inspection
- Row count validation
- Null value detection
- Identification of duplicate product names
- Stock vs out-of-stock analysis

### 2️⃣ Data Cleaning
- Removed products with zero MRP
- Converted price values from **paise to rupees**
- Ensured consistent and usable numerical fields

### 3️⃣ Business Analysis
- Top discounted products
- High-value products currently out of stock
- Category-wise revenue estimation
- Identification of expensive low-discount products
- Average discount comparison across categories
- Price-per-gram calculation for value assessment
- Weight-based product segmentation
- Inventory weight analysis by category

---

## 📊 Key Business Questions Answered
- Which products offer the **best value** to customers?
- Which **high-MRP products** are unavailable and may cause revenue loss?
- Which categories generate the **highest potential revenue**?
- Are premium products being **under-discounted**?
- Which products provide **better value per gram**?
- How inventory weight is distributed across categories?

---

## 🎯 Key Skills Demonstrated
- Writing optimized SQL queries
- Translating raw data into business insights
- Structuring analysis like a real-world data analyst
- Applying SQL for decision-making use cases

---

## 📁 Repository Structure
├── README.md
├── INSIGHTS.md
├── zepto_analysis.sql
└── dataset.csv  
---

## 🚀 Conclusion
This project demonstrates how SQL can be used to perform **practical business analysis** on real-world e-commerce data.  
The insights generated can help optimize **pricing strategies, inventory planning, and category-level decisions**.

