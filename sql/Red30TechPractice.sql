-- Subquery
SELECT
    ProdCategory,
    ProdNumber,
    ProdName,
    "In Stock"
FROM Inventory
WHERE "In Stock" < (
    SELECT AVG("In Stock")
    FROM Inventory
);

-- CTE
WITH avg_stock AS (
    SELECT AVG("In Stock") AS stock
    FROM Inventory
)
SELECT
    ProdCategory,
    ProdNumber,
    ProdName,
    "In Stock"
FROM Inventory, avg_stock
WHERE "In Stock" < stock;

--