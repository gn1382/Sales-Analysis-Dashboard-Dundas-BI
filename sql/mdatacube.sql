WITH DailySales AS (
    SELECT 
        OrderDate,
        SUM(SalesAmount) AS DailySalesAmount
    FROM FactInternetSales
    WHERE OrderDate IS NOT NULL
    GROUP BY OrderDate
),
DateCTE AS (
    SELECT 
        d.OrderDate AS CurrentOrderDate,
        d.DailySalesAmount AS CurrentSalesAmount,
        prev.DailySalesAmount AS PreviousYearSalesAmount,
        prevDay.DailySalesAmount AS PreviousDaySalesAmount,
        DATEADD(YEAR, -1, d.OrderDate) AS PreviousYearDate,
        DATEADD(DAY, -1, d.OrderDate) AS PreviousDayDate
    FROM DailySales d
    LEFT JOIN DailySales prev
        ON prev.OrderDate = DATEADD(YEAR, -1, d.OrderDate)
    LEFT JOIN DailySales prevDay
        ON prevDay.OrderDate = DATEADD(DAY, -1, d.OrderDate)
),
DateCTE2 AS (
    SELECT 
        *,
        DATEADD(DAY, -1, PreviousYearDate) AS PreviousYearPrevDayDate
    FROM DateCTE
)
SELECT 
    *,
prevYearPrevDay.DailySalesAmount AS prevYearPrevDay,
    (CurrentSalesAmount - PreviousDaySalesAmount) / CurrentSalesAmount * 100 AS PercentSalesDayCurrent,
    (PreviousYearSalesAmount - prevYearPrevDay.DailySalesAmount) / PreviousYearSalesAmount * 100 AS PercentSalesDayPervious
FROM DateCTE2
LEFT JOIN DailySales prevYearPrevDay
    ON prevYearPrevDay.OrderDate = DateCTE2.PreviousYearPrevDayDate;
