-- CRETA 03 MEANFULL REPORT
-- RP 01 : OVERALL ABOUT SELLER 
	-- HOW MANY SELLER, ITEMS EXIST ON SYSTEM
    -- TOP 3 SELLER HAVE MOST ITEM BUYED. 
-- RP 02: BUSSINESS STATUS
	-- TOTAL No Transaction & total GMV?
	-- TOP 3 MOST SOLD PRODUCTS
	-- TOP 3 MAIN_CLUSTER THAT BRING THE BIGGEST GMV
-- RP 03: BUYER BEHAVIOR
	-- How many customers are there in the system?
	-- How many customers have purchased?
	-- Which areas do most customers come from?
	-- Percentage of customers returning to purchase
	-- Buyer buys the most?
    
-- --------------------------------------------------------------
-- REPORT 01 OVERALL
-- -----------------------------------------------------------------

	-- HOW MANY SELLER, ITEMS EXIST ON SYSTEM
    SELECT concat( "There are ",COUNT( distinct SELL.seller_name), " Seller and ", count( distinct GOOD.Item_name)," items that exis on system")
    FROM project03.seller as SELL , project03.items AS GOOD;
    
    -- TOP 3 SELLER HAVE MOST ITEM BUYED. 
	SELECT SELL.seller_name, COUNT(DISTINCT CART.Item_ID) AS No_Item
    FROM shop_cart_info AS CART
    INNER JOIN seller AS SELL ON CART.Seller_short_code = SELL.Seller_short_code
    GROUP BY SELL.seller_name
    ORDER BY No_Item DESC, SELL.seller_name ASC
	limit 3;

-- --------------------------------------------------------------
-- RP 02: BUSSINESS STATUS
-- --------------------------------------------------------------
	-- TOTAL No Transaction & total GMV?
Select COUNT(*) AS No_of_order, sum(REVENUE) AS Total_Revenue from overall_view;
	-- TOP 3 MOST SOLD PRODUCTS
SELECT Item_name, sum(Amount) AS total_product_selled from overall_view
GROUP BY Item_name
ORDER BY total_product_selled DESC
LIMIT 3;
	-- TOP 3 MAIN_CLUSTER THAT BRING THE BIGGEST GMV
SELECT main_cluster, sum(REVENUE) AS Total_GMV from overall_view
GROUP BY main_cluster
ORDER BY Total_GMV DESC
LIMIT 3;

-- --------------------------------------------------------------
-- RP 03: BUYER BEHAVIOR-----------------------------------------
-- --------------------------------------------------------------
	-- How many customers are there in the system?
	-- How many customers have purchased?
	-- Which areas do most customers come from?
	-- Percentage of customers returning to purchase
	-- Buyer buys cost most?
    
	-- How many customers are there in the system?
	-- How many customers have purchased?
    select 	(Select count(*) from buyer) as No_of_Buyer,
			(Select count(Distinct Buyer_ID) from transaction) as No_Buyer_Have_Order,
            Concat(ROUND(((Select count(Distinct Buyer_ID) from transaction)/(Select count(*) from buyer)),2)*100,"%")as Convert_Rate
    from buyer, transaction
    limit 1;
    
-- Which areas do most customers come from?
Select BUY.Buyer_region, count(*) as No_of_order
from transaction AS TRANS inner join buyer AS BUY on TRANS.Buyer_ID = BUY.Buyer_ID
GROUP BY BUY.Buyer_region
ORDER BY No_of_order DESC
LIMIT 1;

-- Percentage of customers returning to purchase
-- CREATE VIEW TEMP1 AS
-- Select transaction.Buyer_ID, count(*) AS No_of_Order from transaction
-- GROUP BY transaction.Buyer_ID
-- -------
SELECT 	(SELECT COUNT(*) FROM TEMP1) AS No_Buyer,
		(SELECT COUNT(*) FROM TEMP1 WHERE No_of_Order > 1) AS No_Buyer_Re_Buy,
        CONCAT(ROUND(((SELECT COUNT(*) FROM TEMP1 WHERE No_of_Order > 1)/(SELECT COUNT(*) FROM TEMP1))*100,0),"%") AS RETURN_RATE
FROM TEMP1
LIMIT 1;

-- Buyer buys cost most?
SELECT Buyer_name, sum(REVENUE) AS Total_Revenue 
FROM overall_view
GROUP BY Buyer_name
ORDER BY Total_Revenue
LIMIT 1;


