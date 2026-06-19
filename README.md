# 📊 E-Commerce Sales Analysis Dashboard
### Power BI · SQL · DAX · Olist Brazil Dataset · Business Intelligence

---

> **Analyzing 99,441+ orders across Brazil to uncover revenue trends, customer behavior, geographic opportunities, and business growth insights through Power BI.**

---

## 🎯 Project Overview

This project analyses the [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) — a real-world dataset of 99,441 orders placed between January and December 2018 across multiple Brazilian states.

The goal was to build a production-style sales analytics dashboard that answers real business questions:

- Where is revenue concentrated geographically?
- Which products and cities drive the most orders?
- How does revenue trend over time, and when does it dip?
- What is the average order value, and how does it vary?

---

## 🚀 Why This Project Matters

This project demonstrates my ability to:

* Analyze large-scale sales datasets (99K+ orders)
* Build business-focused Power BI dashboards
* Write SQL queries for data extraction and aggregation
* Develop DAX measures for KPI tracking
* Identify revenue trends and geographic opportunities
* Translate raw data into actionable business recommendations

This project covers the complete analytics workflow from data preparation and modeling to visualization and decision-making.

## 📌 Executive Summary

Using 99,441 orders from the Olist Brazil E-Commerce dataset, this analysis identified significant geographic revenue concentration, seasonal sales fluctuations, and product-level performance trends.

The dashboard revealed that São Paulo and Rio de Janeiro generated over half of total revenue, February experienced the lowest monthly sales performance, and a small group of products contributed a disproportionate share of revenue.

These insights can help businesses improve regional expansion strategies, optimize promotional timing, and increase average order value through targeted initiatives.

## 📈 Dashboard Screenshot

![Dashboard](Dashboard_Screenshot.png)

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Power BI Desktop** | Dashboard design, visualisation, interactivity |
| **DAX** | KPI measures, conversion calculations, conditional formatting |
| **SQL (MySQL)** | Data cleaning, joins, aggregation, funnel logic |
| **Excel / CSV** | Raw data handling and pre-processing |

---

## 📁 Project Structure

```
ecommerce-sales-dashboard/
│
├── ecommerce-dashboard.pbix       ← Power BI dashboard file
├── ecommerce_analysis.sql         ← SQL queries used for data prep
├── orders_clean.csv               ← Orders data
├── order_items_clean.csv          ← Order items data
├── customers_clean.csv            ← Customers data
├── Dashboard_Screenshot.png       ← Full dashboard screenshot
└── README.md
```

---

## 📊 Dashboard Features

The dashboard is a single-page interactive report with 8 visuals and 2 slicers.

| Visual | Type | What it shows |
|--------|------|---------------|
| Total Revenue | KPI Card | R$ 15.84M — sum of price + freight |
| Total Customers | KPI Card | 99K unique customers |
| Total Orders | KPI Card | 99K distinct orders |
| Avg Order Value | KPI Card | R$ 159.33 per order |
| Monthly Revenue Trend | Line Chart | Revenue by month, Jan–Dec 2018 |
| Top 5 Cities by Orders | Bar Chart | Geographic order concentration |
| Revenue by State | Donut Chart | Top 5 states by revenue share |
| Top 10 Products | Bar Chart | Highest revenue-generating products |
| City Performance | Matrix Table | City × Orders × Revenue |
| Key Insights | Text Panel | 4 data-driven business findings |

**Interactive filters:** Month slicer · State slicer — all visuals update together.

---

## 📐 DAX Measures

```dax
Total Revenue =
SUM(order_items_clean[price]) + SUM(order_items_clean[freight_value])

Total Orders =
DISTINCTCOUNT(orders_clean[order_id])

Total Customers =
DISTINCTCOUNT(customers_clean[customer_id])

Avg Order Value =
DIVIDE([Total Revenue], [Total Orders], 0)

City Share % =
DIVIDE(
    [Total Orders],
    CALCULATE([Total Orders], ALL(customers_clean[customer_city])),
    0
)
```

---

## 🔍 Key Insights

These findings were derived from the dashboard analysis — not visible from the raw data alone:

1. Revenue is Highly Concentrated

São Paulo and Rio de Janeiro generated 51% of total revenue, indicating strong market concentration and highlighting opportunities for expansion into underpenetrated regions.

2. February Shows Significant Revenue Decline

Revenue dropped to approximately R$1.20M in February, representing the lowest-performing month of the year and suggesting post-holiday seasonality effects.

3. Revenue Follows a Pareto Distribution

The highest-performing product generated approximately R$68K in revenue, while a relatively small group of products contributed a disproportionate share of total sales.

4. São Paulo Dominates Order Volume

São Paulo recorded 15.5K orders compared to Rio de Janeiro's 6.9K orders, indicating significant differences in customer demand across regions.

---
## 🎯 Skills Demonstrated

* Sales Analytics
* Business Intelligence
* KPI Development
* Revenue Analysis
* Customer Analytics
* Geographic Analysis
* SQL Data Analysis
* DAX Calculations
* Data Visualization
* Dashboard Storytelling
* Stakeholder Reporting
* Business Recommendation Development

## 📈 Dataset Information

| Property | Detail |
|----------|--------|
| Dataset | Brazilian E-Commerce Public Dataset by Olist |
| Source | [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) |
| Time Period | January 2018 – December 2018 |
| Total Orders | 99,441 |
| Total Revenue | R$ 15.84M |
| States Covered | 27 Brazilian states |
| Event Types | Orders, Items, Customers, Payments |

---

## 🗄️ SQL Concepts Used

- `JOIN` operations across orders, items, and customers tables
- `GROUP BY` with aggregate functions (`SUM`, `COUNT`, `AVG`)
- `HAVING` clauses for filtered aggregations
- `CASE WHEN` for conditional logic
- Common Table Expressions (CTEs) for multi-step queries
- `RANK()` and `DENSE_RANK()` window functions
- Running totals using `SUM() OVER()`
- Top-N filtering for city and product analysis

---

## 💡 Business Recommendations

**1. Invest in regional expansion beyond SP**
With SP + RJ = 51% of revenue, diversifying into MG, RS, and PR represents the clearest growth lever.

**2. Target February with promotions**
The February revenue dip is consistent and significant. A targeted discount or bundle campaign in late January could soften the drop.

**3. Protect and promote top-10 products**
The top 10 SKUs contribute outsized revenue. Ensuring stock availability and prominent placement for these products has direct revenue impact.

**4. Improve average order value**
At R$ 159.33, there is room to increase AOV through bundle recommendations and free shipping thresholds.

---

## 👤 About

**Role Target:** Data Analyst · Business Intelligence Analyst · Product Analyst

**Skills demonstrated in this project:**
`Power BI` `DAX` `SQL` `Data Visualisation` `KPI Development` `Business Intelligence` `Geographic Analysis` `Dashboard Storytelling`

---

## 📬 Contact

- LinkedIn: https://www.linkedin.com/in/suresh-pawar-a2b7bb26b
- Github: https://github.com/Suru7971
- Email: surupawar7971@gmail.com

---

> ⭐ If you found this project useful, feel free to star the repository!
