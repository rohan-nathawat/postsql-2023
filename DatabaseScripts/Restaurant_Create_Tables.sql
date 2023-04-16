CREATE TABLE Customer
(
  cust_id      int  NOT NULL ,
  cust_email   char(50)  NOT NULL ,
  cust_first_name    char(50) ,
  cust_mid_initial char(1)  ,
  cust_last_name   char(50)  ,
  is_member   boolean
);


CREATE TABLE Menu
(
  food_id  int          NOT NULL ,
  beverage_id   int     NOT NULL ,
  food_name char(50)          NOT NULL ,
  beverage_name   char(50)          NOT NULL
);


CREATE TABLE Food_Order
(
  order_id  int          NOT NULL ,
  order_amount   int     NOT NULL ,
  order_time  int         NOT NULL
);


CREATE TABLE Worker
(
  worker_id    int      NOT NULL ,
  worker_first_name    char(50)      NOT NULL ,
  worker_mid_inital   char(1)      NOT NULL ,
  worker_last_name    char(50)      NOT NULL ,
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
  vehicle_vin  char(50)
);


----------------------
-- Define primary keys
----------------------
ALTER TABLE Customer ADD PRIMARY KEY (cust_id);
ALTER TABLE Food_Order ADD PRIMARY KEY (order_id);
ALTER TABLE Menu ADD PRIMARY KEY (food_id, beverage_id);
ALTER TABLE Worker ADD PRIMARY KEY (worker_id);
ALTER TABLE Stock_Shipment ADD PRIMARY KEY (supplier_id);
ALTER TABLE Delivery_Driver ADD PRIMARY KEY (driver_id);


----------------------
-- Define foreign keys
----------------------
ALTER TABLE Customer ADD CONSTRAINT FK_Customer_Worker FOREIGN KEY (worker_id) REFERENCES Worker (worker_id);