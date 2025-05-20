-- Monthly Sales Trend Analysis (MySQL)

SELECT
    YEAR(InvoiceDate) AS year,
    MONTH(InvoiceDate) AS month,
    ROUND(SUM(Quantity * UnitPrice * (1 - Discount)), 2) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM
    cleaned_online_sales_dataset
WHERE
    InvoiceDate BETWEEN '2020-01-01' AND '2025-09-05'  -- Change dates as needed
GROUP BY
    YEAR(InvoiceDate),
    MONTH(InvoiceDate)
ORDER BY
    year,
    month;
