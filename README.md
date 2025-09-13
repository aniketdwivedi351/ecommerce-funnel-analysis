🛒 E-Commerce User Funnel Analysis
📊 Live Dashboard - Looker Studio
📊 Live Dashboard - Power BI (Optional)
🎯 Project Objective

The purpose of this project is to analyze customer behavior on an e-commerce cosmetics platform. By building a user funnel from product views to final purchases, the analysis identifies critical drop-off points in the customer journey.

The ultimate goal is to provide data-driven recommendations to:

Reduce cart abandonment

Improve overall conversion rates

Optimize marketing & engagement strategies

Enhance customer experience during checkout

🛠️ Tools & Technologies

Database: SQLite (via DB Browser for SQLite)

Query Language: SQL (for data cleaning, preprocessing, and funnel analysis)

Dashboarding & Visualization:

Google Looker Studio (interactive funnel dashboards, activity heatmaps)

Microsoft Power BI (advanced visualization & drill-down reports)

Version Control & Collaboration: Git & GitHub

📂 Project Workflow

Data Sourcing

Obtained a 20GB event dataset from Kaggle containing user activity logs (views, add-to-cart, checkout, purchases).

Data Cleaning & Preprocessing (SQL)

Removed duplicates

Handled null/missing values

Standardized data types (timestamps, categorical values)

Created derived columns (Day of week, Hour of day, Session ID)

Example Queries Used:

-- Removing duplicates
CREATE TABLE events_cleaned AS
SELECT DISTINCT * FROM events;

-- Handling missing product IDs
DELETE FROM events_cleaned
WHERE product_id IS NULL;

-- Creating day of week from event timestamp
SELECT event_id,
       strftime('%w', event_time) AS day_of_week,
       strftime('%H', event_time) AS hour_of_day,
       event_type,
       user_id
FROM events_cleaned;


Exploratory Data Analysis (EDA)

Funnel step analysis using SQL

Activity heatmap (Day vs. Hour)

Product-level performance (top-selling products, revenue contribution)

Example Funnel Query:

SELECT event_type,
       COUNT(DISTINCT user_id) AS users
FROM events_cleaned
WHERE event_type IN ('view', 'cart', 'purchase')
GROUP BY event_type
ORDER BY users DESC;


Dashboarding

Looker Studio: Built an interactive funnel visualization, heatmaps, and trend reports

Power BI: Added drill-downs for product categories, RFM (Recency, Frequency, Monetary) analysis, and cart abandonment segmentation

📊 Features included:

Funnel Conversion Visualization (View → Cart → Purchase)

Cart Abandonment %

Time-of-day Activity Heatmap

Top Products & Revenue Contributors

User Segmentation by Device & Region

Insight Generation

Derived business insights (drop-off points, peak hours, top-performing SKUs)

Built actionable recommendations

📊 Key Insights

Cart Abandonment:

Identified a 68% cart abandonment rate, the most significant drop-off.

Peak User Activity:

Users are most active on weekdays between 2 PM – 4 PM.

Product Trends:

High revenue contribution from premium skincare items, while budget products drive volume but not conversions.

Regional Trends:

Tier-1 cities show higher conversions compared to Tier-2 and Tier-3 cities.

✅ Recommendations

Checkout Optimization:

Simplify the checkout flow (fewer clicks, guest checkout option)

Add trust badges & payment security logos

Enable multiple payment methods (UPI, wallets, credit/debit cards)

Reduce Cart Abandonment:

Trigger automated cart reminder emails/notifications

Offer limited-time discounts to recover abandoned carts

Marketing & Engagement:

Schedule email campaigns & ads during peak hours (2–4 PM)

Personalize product recommendations based on browsing history

Product Strategy:

Bundle budget products with premium ones to increase average order value (AOV)

Promote trending premium items with targeted ads

🖼️ Dashboard Preview
Looker Studio

Power BI

(Add Screenshot Here)g)
