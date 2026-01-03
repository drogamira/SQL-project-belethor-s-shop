CREATE TABLE characters (
  character_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150),
  race VARCHAR(50),
  faction VARCHAR(100)
);

CREATE TABLE categories (
  category_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100)
);
CREATE TABLE vendors (
  vendor_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150),
  location VARCHAR(150)
);
CREATE TABLE products (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(200),
  category_id INT,
  price DECIMAL(10,2)
);
CREATE TABLE transactions (
  transaction_id INT AUTO_INCREMENT PRIMARY KEY,
  character_id INT,
  vendor_id INT,
  tx_date DATE
);

CREATE TABLE tx_items (
  tx_item_id INT AUTO_INCREMENT PRIMARY KEY,
  transaction_id INT,
  product_id INT,
  quantity INT
);
