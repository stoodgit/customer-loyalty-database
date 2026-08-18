# 🛒 Customer Loyalty Program Database Design

An end-to-end relational database design, data model optimization, and analytical SQL querying project developed for a multi-branch franchise retail network.

---

## 📌 Project Overview

> **Type:** Academic Team Project (Database Systems Course)  
> **Institution:** Inha University in Tashkent

This project focuses on designing, implementing, and querying a robust relational database for a **Customer Loyalty Program**. The system integrates customer activity, transaction history, branch/employee performance, product inventories, and marketing promotions into a unified database architecture.

### Key Goals:
* Track customer points, reward redemptions, and purchasing habits.
* Manage franchise operations across multiple branches and employees.
* Provide business intelligence via analytical SQL queries (e.g., customer segmentation, branch performance, promo conversion rates).

---

## 🛠️ Tech Stack & Tools

* **Database Engine:** MySQL
* **Data Modeling:** MySQL Workbench, Entity-Relationship (ER) Diagramming
* **Language:** SQL (DDL, DML, Analytical Queries)

---

## 🗂️ Database Architecture & Modeling

The database structure went through a complete design lifecycle:

1. **Conceptual Design (ER Diagram):** Identified core business entities (*Customer, Branch, Employee, Product, Transaction, Loyalty Program, Promotion, Reward*) and defined cardinality and business constraints.
2. **Logical Design (Crow’s Foot Notation):** Transformed EER models into normalized relational tables, resolving Many-to-Many ($M:N$) relationships using junction tables (`shop_at`, `targets`, `get_notify`, `feature_be_feature`, `appear_in`, `be_earned_through`).
3. **Physical Schema Implementation:** Built normalized MySQL tables using proper Primary Key (PK) and Foreign Key (FK) relational constraints.

---

## 📁 Repository Structure

```text
├── diagrams/
│   ├── Team3_ConceptDiagram.jpg      # Conceptual ER Diagram
│   ├── Team3_LogicalSchema.jpg       # Logical Schema Diagram
│   └── Team3_Workbench.jpg           # MySQL Workbench Crow's Foot ERD
├── report_and_presentation/
│   ├── Team3_main.pdf                # Full Database Design Report
│   └── Team3_Talk.pdf                # Project Presentation Slides
├── sql/
│   ├── Team3_DDL.sql                 # DDL scripts for table structures & constraints
│   ├── Team3_DML.sql                 # Sample dataset population script
│   └── Team3_Queries.sql             # 10 business-oriented analytical SQL queries
└── README.md