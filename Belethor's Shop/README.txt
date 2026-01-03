This project is a complete SQL and Excel/Libre portfolio exercise based on The Elder Scrolls V: Skyrim. 
It simulates the operations of Belethor’s General Goods, a merchant shop in Whiterun. 
"Everything's for sale my friend. Everything. If I had a sister I'd sell her in a second."- Belethor

The project consists of two parts:
1) SQL / Database
Objective: to demonstrate my ability to design and manage databases.
What I do:
I create a relational database from scratch.
I create and fill tables.
I manage data (INSERT, UPDATE, DELETE).
I build analytical SQL queries (JOIN, GROUP BY, HAVING, CASE, subqueries).

The goal of the project is to demonstrate the ability to:

-Design a relational database from scratch

-Create and populate tables

-Manage data using INSERT, UPDATE, DELETE

-Build analytical SQL queries (JOINs, GROUP BY, HAVING, CASE, subqueries)

The database was designed and populated manually using phpMyAdmin and MariaDB.

 Database Structure
1. Tables

The project contains 6 main tables:

Table	Description
characters	NPC customers who purchase goods
categories	Product categories (Weapons, Armor, Food, etc.)
products	Items available for sale
vendors		Shop vendors (Belethor)
transactions	Customer purchase transactions
tx_items	Items purchased in each transaction

2. Entity-Relationship Model
vendors (1)
   ↓
transactions (many)
   ↓
tx_items (many) → products (1)
   ↑
characters (1)


3. Sample Dataset (Summary)
The database was created from scratch using a controlled seed dataset.

Current dataset size:

	60 characters

	10 categories

	80 products

	1 vendor

	90 transactions

	150 transaction items

The data was generated in a consistent and relationally correct way,
with all foreign keys referencing existing records.

The dataset includes authentic Skyrim characters and items
and is designed for SQL learning and portfolio demonstration purposes.

4. Sample SQL Queries

Below are example queries included in the project:

-- Q1: List all characters (basic SELECT)
SELECT * FROM characters;

-- Q2: List products with price > 50
SELECT name, price FROM products WHERE price > 50;

-- Q3: Transactions on a specific date
SELECT * FROM transactions WHERE tx_date = '2024-01-02';

-- Q4: Products with their category name (JOIN)
SELECT p.name AS product, c.name AS category
FROM products p
JOIN categories c ON p.category_id = c.category_id;

-- Q5: -- Items in each transaction (multi-table JOIN)
SELECT t.transaction_id, c.name AS customer, p.name AS product, ti.quantity
FROM tx_items ti
JOIN transactions t ON ti.transaction_id = t.transaction_id
JOIN products p ON ti.product_id = p.product_id
JOIN characters c ON t.character_id = c.character_id
ORDER BY t.transaction_id;

-------------------------------------------------------------------------------------
Technology Used

MariaDB 

XAMPP- phpMyAdmin

GitHub

SQL (MySQL/MariaDB dialect)


---------------------------------------------------------------------------------------
How to Use:

1. Create an empty database in phpMyAdmin (e.g., BelethorsShop)
2. Import schema.sql
3. Import seed_data.sql
4. (Optional) Import fixes.sql
5. Or import full_database_dump.sql if you want everything at once

*********************************************************
2) Excel/Libre Office Calc file

Belethor's Shop – Data Analysis Project (Excel/LibreOffice)

1) Project description
An analytical project based on a fictional database of Belethor's shop (Skyrim).
The goal was to go through the entire process: from raw data to analysis and visualisation.

2)    File structure

characters, products, categories, transactions, tx_items
→ source data (export from SQL)

analysis
→ calculations:

revenue per day
revenue per product
revenue per customer
average basket value

pivot_*
→ pivot tables (aggregations)

charts_tables
→ charts presenting the analysis results

3)    Data quality control

checking for missing data

duplicate keys

foreign key validation

manual verification of aggregations using filters

4)	Analysis and visualisation

sales analysis over time
top products and categories
best customers
average basket value

5)    Conclusions

The project demonstrates the ability to:
work with different levels of aggregation
avoid double counting
validate results
create clear visualisations

!!!!!!!!!!!!!!!!!! License !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

This project is for educational and portfolio purposes only.
All Skyrim names and item references belong to Bethesda Softworks.


Made by: Drogomira Jarzebowska 😎 
