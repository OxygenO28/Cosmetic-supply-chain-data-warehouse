--Adds stock level for each supplier and groups the info based on supplier.
SELECT supplier_name, SUM(stock_levels) AS stock_sum
FROM dbo.Inventory_Levels
GROUP BY supplier_name;

--Average lead time for each shipping carrier
SELECT shipping_carriers, AVG(lead_time) as lead_time_average
FROM dbo.Inventory_Levels
GROUP BY shipping_carriers;

--Sums up stock level at each location
SELECT location, SUM(stock_levels) as stock_sum
FROM dbo.Inventory_Levels
GROUP BY location;