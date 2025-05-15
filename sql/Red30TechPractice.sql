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

-- Window functions: row_number()
WITH row_numbers AS (
    SELECT
        OrderNum,
        OrderDate,
        CustName,
        ProdCategory,
        ProdName,
        "Order Total",
        row_number() over (PARTITION BY ProdCategory ORDER BY "Order Total" DESC) AS ROW_NUM
    FROM OnlineRetailSales
    WHERE CustName = 'Boehm Inc.'
)
SELECT
    OrderNum,
    OrderDate,
    CustName,
    ProdCategory,
    ProdName,
    "Order Total"
FROM row_numbers
WHERE ROW_NUM IN (1, 2, 3)
ORDER BY ProdCategory, "Order Total" DESC;
