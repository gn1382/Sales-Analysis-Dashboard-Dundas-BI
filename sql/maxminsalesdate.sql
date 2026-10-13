WITH DailySales AS (
    SELECT
        OrderDate,
        SUM(SalesAmount) AS DailySalesAmount
    FROM FactInternetSales
    WHERE OrderDate IS NOT NULL
    GROUP BY OrderDate
)
SELECT
    MAX(DailySalesAmount) AS MaxSales,
    (SELECT OrderDate
     FROM DailySales
     WHERE DailySalesAmount = (SELECT MAX(DailySalesAmount) FROM DailySales)
    ) AS MaxSalesDate,

    MIN(DailySalesAmount) AS MinSales,
    (SELECT OrderDate
     FROM DailySales
     WHERE DailySalesAmount = (SELECT MIN(DailySalesAmount) FROM DailySales)
    ) AS MinSalesDate,
	SUM(DailySalesAmount) AS sumSales
FROM DailySales;