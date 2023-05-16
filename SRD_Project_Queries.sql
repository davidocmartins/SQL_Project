-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Álvaro Reis - n20220679
-- David Martins - n20221006
-- Diogo Martins - n20221361
-- Marta Correia - n20220709
-- ---------------------------------------------------------------------------------------------------------------------------------------------------

USE gamestore;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 1 - List all the customer’s names, dates, and products or services used/booked/rented/bought by these customers in a range of two dates.
-- ---------------------------------------------------------------------------------------------------------------------------------------------------

SELECT concat(c.`First_Name`, ' ', c.`Last_Name`) as `Customer Name`, o.`Order_Datetime` as `Date of Purchase`, p.`Name` as `Product Name`
FROM Customer c, OrderG o, Product p, Order_Product op
WHERE c.ID_Customer = o.ID_Customer and o.ID_Order = op.ID_Order and op.ID_Product = p.ID_Product 
and o.Order_Datetime between '2020-04-12' and '2023-03-11';

-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 2 - List the best three customers/products/services/places (you are free to define the criteria for what means “best”)
-- ---------------------------------------------------------------------------------------------------------------------------------------------------

SELECT c.ID_Customer,concat(c.`First_Name`, ' ', c.`Last_Name`) as `Customer Name`, 
sum((op.Quantity)*(p.Price-(p.Price*pro.Promotion_Rate))) as `Money Spent`
FROM Customer c, OrderG o, Product p, Promotion pro, Order_Product op
WHERE c.ID_Customer = o.ID_Customer and o.ID_Order = op.ID_Order and op.ID_Product = p.ID_Product
GROUP BY c.ID_Customer,`Customer Name`
ORDER BY `Money Spent` DESC
LIMIT 3;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 3 - Get the average amount of sales/bookings/rents/deliveries for a period that involves 2 or more years, as in the following example.
-- ---------------------------------------------------------------------------------------------------------------------------------------------------

SELECT
	CONCAT(CAST(min(og.`Order_Datetime`) AS DATE), ' - ', CAST(max(og.`Order_Datetime`) AS DATE)) as PeriodOfSales,
	CONCAT(sum(og.Total), ' €') AS 'TotalSales',
	(SELECT SUM(Sum_Per_Year) / (MAX(Year) - MIN(YEAR) + 1) AS 'Y'
		FROM (
			SELECT sum(og.Total) AS 'Sum_Per_Year', EXTRACT(year FROM og.Order_Datetime) AS 'Year'
			FROM orderg og
			GROUP BY EXTRACT(year FROM og.Order_Datetime)
		) YearsTotal
	) 'YearlyAverage (of the given period)',
    (SELECT SUM(Sum_Per_Month) / TIMESTAMPDIFF(month, MIN(Min_Month), MAX(Max_Month)) AS 'M'
		FROM (
			SELECT sum(og.Total) AS 'Sum_Per_Month', MIN(og.Order_Datetime) AS 'Min_Month', MAX(og.Order_Datetime) AS 'Max_Month'
			FROM orderg og
			GROUP BY EXTRACT(year FROM og.Order_Datetime), EXTRACT(month FROM og.Order_Datetime)
		) Monthly_Total
	) 'MonthlyAverage (of the given period)'
FROM orderg og;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 4 - Get the total sales/bookings/rents/deliveries by geographical location (city/country).
-- ---------------------------------------------------------------------------------------------------------------------------------------------------
SELECT co.Country_Name, l.City, concat(sum(og.Total), ' €') AS 'TotalSales'
FROM orderg og
INNER JOIN customer c ON c.ID_Customer = og.ID_Customer
INNER JOIN location l ON l.ID_Location = c.ID_Location
INNER JOIN country co ON co.ID_Country = l.ID_Country
GROUP BY co.Country_Name, l.City;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Query 5 - List all the locations where products/services were sold, and the product has customer’s ratings
-- ---------------------------------------------------------------------------------------------------------------------------------------------------

SELECT distinct(concat(l.Street_Address, ", ", l.ZipCode, ", ", l.City)) as Location
FROM Location l
INNER JOIN customer c ON c.ID_Location=l.ID_Location
INNER JOIN rating r ON c.ID_Customer=r.ID_Customer
INNER JOIN product p ON r.ID_Product=p.ID_Product;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Exercise G
-- ---------------------------------------------------------------------------------------------------------------------------------------------------


-- DROP VIEW invoice_head_totals;
CREATE VIEW `invoice_head_totals_Games` AS
SELECT og.ID_Order AS 'Invoice Number', og.Order_Datetime AS 'Date of Issue', 
CONCAT(c.First_Name,' ',c.Last_Name) AS 'Customer Name', 
CONCAT(l.Street_Address, ", ", l.ZipCode, ", ", l.City) AS "Customer's Address", 
co.Country_Name AS 'Company Name' , l.City, '123 Your Street' AS 'Company_Street', 'StoreGame@email.com' AS 'Email',
CONCAT (og.Total, ' €') AS 'Subtotal',
CONCAT(ROUND(og.Total*pro.Promotion_Rate,2), ' %') AS 'Discount',
(t.Tax_Description) AS 'Tax Rate',
CONCAT (ROUND((og.Total*(1-CAST(pro.Promotion_Rate AS SIGNED)))*(t.Tax_value),2), ' €') AS 'Tax',
CONCAT (ROUND((og.Total-CAST(pro.Promotion_Rate*og.Total AS SIGNED))*(1+t.Tax_value),2), ' €') AS 'Total'
FROM orderg og
INNER JOIN customer c ON c.ID_Customer = og.ID_Customer
INNER JOIN location l ON l.ID_Location = c.ID_Location
INNER JOIN country co ON co.ID_Country = l.ID_Country
LEFT JOIN promotion pro ON pro.ID_Promotion = og.ID_Promotion
INNER JOIN taxes t ON t.ID_Taxes = og.ID_Taxes;

-- WHERE og.ID_Order = 62;  -- Variar consoante a encomenda (a view nao tem where)

--

-- #DROP VIEW invoice_details
CREATE VIEW `invoice_details_Games` AS
SELECT og.ID_Order AS 'Invoice Number', 
p.Name, p.Price AS 'Unit Cost', 
op.Quantity AS 'QTY/HR Rate', 
(p.Price * op.Quantity) AS 'Total'
from Product as p
INNER join Order_Product op on p.ID_Product = op.ID_Product
INNER join OrderG og on op.ID_Order = og.ID_Order


-- WHERE og.ID_Order = 1; -- Variar consoante a encomenda


SELECT * FROM invoice_head_totals_Games;
SELECT * FROM invoice_details_Games;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Insert Trigger and Update Trigger 
-- ---------------------------------------------------------------------------------------------------------------------------------------------------


CREATE DEFINER=`root`@`localhost` TRIGGER `order_product_AFTER_INSERT_Quantity` AFTER INSERT ON `order_product` FOR EACH ROW BEGIN
	UPDATE Product
    SET Product.Stock = Product.Stock - NEW.Quantity
    WHERE Product.ID_Product = NEW.ID_Product;
END

DROP TRIGGER IF EXISTS `gamestore`.`product_AFTER_UPDATE_PRice`;

DELIMITER $$
USE `gamestore`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `product_AFTER_UPDATE_PRice` AFTER UPDATE ON `product` FOR EACH ROW BEGIN
	INSERT INTO log(datetime_change, USR, ID_Product, Old_Price, New_Price) 
    VALUES(NOW(), USER(), NEW.ID_Product, OLD.Price, NEW.Price);
END$$
DELIMITER ;

