CREATE INDEX Seller_idx ON project03.seller(Seller_short_code ASC) VISIBLE;
CREATE INDEX Seller_region_idx ON project03.seller(Seller_region ASC) VISIBLE;
CREATE INDEX Items_idx ON project03.items(Item_ID ASC) VISIBLE;
CREATE INDEX Items_cluster_idx ON solveproject03.items(main_cluster ASC) VISIBLE;
CREATE INDEX Pay_idx ON project03.pay_method(Pay_ID ASC) VISIBLE;
CREATE INDEX Buyer_idx ON project03.buyer(Buyer_ID ASC) VISIBLE;
CREATE INDEX Cart_idx ON project03.shop_cart_info(Shop_cart_ID ASC) VISIBLE;
CREATE INDEX Trans_idx ON project03.transaction(Trans_ID ASC) VISIBLE;
