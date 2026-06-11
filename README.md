# Supply Chain Workforce & Labor Efficiency Analysis

## 📊 Executive Dashboard
![Supply Chain Dashboard](Supply%20chain%20dashboard%20Screenshoot.png)

---

## 🎯 Project Overview
This project analyzes warehouse labor productivity and its direct impact on shipping fulfillment delays. By cross-referencing worker schedules, hourly rates, and shipment backlogs, this analysis mimics workforce optimization challenges faced by enterprise logistics and HCM platforms like **Dayforce** and **Super**.

## 🧠 AI-Enabled Methodology
To elevate the analytical process, **AI was integrated as a co-pilot** throughout the lifecycle of this project:
* **Data Synthesis:** Utilized advanced prompt engineering to generate a realistic, complex supply chain dataset with inherent operational bottlenecks.
* **Formula Optimization:** Leveraged AI to construct multi-layered logical tracking functions (e.g., dynamic `XLOOKUP` and nested `IF` statements) to isolate high-variance cost centers.

## 📈 Key Insights & Business Recommendations
* **The Shipping Bottleneck:** The East Warehouse night shift experiences a **23% spike in critical shipment delays** compared to daytime operations.
* **The Root Cause:** Pivot table cross-analysis revealed that while order volumes surge by 40% at night, labor capacity only increases by 10%, leading to severe operational understaffing.
* **Strategic Recommendation:** Reallocate 2 redundant daytime fulfillment roles to the high-volume night shift. This balances the labor-to-volume ratio without increasing gross overtime expenditures.

## 🛠️ Tech & Skills Showcased
* **Advanced Excel:** Interactive Dashboards, Dynamic Slicers, Pivot Tables, Conditional Formatting.
* **Formulas Mastered:** `XLOOKUP`, `INDEX/MATCH`, `AVERAGEIFS`, Nested `IF` statements.
* 
## 📊 Project 2: High-Volume Operational SQL Analysis

### Business Challenge
Scaling fulfillment logistics safely requires tracking financial burn alongside workforce scheduling output. Using relational mock schemas, this script aggregates labor inputs against fulfillment pipeline friction points.

### Database Architecture
* `logistics_hubs`: Structural infrastructure limits.
* `employee_shifts`: Timecard tracking metrics (Dayforce style).
* `delivery_orders`: Transactional inventory velocities (Super style).

### Advanced Technical Implementations Used
* **Multi-Table Relational Joins:** Bridging dimensional metrics across transactional boundaries.
* **Conditional Aggregations:** Utilizing conditional `CASE WHEN` metrics to extract custom KPIs without mutating tables.
* **Zero-Division Fail-safes:** Implementing `NULLIF` and `COALESCE` handling paradigms to safeguard system runtime metrics against empty records.
