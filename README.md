# 🛒 E-Commerce User Funnel Analysis

### [🔗 Live Dashboard (Looker Studio)](YOUR_LOOKER_STUDIO_LINK_HERE)  
### [🔗 Live Dashboard (Power BI)](YOUR_POWER_BI_LINK_HERE)

---

## 🎯 Project Objective

The objective of this project is to analyze the **user journey on an e-commerce cosmetics platform** using funnel analysis.  
The main goals include:

- Understanding how users progress from **homepage → product page → cart → checkout → purchase**.  
- Identifying **where users drop off** in the funnel.  
- Quantifying **conversion rates** and **cart abandonment rates**.  
- Building **interactive dashboards** in **Looker Studio** and **Power BI** for stakeholder reporting.  
- Recommending **strategies to improve conversions and reduce drop-offs**.  

This project demonstrates how to combine **SQL data analysis** and **BI dashboards** to deliver **actionable business insights**.

---

## 🛠️ Tools & Technologies Used

- **Database:** SQLite (20GB dataset from Kaggle)  
- **SQL Editor:** DB Browser for SQLite  
- **Data Cleaning & Processing:** SQL  
- **Visualization & Dashboarding:**  
  - Google Looker Studio (interactive online reporting)  
  - Microsoft Power BI (advanced drill-down analysis)  
- **Version Control:** Git & GitHub  

---

## 📂 Project Workflow

### 1. **Data Sourcing**
- Sourced a **20GB event dataset** containing user logs such as product views, add-to-cart actions, checkouts, and purchases.

### 2. **Data Cleaning**
- Removed null values and duplicates.  
- Standardized data types for timestamps and numeric fields.  
- Prepared clean tables for funnel analysis.

### 3. **Exploratory Data Analysis (EDA)**
- Built the **user funnel** from product view → add to cart → checkout → purchase.  
- Key findings from EDA:  
  - **Overall Conversion Rate:** ~2.5% of users who viewed a product completed a purchase.  
  - **Cart Abandonment Rate:** ~68%, indicating a major drop-off between *Add to Cart* and *Checkout*.  
  - **Checkout Completion Rate:** ~32% of users who reached checkout completed a purchase.  
  - **Peak User Activity:** Highest engagement between **2 PM – 4 PM on weekdays**.  
  - **Top Performing Category:** Skincare products generated the highest purchases.  

### 4. **Dashboarding**

#### 🔹 Google Looker Studio
- Built a **funnel visualization** highlighting user progression at each stage.  
- Added filters for **date ranges, product categories, and device types**.  
- Visualized **geographic heatmaps** to identify sales concentration in top cities.  

#### 🔹 Microsoft Power BI
- Designed a **KPI dashboard** tracking:  
  - Conversion Rate  
  - Cart Abandonment Rate  
  - Average Order Value (AOV)  
  - Returning Customer %  
- Implemented **drill-down reports** for product categories and regional performance.  
- Used **trend analysis visuals** to compare daily, weekly, and monthly engagement.

### 5. **Insight Generation**
- Synthesized outputs from SQL analysis and dashboards into **business insights** and **recommendations** (see below).

---

## 📊 Key Insights & Recommendations

### 🔍 Insights
1. **High Cart Abandonment** – Around 68% of users abandoned their carts.  
2. **Low Overall Conversion** – Only 2.5% of product viewers ended up purchasing.  
3. **Peak Traffic Hours** – Weekday activity peaks in the afternoon (2–4 PM).  
4. **Product Categories** – Skincare drives the highest revenue; luxury cosmetics see high interest but low purchase.  
5. **Regional Trends** – Tier-1 cities account for most sales, while Tier-2/3 cities show strong browsing but weak conversion.  

---

### 💡 Recommendations
- **Simplify Checkout:** Introduce guest checkout, fewer form fields, and one-click payment.  
- **Trust Signals:** Add **security badges, COD options, and return policies** to reduce payment hesitation.  
- **Marketing Optimization:** Launch campaigns during **peak hours (2–4 PM)** for higher engagement.  
- **Category Promotions:** Offer targeted discounts on **luxury cosmetics** to convert interest into sales.  
- **Regional Strategy:** Localize offers for Tier-2/3 cities and emphasize **cash-on-delivery** to build trust.  
- **Retention Tactics:** Use cart reminder emails/WhatsApp messages and **loyalty programs** for repeat purchases.  

---

## 🖼️ Dashboard Preview

### Looker Studio
![Looker Studio Dashboard Screenshot](dashboard/looker_dashboard.png)

### Power BI
![Power BI Dashboard Screenshot](dashboard/powerbi_dashboard.png)

---

## 📌 Project Takeaways
- Learned how to **transform raw data into actionable insights**.  
- Gained experience in **data storytelling through dashboards**.  
- Strengthened business understanding of **conversion funnels in e-commerce**.  

---

## 📑 Repository Structure

