
Belethor’s Shop — SQL Portfolio Project

Skyrim-Themed Relational Database

---------Project Overview---------------------------------------------------------------------------

This project is a complete SQL portfolio exercise based on The Elder Scrolls V: Skyrim.
It simulates the operations of Belethor’s General Goods, a merchant shop in Whiterun.

"Everything's for sale my friend. Everything. If I had a sister I'd sell her in a second."- Belethor

------------------------------------------------------------------------------------------------------

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

-------------------------------------------------------------------------------
Project Purpose

This project was created to:

Practise SQL modeling and analysis

Build a portfolio piece for job applications

Demonstrate competence at junior SQL developer level

Show understanding of relational data and retail-like datasets

--------------------------------------------------------------------------------------
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


!!!!!!!!!!!!!!!!!! License !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

This project is for educational and portfolio purposes only.
All Skyrim names and item references belong to Bethesda Softworks.

Made by: Drogomira Jarzebowska 😎