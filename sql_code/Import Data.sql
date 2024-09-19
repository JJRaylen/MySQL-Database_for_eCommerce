
-- ---------------------------
-- DATA BUYER - ok
-- ---------------------------
-- START TRANSACTION;
-- USE project03;
-- INSERT INTO project03.buyer
-- VALUES ('88469','2023-07-27 10:27:10','Nguyen Thi Lan Anh','097999123','Buyer-001@gmail.com','123 Đường 01 P01 Thanh Xuaan','Hanoi');
-- INSERT INTO project03.buyer
-- VALUES ('88457','2023-07-24 16:55:42','Le Hoang Duc','097888456','Buyer-002@gmail.com','124 Bà Huyện Thanh Quan','Hanoi');
-- INSERT INTO project03.buyer
-- VALUES ('08175','2023-07-12 12:18:29','Hoang Duy Thanh','097777321','Buyer-003@gmail.com','125 Đường 12 P01 Quận tân Bình','HCM');
-- INSERT INTO project03.buyer
-- VALUES ('60282','2023-07-31 16:14:00','Vo Hong Ngoc Tran','097666789','Buyer-004@ gmail.com','126 Đường 01 P7 Quận tân Bình','HCM');
-- SELECT * FROM project03.buyer;
-- COMMIT;
select * from project03.buyer;

-- ---------------------------
-- DATA ITEM -OK 
-- ---------------------------
-- START TRANSACTION;
-- USE project03;
-- INSERT INTO project03.items VALUES ('20230001','Item test 01 ','1. EL','Small Appliances');
-- INSERT INTO project03.items VALUES ('20230002','Item test 02','1. EL','Computers & Laptops');
-- INSERT INTO project03.items VALUES ('20230003','Item test 03','2. FA','Bags and Travel');
-- INSERT INTO project03.items VALUES ('20230004','Item test 04','2. FA','Bags and Travel');
-- INSERT INTO project03.items VALUES ('20230005','Item test 05','2. FA','Fashion Accessories');
-- INSERT INTO project03.items VALUES ('20230006','Item test 06','3. HB','Beauty');
-- INSERT INTO project03.items VALUES ('20230007','Item test 07','3. HB','Health');
-- INSERT INTO project03.items VALUES ('20230008','Item test 08','4. GC','Household Supplies');
-- SELECT * FROM project03.items;
-- COMMIT;
select * from project03.items;
-- ---------------------------
-- Data Seller OK 
-- ---------------------------

-- START TRANSACTION;
-- USE project03;
-- INSERT INTO project03.seller VALUES ('VNJ2NPUB','BKsmart','+84979888111','seller01-LZD@gmail.com','https://www.lazada.vn/shop/bksmart','Hanoi');
-- INSERT INTO project03.seller VALUES ('VNJ2JU4H','Riinn Store (Manyo)','+84979888222','seller02-LZD@gmail.com','https://www.lazada.vn/shop/riinn-store-manyo','Hanoi');
-- INSERT INTO project03.seller VALUES ('VNJ2HGBR','LNG FISHING','+84979444555','seller01-LZD@gmail.com','https://www.lazada.vn/shop/lng-fishing','Hanoi');
-- INSERT INTO project03.seller VALUES ('VNJ2LKE3','MD BOUTIQUE','+84979000222','seller02-LZD@gmail.com','https://www.lazada.vn/shop/md-boutique','Other');
-- INSERT INTO project03.seller VALUES ('VNJ2F19O','PUHA GIFT','+84979123321','seller01-LZD@gmail.com','https://www.lazada.vn/shop/puha-gift','HCMC');
-- SELECT * FROM project03.seller;
-- COMMIT;
select * from project03.seller;

-- ---------------------------
-- Data Pay Method
-- ---------------------------
-- START TRANSACTION;
-- USE project03;
-- INSERT INTO project03.pay_method VALUES('1','E-Wallet');
-- INSERT INTO project03.pay_method VALUES('2','Credit Cards');
-- INSERT INTO project03.pay_method VALUES('3','COD');
-- SELECT * FROM project03.pay_method;
-- COMMIT;
select * from project03.pay_method;

-- ---------------------------
-- Data SHOP CART INFO
-- ---------------------------
-- START TRANSACTION;
-- USE project03;
-- select * from project03.shop_cart_info;
-- INSERT INTO project03.shop_cart_info VALUES ('1','20230008','VNJ2JU4H','3');
-- INSERT INTO project03.shop_cart_info VALUES ('2','20230008','VNJ2LKE3','5');
-- INSERT INTO project03.shop_cart_info VALUES ('3','20230008','VNJ2NPUB','8');
-- INSERT INTO project03.shop_cart_info VALUES ('4','20230007','VNJ2LKE3','10');
-- INSERT INTO project03.shop_cart_info VALUES ('5','20230005','VNJ2F19O','7');
-- INSERT INTO project03.shop_cart_info VALUES ('6','20230003','VNJ2JU4H','2');
-- INSERT INTO project03.shop_cart_info VALUES ('7','20230002','VNJ2NPUB','3');
-- INSERT INTO project03.shop_cart_info VALUES ('8','20230008','VNJ2F19O','12');
-- INSERT INTO project03.shop_cart_info VALUES ('9','20230008','VNJ2HGBR','4');
-- INSERT INTO project03.shop_cart_info VALUES ('10','20230006','VNJ2HGBR','3');
-- INSERT INTO project03.shop_cart_info VALUES ('11','20230002','VNJ2HGBR','5');
-- INSERT INTO project03.shop_cart_info VALUES ('12','20230002','VNJ2JU4H','5');
-- INSERT INTO project03.shop_cart_info VALUES ('13','20230002','VNJ2LKE3','7');
-- INSERT INTO project03.shop_cart_info VALUES ('14','20230001','VNJ2HGBR','9');
-- INSERT INTO project03.shop_cart_info VALUES ('15','20230006','VNJ2NPUB','7');
-- SELECT * FROM project03.shop_cart_info;
-- COMMIT;

-- ---------------------------
-- Data TRANSACTION
-- ---------------------------
START TRANSACTION;
USE project03;
INSERT INTO project03.transaction VALUES ('10001','2023-10-23 00:01:43','08175','3','14','1');
INSERT INTO project03.transaction VALUES ('10002','2023-10-23 00:02:35','08175','1','11','7');
INSERT INTO project03.transaction VALUES ('10003','2023-10-23 00:04:25','08175','1','12','7');
INSERT INTO project03.transaction VALUES ('10004','2023-10-23 00:06:44','88469','2','1','10');
INSERT INTO project03.transaction VALUES ('10005','2023-10-23 00:07:43','08175','1','6','7');
INSERT INTO project03.transaction VALUES ('10006','2023-10-23 00:08:13','88469','2','6','12');
INSERT INTO project03.transaction VALUES ('10007','2023-10-25 17:30:35','88469','3','5','8');
INSERT INTO project03.transaction VALUES ('10008','2023-10-25 17:30:45','88457','1','8','20');
INSERT INTO project03.transaction VALUES ('10009','2023-10-25 17:31:01','08175','1','8','10');
INSERT INTO project03.transaction VALUES ('10010','2023-10-25 17:31:15','08175','2','10','9');
INSERT INTO project03.transaction VALUES ('10011','2023-10-25 17:31:17','88457','2','9','16');
INSERT INTO project03.transaction VALUES ('10012','2023-10-29 21:59:20','88457','3','6','3');
INSERT INTO project03.transaction VALUES ('10013','2023-10-29 22:00:27','88469','1','2','10');
INSERT INTO project03.transaction VALUES ('10014','2023-10-29 22:01:43','88469','1','4','7');
INSERT INTO project03.transaction VALUES ('10015','2023-10-29 22:02:11','08175','3','13','4');
INSERT INTO project03.transaction VALUES ('10016','2023-10-29 22:03:17','88469','1','7','13');
INSERT INTO project03.transaction VALUES ('10017','2023-10-29 22:03:22','88469','2','3','1');
INSERT INTO project03.transaction VALUES ('10018','2023-10-29 22:04:53','08175','3','3','9');
INSERT INTO project03.transaction VALUES ('10019','2023-10-29 22:04:56','88457','1','3','16');
INSERT INTO project03.transaction VALUES ('10020','2023-10-29 22:05:42','08175','3','15','15');
COMMIT;
SELECT * FROM project03.transaction;



-- ------------------------------------------------------------------------------------------









