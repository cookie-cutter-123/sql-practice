-- https://www.linkedin.com/learning/top-five-things-to-know-in-advanced-sql/

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
        ROW_NUMBER() over (PARTITION BY ProdCategory ORDER BY "Order Total" DESC) AS ROW_NUM
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

-- Window functions: lag() and lead()
WITH OrderByDates AS (
    SELECT OrderDate, SUM(Quantity) AS QuantityByDay
    FROM OnlineRetailSales
    WHERE ProdCategory = 'Drones'
    GROUP BY OrderDate
)
SELECT
    OrderDate,
    QuantityByDay,
    LAG(QuantityByDay, 1) OVER (ORDER BY OrderDate) AS LastDateQuantity1,
    LAG(QuantityByDay, 2) OVER (ORDER BY OrderDate) AS LastDateQuantity2,
    LAG(QuantityByDay, 3) OVER (ORDER BY OrderDate) AS LastDateQuantity3,
    LAG(QuantityByDay, 4) OVER (ORDER BY OrderDate) AS LastDateQuantity4,
    LAG(QuantityByDay, 5) OVER (ORDER BY OrderDate) AS LastDateQuantity5
FROM OrderByDates;