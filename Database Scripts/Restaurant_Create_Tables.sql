CREATE TABLE Customer
(
  cust_id      int  NOT NULL ,
  cust_first_name    char(50) ,
  cust_mid_initial char(50)  ,
  cust_last_name   char(50)  ,
  cust_email   char(50)  NOT NULL ,
  is_member   boolean
);


CREATE TABLE Menu
(
  food_id  int          NOT NULL ,
  food_name char(50)          NOT NULL ,
  beverage_id   int     NOT NULL ,
  beverage_name   char(50)          NOT NULL
);


CREATE TABLE Food_Order
(
  order_id  int          NOT NULL ,
  cust_name char(50)          NOT NULL ,
  order_amount   int     NOT NULL ,
  order_time  int         NOT NULL
);


CREATE TABLE Worker
(
  worker_id    int      NOT NULL ,
  worker_name    char(50)      NOT NULL ,
  is_working  boolean     NOT NULL ,
  worker_job_category char(50)  NOT NULL ,
  worker_salary  int  , 
  is_full_time  boolean
);


CREATE TABLE Stock_Shipment
(
  supplier_id   int NOT NULL ,
  supplier_name    char(50) NOT NULL ,
  is_food_stocked boolean  ,
  is_beverage_stocked  boolean
);


CREATE TABLE Delivery_Driver
(
  driver_id   int NOT NULL ,
  driver_name    char(50) NOT NULL ,
  is_working boolean  ,
  driver_vin  int ,
  delivery_time  int
);


----------------------
-- Define primary keys
----------------------
ALTER TABLE Customer ADD PRIMARY KEY (cust_id);
ALTER TABLE Food_Order ADD PRIMARY KEY (order_id);
ALTER TABLE Menu ADD PRIMARY KEY (food_id, beverage_id);
ALTER TABLE Worker ADD PRIMARY KEY (worker_id);
ALTER TABLE Stock_Shipment ADD PRIMARY KEY (supplier_id);
ALTER TABLE Delivery_Driver ADD PRIMARY KEY (driver_id, driver_vin);


----------------------
-- Define foreign keys
----------------------
-- ALTER TABLE OrderItems ADD CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (order_num) REFERENCES Orders (order_num);
