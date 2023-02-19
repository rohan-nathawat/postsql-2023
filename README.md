# Restaurant Database
## Introduction
**This database includes information that may be needed for a restaurant to run; it includes the following six tables. Customer, tracks data about the customer that could be used for memberships and reward programs. Order, tracks what and how much the customers have ordered. Menu, displays what food and beverages are in stock. Stock Shipment, gives information about providers and what items are needed. Worker, information abou the different positions, who is working, and salary.
Delivery Driver, keeps track of who is delivering which customer's order and the drivers VIN number.**

## Requirments
1. PostgreSQL 15
2. PgAdmin 4
3. Windows 11
4. Lucidtables

## Tables
1. customer
2. delivery_driver
3. food_menu
4. food_order
5. stock_shipments
6. worker

### Table Examples

**Customer**

| customer_id | customer_name | customer_member | customer_email |
|-|:-:|-:|-:|
| 01 | Timmy | Yes | timmy.xd@gmail.com |

**Order**

| order_id | order_name | order_amount | order_wait_time |
|-|:-:|-:|-:|
| 01 | Timmy | 3 | 15 |

**Menu**

| food_id | food_name | beverage_id | beverage_name |
|-|:-:|-:|-:|
| 01 | Pork Belly | 01 | Fanta |

**Stock Shipment**

| supplier_id | supplier_name | supplier_food_stock | supplier_beverage_stock |
|-|:-:|-:|-:|
| 01 | Johnny | Yes | No |

**Worker**

| worker_id | worker_name | worker_working | worker_job | worker_salary |
|-|:-:|-:|-:|-:|
| 01 | Ronny | Yes | Manager | 45,000 |

**Delivery Driver**

| driver_id | driver_name | driver_working | driver_vehicle |
|-|:-:|-:|-:|
| 01 | Jimmy | Yes | 2002 Toyota Highlander |


## ERD

![Restaurant ERD](https://user-images.githubusercontent.com/65173830/219963774-0d141d2b-9ea8-4910-8505-02e856870974.png)

![restaurantERDimage2](https://user-images.githubusercontent.com/65173830/216831060-9c2acaae-3be7-482e-a61d-8cad3a59a09e.png)

