---------------------------------------------------
-- Sams Teach Yourself SQL in 10 Minutes
-- http://www.forta.com/books/0672325675/
-- Example table population scripts for PostgreSQL.
---------------------------------------------------


---------------------------
-- Populate Customer table
---------------------------
INSERT INTO Customer(cust_id, cust_first_name, cust_mid_initial, cust_last_name, cust_email, is_member)
VALUES(01, 'John', 'P', 'Smith', 'john.smith@gmail.com', false);
INSERT INTO Customer(cust_id, cust_first_name, cust_mid_initial, cust_last_name, cust_email, is_member)
VALUES(02, 'Phil', 'K', 'Columbus', 'phil2443_amazing@hotmail.com', true);

-------------------------
-- Populate Menu table
-------------------------
INSERT INTO Menu(food_id, food_name, beverage_id, beverage_name)
VALUES(01,'Pork',01 ,'Fanta');
INSERT INTO Menu(food_id, food_name, beverage_id, beverage_name)
VALUES(02,'Chicken',02 ,'Sprite');

--------------------------
-- Populate Food_Order table
--------------------------
INSERT INTO Food_Order(order_id, cust_name, order_amount, order_time)
VALUES(01, 'John P Smith', 9, 15);
INSERT INTO Food_Order(order_id, cust_name, order_amount, order_time)
VALUES(02, 'Phil K Columbus', 2, 25);

------------------------
-- Populate Worker table
------------------------
INSERT INTO Worker(worker_id, worker_name, is_working, worker_job_category, worker_salary, is_full_time)
VALUES(01, 'Timmy B Susan', true, 'Cashier', 30000, true);
INSERT INTO Worker(worker_id, worker_name, is_working, worker_job_category, worker_salary, is_full_time)
VALUES(02, 'Jimmy I Cool', false, 'Manager', 70000, true);

----------------------------
-- Populate Stock_Shipment table
----------------------------
INSERT INTO Stock_Shipment(supplier_id, supplier_name, is_food_stocked, is_beverage_stocked)
VALUES(01, 'Chris Suppling Company', false, true);
INSERT INTO Stock_Shipment(supplier_id, supplier_name, is_food_stocked, is_beverage_stocked)
VALUES(02, 'Amazing Food Co.', true, false);

----------------------------
-- Populate Delivery_Driver table
----------------------------
INSERT INTO Delivery_Driver(driver_id, driver_name, is_working, driver_vin, delivery_time)
VALUES(01, 'Richcy D Rich', true, 37654276, 25);
INSERT INTO Delivery_Driver(driver_id, driver_name, is_working, driver_vin, delivery_time)
VALUES(02, 'Mike P Anderson', true, 45353254, 30);


