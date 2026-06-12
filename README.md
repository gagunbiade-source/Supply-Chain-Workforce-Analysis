# 🌐 Enterprise Supply Chain & Workforce Analytics Portfolio

Welcome to my data analytics portfolio. This repository contains end-to-end projects engineered to mirror enterprise-scale logistics, human capital management (HCM), and fulfillment challenges faced by modern platforms like **Dayforce** and **Super**. 

---

## 📊 Executive Dashboard
![Supply Chain Dashboard](Supply%20chain%20dashboard%20Screenshoot.png)

### 🎯 Portfolio Overview
This repository bridges the gap between descriptive operations tracking and predictive workforce engineering. By cross-referencing worker schedules, relational SQL schemas, and machine learning/statistical analysis profiles, these projects isolate operational bottlenecks and mitigate high-volume business friction points.

### 🧠 AI-Enabled Curriculum & Methodology
To elevate the analytical lifecycles, **AI was integrated as a collaborative co-pilot**:
* **Data Synthesis:** Engineered targeted multi-layered operational datasets embedded with realistic systemic flaws using semantic prompt framing.
* **Formula & Query Optimization:** Leveraged AI code-interpretation to stress-test calculation efficiencies, write zero-division fail-safes, and map complex statistical correlations.

---

## 📁 Project 1: Supply Chain Workforce & Labor Efficiency Analysis (Excel)

### Business Challenge
Fulfillment logistics networks must closely balance labor capacity against volume spikes to protect thin operational margins. This layer isolates high-variance cost centers across multi-location warehouses.

### Key Insights & Business Recommendations
* **The Shipping Bottleneck:** The East Warehouse night shift experiences a **23% spike in critical shipment delays** compared to daytime operations.
* **The Root Cause:** Cross-analysis revealed that while order volumes surge by 40% at night, labor capacity only increases by 10%, leading to severe operational understaffing.
* **Strategic Recommendation:** Reallocate 2 redundant daytime fulfillment roles to the high-volume night shift. This balances the labor-to-volume ratio without increasing gross overtime expenditures.

### Tech & Skills Showcased
* **Advanced Excel:** Interactive Dashboards, Dynamic Slicers, Pivot Tables, Conditional Formatting.
* **Formulas Mastered:** `XLOOKUP`, `INDEX/MATCH`, `AVERAGEIFS`, Nested `IF` statements.

---

## 📊 Project 2: High-Volume Operational SQL Analysis

### Business Challenge
Scaling fulfillment logistics safely requires tracking financial burn alongside real-time workforce scheduling output. Using relational mock schemas, this project aggregates labor inputs against pipeline friction points.

### Database Architecture
* `logistics_hubs`: Establishes structural infrastructure parameters and processing limits.
* `employee_shifts`: Timecard tracking, hourly cost structures, and scheduling metrics (Dayforce-style).
* `delivery_orders`: Transactional inventory logs, velocities, and delay tracking (Super-style).

### Advanced Technical Implementations Used
* **Multi-Table Relational Joins:** Bridging discrete dimensional metrics securely across transactional boundaries.
* **Conditional Aggregations:** Utilizing conditional `CASE WHEN` logical groupings to extract custom operational KPIs without mutating raw tables.
* **Zero-Division Fail-safes:** Implementing `NULLIF` and `COALESCE` handling paradigms to safeguard system runtime metrics against empty records.

---

## 🐍 Project 3: Predictive Workforce Retention & Risk Analysis (Python)

### Business Problem
High employee turnover in supply chain logistics causes cascading shipping delays and spikes onboarding expenditures. This project constructs a predictive profile in Python to evaluate "flight-risk" employees and automate retention interventions.

### Key Visualization
![Retention Heatmap](churn_heatmap.png)

### 📈 Statistical Outputs & Data Insights
The underlying statistical analysis isolates clear structural catalysts for workforce attrition across **250 active employees**:

#### 1. Core Attrition Drivers
* **Overtime Burnout:** Employees who ultimately left the organization logged an average of **23.11 overtime hours/month**, compared to just **15.56 hours/month** for retained staff.
* **Engagement Collapse:** The average employee engagement survey score for the departed group sat at a critical **4.78 out of 10**, compared to a stable **7.04** for active employees.
* **Statistical Correlation Matrix:**
  ```text
             Factor           | Correlation Matrix Score
  ----------------------------+--------------------------
   Engagement_Survey_Score    |     -0.3561  (Strong Inverse)
   Monthly_Avg_Overtime_Hours |      0.2770  (Direct Driver)
   Tenure_Months              |      0.0891
   Last_Performance_Rating    |      0.0723
   Hourly_Rate                |      0.0174
  Department    | Total Employees | Employees Left | Attrition Rate (%) 
------------------+-----------------+----------------+--------------------
 HR               |              29 |             10 |              34.48%
 Operations       |              27 |              7 |              25.93%
 Finance          |              25 |              6 |              24.00%
 Fulfillment      |              43 |             10 |              23.26%
 Shipping         |              32 |              7 |              21.88%
 Customer Support |              31 |              5 |              16.13%
 IT               |              33 |              5 |              15.15%
 Warehouse        |              30 |              4 |              13.33%
Risk Tier | Employees | Employees Left | Attrition Rate |            Recommended Business Action             
-----------+-----------+----------------+----------------+-----------------------------------------------------
 High      |         7 |              7 |        100.00% | Immediate corporate manager intervention (<=7 days)
 Medium    |        11 |              9 |         81.82% | Workload rebalancing + active pulse check
 Low       |       232 |             38 |         16.38% | Standard lifecycle retention monitoring
 
