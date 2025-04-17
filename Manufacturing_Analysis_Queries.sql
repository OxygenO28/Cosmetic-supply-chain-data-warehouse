--Total production volume for each manufacturer
SELECT manufacturer_code, SUM(production_volumes) AS total_production_volume
FROM dbo.Manufacturing_Analysis
GROUP BY manufacturer_code;

--Average Defect Rate for each carrier
SELECT shipping_carriers, AVG(defect_rates) AS defect_rate_average
FROM dbo.Manufacturing_Analysis
GROUP BY shipping_carriers;

--Total costs for each manufacturer
SELECT manufacturer_code, SUM(costs) AS total_manufacturing_costs
FROM dbo.Manufacturing_Analysis
GROUP BY manufacturer_code;