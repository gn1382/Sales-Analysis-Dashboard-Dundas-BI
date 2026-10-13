USE AdventureWorksDW2022;
GO
CREATE PROCEDURE DateRange
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SET NOCOUNT ON;

    IF @StartDate > @EndDate
    BEGIN
        RAISERROR('Start date cannot be after end date.', 16, 1);
        RETURN;
    END

    SELECT TOP 1
        C.CustomerKey,
        C.FirstName + ' ' + C.LastName AS CustomerName,
        SUM(F.SalesAmount) AS TotalSalesAmount,
        SUM(F.OrderQuantity) AS TotalOrderQuantity
    FROM FactInternetSales F
    INNER JOIN DimCustomer C ON C.CustomerKey = F.CustomerKey
    WHERE CAST(F.OrderDate AS DATE) >= @StartDate 
      AND CAST(F.OrderDate AS DATE) <= @EndDate
    GROUP BY C.CustomerKey, C.FirstName, C.LastName
    ORDER BY SUM(F.SalesAmount) DESC, SUM(F.OrderQuantity) DESC;

END;
GO