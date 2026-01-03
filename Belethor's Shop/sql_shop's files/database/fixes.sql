
List of example fixes to use:

-- 1) remove tx_items pointing to non-existent product_id
DELETE FROM tx_items
WHERE product_id NOT IN (SELECT product_id FROM products);

-- 2) remove tx_items pointing to non-existent transaction_id
DELETE FROM tx_items
WHERE transaction_id NOT IN (SELECT transaction_id FROM transactions);

-- 3) remove duplicated characters keeping the smallest id
DELETE c FROM characters c
JOIN characters c2 ON c.name = c2.name AND c.character_id > c2.character_id;

-- Fix 4: fix broken UTF-8 apostrophes in product names
UPDATE products
SET name = REPLACE(name, 'â€™', '''');
