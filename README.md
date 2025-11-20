# IDC Pizza SQL Analytics

🚀 **Mini Project — The Great Pizza Analytics Challenge** 🍕📊  

I completed a hands-on mini-project analyzing real-world pizza sales data using **PostgreSQL**. This project helped me consolidate SQL fundamentals, including filtering, joins, aggregations, and data cleaning, while deriving actionable business insights.  

---

## 📖 Project Overview

The goal of this mini-project was to explore and analyze the **IDC Pizza dataset** using SQL to uncover key trends in:

- Pizza categories  
- Pricing patterns  
- Sales performance  

The project covers **three main phases**:

**Phase 1: Foundation & Inspection**  
- List all unique pizza categories  
- Check for missing ingredients or prices  

**Phase 2: Filtering & Exploration**  
- Explore orders by date  
- Analyze pizzas by size, price, and type  
- Filter for specific patterns like “Chicken” pizzas  

**Phase 3: Sales Performance**  
- Aggregate total and average sales  
- Category-wise sales analysis  
- Identify pizzas never ordered  
- Price differences between pizza sizes  

---

## 💡 Key SQL Topics Practiced

- **Filtering:** `WHERE`, `IN`, `BETWEEN`, `LIKE`  
- **Aggregations:** `SUM`, `AVG`, `COUNT`, `MIN`, `MAX`  
- **Grouping:** `GROUP BY` & `HAVING`  
- **Joins:** `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `SELF JOIN`  
- **Data Cleaning:** `DISTINCT`, `COALESCE`, handling `NULLs`  
- **Logical Thinking:** Query structuring & optimization  

---

## 🧩 Key Highlights

- Explored pizza data: unique categories, missing prices, ingredient gaps  
- Analyzed sales by date, size, price, and “Chicken” pizzas  
- Performed sales performance analysis: total & average sales, category-wise aggregation, pizzas never ordered  
- Calculated price differences between pizza sizes to analyze pricing trends  

---

## ✨ Outcome

Transformed raw pizza data into actionable business insights, strengthened SQL skills, and practiced end-to-end multi-table analysis, building a strong foundation for real-world analytics.  

---

## 📂 Dataset & Setup

The dataset contains four main tables:

- `pizza_types` — pizza details  
- `pizzas` — specific pizza items with size and price  
- `orders` — order details  
- `order_details` — pizzas in each order  

**Setup Instructions:**  

1. Restore `IDC_Pizza.dump` in **PostgreSQL** using pgAdmin or psql.  
2. Verify tables under `public` schema.  
3. Run SQL queries provided in this repository to reproduce analysis.  

---


