-- ACCOUNT MANAGEMENT STATEMENTS
SELECT CURRENT_USER();

-- CREATE USER
CREATE USER 'Buyer_Account'@'localhost' IDENTIFIED BY 'minhtruong';
CREATE USER 'Seller_Account'@'localhost' IDENTIFIED BY 'minhtruong';

-- ALTER ROLE FOR SELLER
GRANT CREATE, DELETE, INSERT, SELECT, UPDATE on project03.seller to 'Seller_Account'@'localhost';
GRANT CREATE, DELETE, INSERT, SELECT, UPDATE on project03.shop_cart_info to 'Seller_Account'@'localhost';
GRANT SELECT on project03.items to 'Seller_Account'@'localhost';

-- 	ALTER ROLE FOR BUYER
GRANT CREATE, DELETE, INSERT, SELECT, UPDATE on project03.buyer to 'Buyer_Account'@'localhost';
GRANT SELECT on project03.shop_cart_info to 'Buyer_Account'@'localhost';
GRANT SELECT on project03.seller to 'Buyer_Account'@'localhost';
GRANT SELECT on project03.items to 'Buyer_Account'@'localhost';
GRANT SELECT on project03.pay_method to 'Buyer_Account'@'localhost';
GRANT CREATE, DELETE, INSERT, SELECT, UPDATE on project03.transaction to 'Buyer_Account'@'localhost';

-- SHOW GRANT FOR USERS
SHOW GRANTS FOR 'Seller_Account'@'localhost';
SHOW GRANTS FOR 'Buyer_Account'@'localhost';

-- CREATE USER FOR BACKUP
CREATE USER 'User_Backup'@'localhost' IDENTIFIED BY 'minhtruong';
SHOW GRANTS FOR 'Buyer_Account'@'localhost';

-- SHOW ALL USER
select Host,User,plugin from mysql.user;
