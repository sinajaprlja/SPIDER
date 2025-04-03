SELECT count(*) FROM club
SELECT count(*) FROM club
SELECT Name FROM club ORDER BY Name ASC
SELECT Name FROM club ORDER BY Name ASC
SELECT Manager ,  Captain FROM club
SELECT Manager ,  Captain FROM club
"SELECT Name FROM club WHERE Manufacturer != ""Nike"""
"SELECT Name FROM club WHERE Manufacturer != ""Nike"""
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Wins_count ASC
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT Name FROM player ORDER BY Earnings DESC LIMIT 1
SELECT DISTINCT Country FROM player WHERE Earnings  >  1200000
SELECT DISTINCT Country FROM player WHERE Earnings  >  1200000
SELECT Country FROM player WHERE Wins_count  >  2 ORDER BY Earnings DESC LIMIT 1
SELECT Country FROM player WHERE Wins_count  >  2 ORDER BY Earnings DESC LIMIT 1
SELECT T2.Name ,  T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID
SELECT T2.Name ,  T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID WHERE T2.Wins_count  >  2
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID WHERE T2.Wins_count  >  2
"SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID WHERE T1.Manager  =  ""Sam Allardyce"""
"SELECT T2.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID WHERE T1.Manager  =  ""Sam Allardyce"""
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT T1.Name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID GROUP BY T1.Club_ID ORDER BY avg(T2.Earnings) DESC
SELECT Manufacturer ,  COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer ,  COUNT(*) FROM club GROUP BY Manufacturer
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer ORDER BY COUNT(*) DESC LIMIT 1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*)  >  1
SELECT Manufacturer FROM club GROUP BY Manufacturer HAVING COUNT(*)  >  1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*)  >  1
SELECT Country FROM player GROUP BY Country HAVING COUNT(*)  >  1
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Name FROM club WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Country FROM player WHERE Earnings  >  1400000 INTERSECT SELECT Country FROM player WHERE Earnings  <  1100000
SELECT Country FROM player WHERE Earnings  >  1400000 INTERSECT SELECT Country FROM player WHERE Earnings  <  1100000
SELECT COUNT (DISTINCT Country) FROM player
SELECT COUNT (DISTINCT Country) FROM player
"SELECT Earnings FROM player WHERE Country  =  ""Australia"" OR Country  =  ""Zimbabwe"""
"SELECT Earnings FROM player WHERE Country  =  ""Australia"" OR Country  =  ""Zimbabwe"""
SELECT T1.customer_id ,  T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >  2 INTERSECT SELECT T1.customer_id ,  T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN Order_items AS T3 ON T2.order_id  =  T3.order_id GROUP BY T1.customer_id HAVING count(*)  >= 3
SELECT T1.customer_id ,  T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >  2 INTERSECT SELECT T1.customer_id ,  T1.customer_first_name ,  T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN Order_items AS T3 ON T2.order_id  =  T3.order_id GROUP BY T1.customer_id HAVING count(*)  >= 3
SELECT T1.order_id ,  T1.order_status_code ,  count(*) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id GROUP BY T1.order_id
SELECT T1.order_id ,  T1.order_status_code ,  count(*) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id GROUP BY T1.order_id
SELECT min(date_order_placed) FROM Orders UNION SELECT T1.date_order_placed FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id GROUP BY T1.order_id HAVING count(*)  >  1
SELECT min(date_order_placed) FROM Orders UNION SELECT T1.date_order_placed FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id GROUP BY T1.order_id HAVING count(*)  >  1
SELECT customer_first_name ,  customer_middle_initial ,  customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name ,  T1.customer_middle_initial ,  T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id
SELECT customer_first_name ,  customer_middle_initial ,  customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name ,  T1.customer_middle_initial ,  T1.customer_last_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id
SELECT product_id ,  product_name ,  product_price ,  product_color FROM Products EXCEPT SELECT T1.product_id ,  T1.product_name ,  T1.product_price ,  T1.product_color FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id JOIN Orders AS T3 ON T2.order_id  =  T3.order_id GROUP BY T1.product_id HAVING count(*)  >=  2
select t1.product_id ,  t1.product_name ,  t1.product_price ,  t1.product_color from products as t1 join order_items as t2 on t1.product_id  =  t2.product_id join orders as t3 on t2.order_id  =  t3.order_id group by t1.product_id having count(*) < 2
SELECT T1.order_id ,  T1.date_order_placed FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id GROUP BY T1.order_id HAVING count(*)  >=  2
SELECT T1.order_id ,  T1.date_order_placed FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id GROUP BY T1.order_id HAVING count(*)  >=  2
SELECT T1.product_id ,  T1.product_name ,  T1.product_price FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.product_id ,  T1.product_name ,  T1.product_price FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id GROUP BY T1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.order_id ,  sum(T2.product_price) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id GROUP BY T1.order_id ORDER BY sum(T2.product_price) ASC LIMIT 1
select t1.order_id ,  sum(t2.product_price) from order_items as t1 join products as t2 on t1.product_id  =  t2.product_id group by t1.order_id order by sum(t2.product_price) asc limit 1
SELECT Payment_method_code FROM Customer_Payment_Methods GROUP BY Payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT Payment_method_code FROM Customer_Payment_Methods GROUP BY Payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.gender_code ,  count(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN Order_items AS T3 ON T2.order_id  =  T3.order_id GROUP BY T1.gender_code
SELECT T1.gender_code ,  count(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN Order_items AS T3 ON T2.order_id  =  T3.order_id GROUP BY T1.gender_code
SELECT T1.gender_code ,  count(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.gender_code
SELECT T1.gender_code ,  count(*) FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.gender_code
SELECT T1.customer_first_name ,  T1.customer_middle_initial ,  T1.customer_last_name ,  T2.Payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id  =  T2.customer_id
SELECT T1.customer_first_name ,  T1.customer_middle_initial ,  T1.customer_last_name ,  T2.Payment_method_code FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id  =  T2.customer_id
SELECT T1.invoice_status_code ,  T1.invoice_date ,  T2.shipment_date FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number  =  T2.invoice_number
SELECT T1.invoice_status_code ,  T1.invoice_date ,  T2.shipment_date FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number  =  T2.invoice_number
SELECT T1.product_name ,  T4.shipment_date FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id JOIN Shipment_Items AS T3 ON T2.order_item_id  =  T3.order_item_id JOIN Shipments AS T4 ON T3.shipment_id  =  T4.shipment_id
SELECT T1.product_name ,  T4.shipment_date FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id JOIN Shipment_Items AS T3 ON T2.order_item_id  =  T3.order_item_id JOIN Shipments AS T4 ON T3.shipment_id  =  T4.shipment_id
SELECT T1.order_item_status_code ,  T3.shipment_tracking_number FROM Order_items AS T1 JOIN Shipment_Items AS T2 ON T1.order_item_id  =  T2.order_item_id JOIN Shipments AS T3 ON T2.shipment_id  =  T3.shipment_id
SELECT T1.order_item_status_code ,  T3.shipment_tracking_number FROM Order_items AS T1 JOIN Shipment_Items AS T2 ON T1.order_item_id  =  T2.order_item_id JOIN Shipments AS T3 ON T2.shipment_id  =  T3.shipment_id
SELECT T1.product_name ,  T1.product_color FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id JOIN Shipment_Items AS T3 ON T2.order_item_id  =  T3.order_item_id JOIN Shipments AS T4 ON T3.shipment_id  =  T4.shipment_id
SELECT T1.product_name ,  T1.product_color FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id JOIN Shipment_Items AS T3 ON T2.order_item_id  =  T3.order_item_id JOIN Shipments AS T4 ON T3.shipment_id  =  T4.shipment_id
SELECT DISTINCT T1.product_name ,  T1.product_price ,  T1.product_description FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id JOIN Orders AS T3 ON T2.order_id  =  T3.order_id JOIN Customers AS T4 ON T3.customer_id  =  T4.customer_id WHERE T4.gender_code  =  'Female'
SELECT DISTINCT T1.product_name ,  T1.product_price ,  T1.product_description FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id JOIN Orders AS T3 ON T2.order_id  =  T3.order_id JOIN Customers AS T4 ON T3.customer_id  =  T4.customer_id WHERE T4.gender_code  =  'Female'
SELECT invoice_status_code FROM Invoices WHERE invoice_number NOT IN ( SELECT invoice_number FROM Shipments )
SELECT invoice_status_code FROM Invoices WHERE invoice_number NOT IN ( SELECT invoice_number FROM Shipments )
select t1.order_id ,  t1.date_order_placed ,  sum(t3.product_price) from orders as t1 join order_items as t2 on t1.order_id  =  t2.order_id join products as t3 on t2.product_id  =  t3.product_id group by t1.order_id
SELECT T1.order_id ,  T1.date_order_placed ,  sum(T3.product_price) FROM Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id JOIN Products AS T3 ON T2.product_id  =  T3.product_id GROUP BY T1.order_id
SELECT count(DISTINCT customer_id) FROM Orders
SELECT count(DISTINCT customer_id) FROM Orders
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT order_item_status_code) FROM Order_items
SELECT count(DISTINCT Payment_method_code) FROM Customer_Payment_Methods
SELECT count(DISTINCT Payment_method_code) FROM Customer_Payment_Methods
SELECT login_name ,  login_password FROM Customers WHERE phone_number LIKE '+12%'
SELECT login_name ,  login_password FROM Customers WHERE phone_number LIKE '+12%'
SELECT product_size FROM Products WHERE product_name LIKE '%Dell%'
SELECT product_size FROM Products WHERE product_name LIKE '%Dell%'
SELECT product_price ,  product_size FROM Products WHERE product_price  >  ( SELECT avg(product_price) FROM Products )
SELECT product_price ,  product_size FROM Products WHERE product_price  >  ( SELECT avg(product_price) FROM Products )
SELECT count(*) FROM Products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT count(*) FROM Products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payment_Methods )
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payment_Methods )
SELECT order_status_code ,  date_order_placed FROM Orders
SELECT order_status_code ,  date_order_placed FROM Orders
SELECT address_line_1 ,  town_city ,  county FROM Customers WHERE Country  =  'USA'
SELECT address_line_1 ,  town_city ,  county FROM Customers WHERE Country  =  'USA'
SELECT T1.customer_first_name ,  T4.product_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN Order_items AS T3 ON T2.order_id  =  T3.order_id JOIN Products AS T4 ON T3.product_id  =  T4.product_id
SELECT T1.customer_first_name ,  T4.product_name FROM Customers AS T1 JOIN Orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN Order_items AS T3 ON T2.order_id  =  T3.order_id JOIN Products AS T4 ON T3.product_id  =  T4.product_id
SELECT count(*) FROM Shipment_Items
SELECT count(*) FROM Shipment_Items
SELECT avg(product_price) FROM Products
SELECT avg(product_price) FROM Products
SELECT avg(T1.product_price) FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id
SELECT avg(T1.product_price) FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id
SELECT email_address ,  town_city ,  county FROM Customers WHERE gender_code  =  ( SELECT gender_code FROM Customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1 )
SELECT email_address ,  town_city ,  county FROM Customers WHERE gender_code  =  ( SELECT gender_code FROM Customers GROUP BY gender_code ORDER BY count(*) ASC LIMIT 1 )
SELECT date_order_placed FROM Orders WHERE customer_id IN ( SELECT T1.customer_id FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2 )
SELECT date_order_placed FROM Orders WHERE customer_id IN ( SELECT T1.customer_id FROM Customers AS T1 JOIN Customer_Payment_Methods AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2 )
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY count(*) LIMIT 1
SELECT order_status_code FROM Orders GROUP BY order_status_code ORDER BY count(*) LIMIT 1
SELECT T1.product_id ,  T1.product_description FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id GROUP BY T1.product_id HAVING count(*)  >  3
SELECT T1.product_id ,  T1.product_description FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id GROUP BY T1.product_id HAVING count(*)  >  3
SELECT T1.invoice_date ,  T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number  =  T2.invoice_number GROUP BY T1.invoice_number HAVING count(*)  >=  2
SELECT T1.invoice_date ,  T1.invoice_number FROM Invoices AS T1 JOIN Shipments AS T2 ON T1.invoice_number  =  T2.invoice_number GROUP BY T1.invoice_number HAVING count(*)  >=  2
SELECT shipment_tracking_number ,  shipment_date FROM Shipments
SELECT shipment_tracking_number ,  shipment_date FROM Shipments
SELECT product_color ,  product_description ,  product_size FROM Products WHERE product_price  <  ( SELECT max(product_price) FROM products )
select product_color ,  product_description ,  product_size from products where product_price  !=  ( select max(product_price) from products )
SELECT name FROM director WHERE age  >  (SELECT avg(age) FROM director)
SELECT name FROM director ORDER BY age DESC LIMIT 1
"SELECT count(*) FROM channel WHERE internet LIKE ""%bbc%"""
SELECT count(DISTINCT Digital_terrestrial_channel) FROM channel
SELECT title FROM program ORDER BY start_year DESC
SELECT t2.name FROM program AS t1 JOIN director AS t2 ON t1.director_id  =  t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT t2.name ,  t2.age FROM program AS t1 JOIN director AS t2 ON t1.director_id  =  t2.director_id GROUP BY t1.director_id ORDER BY count(*) DESC LIMIT 1
SELECT title FROM program ORDER BY start_year DESC LIMIT 1
SELECT t1.name ,  t1.internet FROM channel AS t1 JOIN program AS t2 ON t1.channel_id  =  t2.channel_id GROUP BY t1.channel_id HAVING count(*)  >  1
SELECT t1.name ,  count(*) FROM channel AS t1 JOIN program AS t2 ON t1.channel_id  =  t2.channel_id GROUP BY t1.channel_id
SELECT count(*) FROM channel WHERE channel_id NOT IN (SELECT channel_id FROM program)
SELECT t2.name FROM program AS t1 JOIN director AS t2 ON t1.director_id  =  t2.director_id WHERE t1.title  =  'Dracula'
SELECT t1.name ,  t1.internet FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id  =  t2.channel_id GROUP BY t1.channel_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM director WHERE age BETWEEN 30 AND 60
SELECT t1.name FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id  =  t2.channel_id JOIN director AS t3 ON t2.director_id  =  t3.director_id WHERE t3.age  <  40 INTERSECT SELECT t1.name FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id  =  t2.channel_id JOIN director AS t3 ON t2.director_id  =  t3.director_id WHERE t3.age  >  60
"SELECT t1.name ,  t1.channel_id FROM channel AS t1 JOIN director_admin AS t2 ON t1.channel_id  =  t2.channel_id JOIN director AS t3 ON t2.director_id  =  t3.director_id WHERE t3.name != ""Hank Baskett"""
SELECT count(*) FROM radio
select transmitter from radio order by erp_kw asc
SELECT tv_show_name ,  Original_Airdate FROM tv_show
"SELECT Station_name FROM city_channel WHERE Affiliation != ""ABC"""
SELECT Transmitter FROM radio WHERE ERP_kW  >  150 OR ERP_kW  <  30
SELECT Transmitter FROM radio ORDER BY ERP_kW DESC LIMIT 1
SELECT avg(ERP_kW) FROM radio
SELECT Affiliation ,  COUNT(*) FROM city_channel GROUP BY Affiliation
SELECT Affiliation FROM city_channel GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM city_channel GROUP BY Affiliation HAVING COUNT(*)  >  3
SELECT City ,  Station_name FROM city_channel ORDER BY Station_name ASC
SELECT T3.Transmitter ,  T2.City FROM city_channel_radio AS T1 JOIN city_channel AS T2 ON T1.City_channel_ID  =  T2.ID JOIN radio AS T3 ON T1.Radio_ID  =  T3.Radio_ID
SELECT T3.Transmitter ,  T2.Station_name FROM city_channel_radio AS T1 JOIN city_channel AS T2 ON T1.City_channel_ID  =  T2.ID JOIN radio AS T3 ON T1.Radio_ID  =  T3.Radio_ID ORDER BY T3.ERP_kW DESC
SELECT T2.Transmitter ,  COUNT(*) FROM city_channel_radio AS T1 JOIN radio AS T2 ON T1.Radio_ID  =  T2.Radio_ID GROUP BY T2.Transmitter
SELECT Transmitter FROM radio WHERE Radio_ID NOT IN (SELECT Radio_ID FROM city_channel_radio)
SELECT model FROM vehicle WHERE power  >  6000 ORDER BY top_speed DESC LIMIT 1
SELECT model FROM vehicle WHERE power  >  6000 ORDER BY top_speed DESC LIMIT 1
SELECT name FROM driver WHERE citizenship  =  'United States'
SELECT name FROM driver WHERE citizenship  =  'United States'
SELECT count(*) ,  driver_id FROM vehicle_driver GROUP BY driver_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  driver_id FROM vehicle_driver GROUP BY driver_id ORDER BY count(*) DESC LIMIT 1
SELECT max(power) ,  avg(power) FROM vehicle WHERE builder  =  'Zhuzhou'
SELECT max(power) ,  avg(power) FROM vehicle WHERE builder  =  'Zhuzhou'
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) ASC LIMIT 1
SELECT vehicle_id FROM vehicle_driver GROUP BY vehicle_id ORDER BY count(*) ASC LIMIT 1
SELECT top_speed ,  power FROM vehicle WHERE build_year  =  1996
SELECT top_speed ,  power FROM vehicle WHERE build_year  =  1996
SELECT build_year ,  model ,  builder FROM vehicle
SELECT build_year ,  model ,  builder FROM vehicle
SELECT count(DISTINCT T1.driver_id) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id  =  T2.vehicle_id WHERE T2.build_year  =  2012
SELECT count(DISTINCT T1.driver_id) FROM vehicle_driver AS T1 JOIN vehicle AS T2 ON T1.vehicle_id  =  T2.vehicle_id WHERE T2.build_year  =  2012
SELECT count(*) FROM driver WHERE Racing_Series  =  'NASCAR'
SELECT count(*) FROM driver WHERE Racing_Series  =  'NASCAR'
SELECT avg(top_speed) FROM vehicle
SELECT avg(top_speed) FROM vehicle
select distinct t1.name from driver as t1 join vehicle_driver as t2 on t1.driver_id  =  t2.driver_id join vehicle as t3 on t2.vehicle_id  =  t3.vehicle_id where t3.power  >  5000
SELECT DISTINCT T1.Name FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id  =  T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id  =  T3.vehicle_id WHERE T3.power  >  5000
SELECT model FROM vehicle WHERE total_production  >  100 OR top_speed  >  150
SELECT model FROM vehicle WHERE total_production  >  100 OR top_speed  >  150
SELECT model ,  build_year FROM vehicle WHERE model LIKE '%DJ%'
SELECT model ,  build_year FROM vehicle WHERE model LIKE '%DJ%'
SELECT model FROM vehicle EXCEPT SELECT T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id  =  T2.vehicle_id
SELECT model FROM vehicle EXCEPT SELECT T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id  =  T2.vehicle_id
SELECT T1.vehicle_id ,  T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id  =  T2.vehicle_id GROUP BY T2.vehicle_id HAVING count(*)  =  2 OR T1.builder  =  'Ziyang'
SELECT T1.vehicle_id ,  T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id  =  T2.vehicle_id GROUP BY T2.vehicle_id HAVING count(*)  =  2 OR T1.builder  =  'Ziyang'
SELECT T1.vehicle_id ,  T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id  =  T2.vehicle_id JOIN driver AS T3 ON T2.driver_id  =  T3.driver_id WHERE T3.name  =  'Jeff Gordon' UNION SELECT T1.vehicle_id ,  T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id  =  T2.vehicle_id GROUP BY T2.vehicle_id HAVING count(*)  >  2
SELECT T1.vehicle_id ,  T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id  =  T2.vehicle_id JOIN driver AS T3 ON T2.driver_id  =  T3.driver_id WHERE T3.name  =  'Jeff Gordon' UNION SELECT T1.vehicle_id ,  T1.model FROM vehicle AS T1 JOIN vehicle_driver AS T2 ON T1.vehicle_id  =  T2.vehicle_id GROUP BY T2.vehicle_id HAVING count(*)  >  2
SELECT count(*) FROM vehicle WHERE top_speed  =  (SELECT max(top_speed) FROM vehicle)
SELECT count(*) FROM vehicle WHERE top_speed  =  (SELECT max(top_speed) FROM vehicle)
SELECT name FROM driver ORDER BY name
SELECT name FROM driver ORDER BY name
SELECT count(*) ,  racing_series FROM driver GROUP BY racing_series
SELECT count(*) ,  racing_series FROM driver GROUP BY racing_series
SELECT T1.name ,  T1.citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id  =  T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id  =  T3.vehicle_id WHERE T3.model  =  'DJ1'
SELECT T1.name ,  T1.citizenship FROM driver AS T1 JOIN vehicle_driver AS T2 ON T1.driver_id  =  T2.driver_id JOIN vehicle AS T3 ON T2.vehicle_id  =  T3.vehicle_id WHERE T3.model  =  'DJ1'
SELECT count(*) FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM vehicle_driver )
SELECT count(*) FROM driver WHERE driver_id NOT IN ( SELECT driver_id FROM vehicle_driver )
SELECT count(*) FROM Exams
SELECT count(*) FROM Exams
select distinct subject_code from exams order by subject_code asc
SELECT DISTINCT Subject_Code FROM Exams ORDER BY Subject_Code
SELECT Exam_Date ,  Exam_Name FROM Exams WHERE Subject_Code != 'Database'
SELECT Exam_Date ,  Exam_Name FROM Exams WHERE Subject_Code != 'Database'
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT Exam_Date FROM Exams WHERE Subject_Code LIKE '%data%' ORDER BY Exam_Date DESC
SELECT Type_of_Question_Code ,  COUNT(*) FROM Questions GROUP BY Type_of_Question_Code
SELECT Type_of_Question_Code ,  COUNT(*) FROM Questions GROUP BY Type_of_Question_Code
"SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments  =  ""Normal"""
"SELECT DISTINCT Student_Answer_Text FROM Student_Answers WHERE Comments  =  ""Normal"""
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT count(DISTINCT Comments) FROM Student_Answers
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT Student_Answer_Text FROM Student_Answers GROUP BY Student_Answer_Text ORDER BY COUNT(*) DESC
SELECT T2.First_Name ,  T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID  =  T2.Student_ID
SELECT T2.First_Name ,  T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID  =  T2.Student_ID
SELECT T2.Email_Adress ,  T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID  =  T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT T2.Email_Adress ,  T1.Date_of_Answer FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID  =  T2.Student_ID ORDER BY T1.Date_of_Answer DESC
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT Assessment FROM Student_Assessments GROUP BY Assessment ORDER BY COUNT(*) ASC LIMIT 1
SELECT T2.First_Name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID  =  T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*)  >=  2
SELECT T2.First_Name FROM Student_Answers AS T1 JOIN Students AS T2 ON T1.Student_ID  =  T2.Student_ID GROUP BY T1.Student_ID HAVING COUNT(*)  >=  2
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
SELECT Valid_Answer_Text FROM Valid_Answers GROUP BY Valid_Answer_Text ORDER BY COUNT(*) DESC LIMIT 1
"SELECT Last_Name FROM Students WHERE Gender_MFU != ""M"""
"SELECT Last_Name FROM Students WHERE Gender_MFU != ""M"""
SELECT Gender_MFU ,  COUNT(*) FROM Students GROUP BY Gender_MFU
SELECT Gender_MFU ,  COUNT(*) FROM Students GROUP BY Gender_MFU
"SELECT Last_Name FROM Students WHERE Gender_MFU  =  ""F"" OR Gender_MFU  =  ""M"""
"SELECT Last_Name FROM Students WHERE Gender_MFU  =  ""F"" OR Gender_MFU  =  ""M"""
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
SELECT First_Name FROM Students WHERE Student_ID NOT IN (SELECT Student_ID FROM Student_Answers)
"SELECT Student_Answer_Text FROM Student_Answers WHERE Comments  =  ""Normal"" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments  =  ""Absent"""
"SELECT Student_Answer_Text FROM Student_Answers WHERE Comments  =  ""Normal"" INTERSECT SELECT Student_Answer_Text FROM Student_Answers WHERE Comments  =  ""Absent"""
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING count(*)  >=  3
SELECT Type_of_Question_Code FROM Questions GROUP BY Type_of_Question_Code HAVING count(*)  >=  3
SELECT * FROM Students
SELECT * FROM Students
SELECT count(*) FROM Addresses
SELECT count(*) FROM Addresses
SELECT address_id ,  address_details FROM Addresses
SELECT address_id ,  address_details FROM Addresses
SELECT count(*) FROM Products
SELECT count(*) FROM Products
SELECT product_id ,  product_type_code ,  product_name FROM Products
SELECT product_id ,  product_type_code ,  product_name FROM Products
"SELECT product_price FROM Products WHERE product_name  =  ""Monitor"""
"SELECT product_price FROM Products WHERE product_name  =  ""Monitor"""
SELECT min(product_price) ,  avg(product_price) ,  max(product_price) FROM Products
SELECT min(product_price) ,  avg(product_price) ,  max(product_price) FROM Products
"SELECT avg(product_price) FROM Products WHERE product_type_code  =  ""Clothes"""
"SELECT avg(product_price) FROM Products WHERE product_type_code  =  ""Clothes"""
"SELECT count(*) FROM Products WHERE product_type_code  =  ""Hardware"""
"SELECT count(*) FROM Products WHERE product_type_code  =  ""Hardware"""
SELECT product_name FROM Products WHERE product_price  >  (SELECT avg(product_price) FROM Products)
SELECT product_name FROM Products WHERE product_price  >  (SELECT avg(product_price) FROM Products)
"SELECT product_name FROM Products WHERE product_type_code  =  ""Hardware"" AND product_price  >  (SELECT avg(product_price) FROM Products WHERE product_type_code  =  ""Hardware"")"
"SELECT product_name FROM Products WHERE product_type_code  =  ""Hardware"" AND product_price  >  (SELECT avg(product_price) FROM Products WHERE product_type_code  =  ""Hardware"")"
"SELECT product_name FROM Products WHERE product_type_code  =  ""Clothes"" ORDER BY product_price DESC LIMIT 1"
"SELECT product_name FROM Products WHERE product_type_code  =  ""Clothes"" ORDER BY product_price DESC LIMIT 1"
"SELECT product_id ,  product_name FROM Products WHERE product_type_code  =  ""Hardware"" ORDER BY product_price ASC LIMIT 1"
"SELECT product_id ,  product_name FROM Products WHERE product_type_code  =  ""Hardware"" ORDER BY product_price ASC LIMIT 1"
SELECT product_name FROM Products ORDER BY product_price DESC
SELECT product_name FROM Products ORDER BY product_price DESC
"SELECT product_name FROM Products WHERE product_type_code  =  ""Hardware"" ORDER BY product_price ASC"
"SELECT product_name FROM Products WHERE product_type_code  =  ""Hardware"" ORDER BY product_price ASC"
SELECT product_type_code ,  count(*) FROM Products GROUP BY product_type_code
SELECT product_type_code ,  count(*) FROM Products GROUP BY product_type_code
SELECT product_type_code ,  avg(product_price) FROM Products GROUP BY product_type_code
SELECT product_type_code ,  avg(product_price) FROM Products GROUP BY product_type_code
SELECT product_type_code FROM Products GROUP BY product_type_code HAVING count(*)  >=  2
SELECT product_type_code FROM Products GROUP BY product_type_code HAVING count(*)  >=  2
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Customers
SELECT count(*) FROM Customers
SELECT customer_id ,  customer_name FROM Customers
SELECT customer_id ,  customer_name FROM Customers
"SELECT customer_address ,  customer_phone ,  customer_email FROM Customers WHERE customer_name  =  ""Jeromy"""
"SELECT customer_address ,  customer_phone ,  customer_email FROM Customers WHERE customer_name  =  ""Jeromy"""
SELECT payment_method_code ,  count(*) FROM Customers GROUP BY payment_method_code
SELECT payment_method_code ,  count(*) FROM Customers GROUP BY payment_method_code
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM Customers WHERE payment_method_code  =  ( SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
SELECT customer_name FROM Customers WHERE payment_method_code  =  ( SELECT payment_method_code FROM Customers GROUP BY payment_method_code ORDER BY count(*) ASC LIMIT 1)
"SELECT payment_method_code ,  customer_number FROM Customers WHERE customer_name  =  ""Jeromy"""
"SELECT payment_method_code ,  customer_number FROM Customers WHERE customer_name  =  ""Jeromy"""
SELECT DISTINCT payment_method_code FROM Customers
SELECT DISTINCT payment_method_code FROM Customers
SELECT product_id ,  product_type_code FROM Products ORDER BY product_name
SELECT product_id ,  product_type_code FROM Products ORDER BY product_name
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT product_type_code FROM Products GROUP BY product_type_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Customer_orders
SELECT count(*) FROM Customer_orders
"SELECT order_id ,  order_date ,  order_status_code FROM Customer_orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_name  =  ""Jeromy"""
"SELECT order_id ,  order_date ,  order_status_code FROM Customer_orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_name  =  ""Jeromy"""
SELECT T2.customer_name ,  T1.customer_id ,  count(*) FROM Customer_orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id
SELECT T2.customer_name ,  T1.customer_id ,  count(*) FROM Customer_orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id
SELECT T1.customer_id ,  T2.customer_name ,  T2.customer_phone ,  T2.customer_email FROM Customer_orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_id ,  T2.customer_name ,  T2.customer_phone ,  T2.customer_email FROM Customer_orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code ,  count(*) FROM Customer_orders GROUP BY order_status_code
SELECT order_status_code ,  count(*) FROM Customer_orders GROUP BY order_status_code
SELECT order_status_code FROM Customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT order_status_code FROM Customer_orders GROUP BY order_status_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Customers WHERE customer_id NOT IN  ( SELECT customer_id FROM Customer_orders)
SELECT count(*) FROM Customers WHERE customer_id NOT IN  ( SELECT customer_id FROM Customer_orders)
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS t1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS t1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id
"SELECT sum(order_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id WHERE T2.product_name  =  ""Monitor"""
"SELECT sum(order_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id WHERE T2.product_name  =  ""Monitor"""
"SELECT count(DISTINCT T3.customer_id) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id JOIN Customer_orders AS T3 ON T3.order_id  =  T1.order_id WHERE T2.product_name  =  ""Monitor"""
"SELECT count(DISTINCT T3.customer_id) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id JOIN Customer_orders AS T3 ON T3.order_id  =  T1.order_id WHERE T2.product_name  =  ""Monitor"""
SELECT count(DISTINCT customer_id) FROM Customer_orders
SELECT count(DISTINCT customer_id) FROM Customer_orders
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Customer_orders
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Customer_orders
SELECT T1.order_date ,  T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id WHERE T2.order_quantity  >  6 UNION SELECT T1.order_date ,  T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id GROUP BY T1.order_id HAVING count(*)  >  3;
SELECT T1.order_date ,  T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id WHERE T2.order_quantity  >  6 UNION SELECT T1.order_date ,  T1.order_id FROM Customer_Orders AS T1 JOIN Order_items AS T2 ON T1.order_id  =  T2.order_id GROUP BY T1.order_id HAVING count(*)  >  3;
SELECT count(*) FROM building
SELECT count(*) FROM building
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Name FROM building ORDER BY Number_of_Stories ASC
SELECT Address FROM building ORDER BY Completed_Year DESC
SELECT Address FROM building ORDER BY Completed_Year DESC
"SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != ""1980"""
"SELECT max(Number_of_Stories) FROM building WHERE Completed_Year != ""1980"""
SELECT avg(Population) FROM region
SELECT avg(Population) FROM region
SELECT Name FROM region ORDER BY Name ASC
SELECT Name FROM region ORDER BY Name ASC
SELECT Capital FROM region WHERE Area  >  10000
SELECT Capital FROM region WHERE Area  >  10000
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Capital FROM region ORDER BY Population DESC LIMIT 1
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT Name FROM region ORDER BY Area DESC LIMIT 5
SELECT T1.Name ,  T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID
SELECT T1.Name ,  T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID GROUP BY T1.Region_ID HAVING COUNT(*)  >  1
SELECT T2.capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID GROUP BY T1.Region_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID GROUP BY T1.Region_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Address ,  T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID
SELECT T1.Address ,  T2.Capital FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID
"SELECT T1.Number_of_Stories FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID WHERE T2.Name  =  ""Abruzzo"""
"SELECT T1.Number_of_Stories FROM building AS T1 JOIN region AS T2 ON T1.Region_ID  =  T2.Region_ID WHERE T2.Name  =  ""Abruzzo"""
SELECT Completed_Year ,  COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year ,  COUNT(*) FROM building GROUP BY Completed_Year
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Completed_Year FROM building GROUP BY Completed_Year ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Name FROM region WHERE Region_ID NOT IN (SELECT Region_ID FROM building)
SELECT Completed_Year FROM building WHERE Number_of_Stories  >  20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories  <  15
SELECT Completed_Year FROM building WHERE Number_of_Stories  >  20 INTERSECT SELECT Completed_Year FROM building WHERE Number_of_Stories  <  15
SELECT DISTINCT Address FROM building
SELECT DISTINCT Address FROM building
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
SELECT Completed_Year FROM building ORDER BY Number_of_Stories DESC
select channel_details from channels order by channel_details
select channel_details from channels order by channel_details
SELECT count(*) FROM services
SELECT count(*) FROM services
SELECT analytical_layer_type_code FROM analytical_layer GROUP BY analytical_layer_type_code ORDER BY count(*) DESC LIMIT 1
SELECT analytical_layer_type_code FROM analytical_layer GROUP BY analytical_layer_type_code ORDER BY count(*) DESC LIMIT 1
"SELECT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t1.customer_details  =  ""Hardy Kutch"""
"SELECT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t1.customer_details  =  ""Hardy Kutch"""
select t1.service_details from services as t1 join customers_and_services as t2 on t1.service_id  =  t2.service_id group by t1.service_details having count(*)  >  3
SELECT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id  =  t2.service_id GROUP BY t1.service_details HAVING count(*)  >  3
SELECT t1.customer_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_details ORDER BY count(*) DESC LIMIT 1
select t1.customer_details from customers as t1 join customers_and_services as t2 on t1.customer_id  =  t2.customer_id group by t1.customer_details order by count(*) desc limit 1
select t1.customer_details from customers as t1 join customers_and_services as t2 on t1.customer_id  =  t2.customer_id group by t1.customer_details order by count(*) desc limit 1
select t1.customer_details from customers as t1 join customers_and_services as t2 on t1.customer_id  =  t2.customer_id group by t1.customer_details order by count(*) desc limit 1
select customer_details from customers where customer_id not in (select customer_id from customers_and_services)
select customer_details from customers where customer_id not in (select customer_id from customers_and_services)
select distinct t1.customer_details from customers as t1 join customers_and_services as t2 on t1.customer_id  =  t2.customer_id where t2.service_id  =  (select service_id from services group by service_id order by count(*) asc limit 1)
select distinct t1.customer_details from customers as t1 join customers_and_services as t2 on t1.customer_id  =  t2.customer_id where t2.service_id  =  (select service_id from services group by service_id order by count(*) asc limit 1)
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
SELECT count(DISTINCT customers_and_services_details) FROM customers_and_services
"SELECT customer_details FROM customers WHERE customer_details LIKE ""%Kutch%"""
"SELECT customer_details FROM customers WHERE customer_details LIKE ""%Kutch%"""
"SELECT DISTINCT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id JOIN customer_interactions AS t4 ON t3.service_id  =  t4.service_id WHERE t1.customer_details  =  ""Hardy Kutch"" OR t4.services_and_channels_details  =  ""good"""
"SELECT DISTINCT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id JOIN customer_interactions AS t4 ON t3.service_id  =  t4.service_id WHERE t1.customer_details  =  ""Hardy Kutch"" OR t4.services_and_channels_details  =  ""good"""
"SELECT DISTINCT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id JOIN customer_interactions AS t4 ON t3.service_id  =  t4.service_id WHERE t1.customer_details  =  ""Hardy Kutch"" AND t4.services_and_channels_details  =  ""bad"""
"SELECT DISTINCT t3.service_details FROM customers AS t1 JOIN customers_and_services AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id JOIN customer_interactions AS t4 ON t3.service_id  =  t4.service_id WHERE t1.customer_details  =  ""Hardy Kutch"" AND t4.services_and_channels_details  =  ""bad"""
"select distinct t1.service_details from services as t1 join customer_interactions as t2 on t1.service_id  =  t2.service_id join channels as t3 on t2.channel_id  =  t3.channel_id where t3.channel_details  =  ""15 ij"""
"SELECT DISTINCT t1.service_details FROM services AS t1 JOIN customer_interactions AS t2 ON t1.service_id  =  t2.service_id JOIN channels AS t3 ON t2.channel_id  =  t3.channel_id WHERE t3.channel_details  =  ""15 ij"""
"select t1.customer_details from customers as t1 join customer_interactions as t2 on t1.customer_id  =  t2.customer_id where t2.status_code  =  ""stuck"" and services_and_channels_details  =  ""bad"""
"SELECT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id  =  t2.customer_id WHERE t2.status_code  =  ""Stuck"" AND services_and_channels_details  =  ""bad"""
"SELECT count(*) FROM integration_platform WHERE integration_platform_details  =  ""Success"""
"SELECT count(*) FROM integration_platform WHERE integration_platform_details  =  ""Success"""
"select distinct t1.customer_details from customers as t1 join customer_interactions as t2 on t1.customer_id  =  t2.customer_id join integration_platform as t3 where t3.integration_platform_details  =  ""fail"""
"SELECT DISTINCT t1.customer_details FROM customers AS t1 JOIN customer_interactions AS t2 ON t1.customer_id  =  t2.customer_id JOIN integration_platform AS t3 WHERE t3.integration_platform_details  =  ""Fail"""
select service_details from services except select t2.service_details from customers_and_services as t1 join services as t2 on t1.service_id  =  t2.service_id
select service_details from services except select t2.service_details from customers_and_services as t1 join services as t2 on t1.service_id  =  t2.service_id
SELECT analytical_layer_type_code ,  count(*) FROM analytical_layer GROUP BY analytical_layer_type_code
SELECT analytical_layer_type_code ,  count(*) FROM analytical_layer GROUP BY analytical_layer_type_code
"select distinct t1.service_details from services as t1 join customers_and_services as t2 on t1.service_id  =  t2.service_id where t2.customers_and_services_details  =  ""unsatisfied"""
"SELECT DISTINCT t1.service_details FROM services AS t1 JOIN customers_and_services AS t2 ON t1.service_id  =  t2.service_id WHERE t2.customers_and_services_details  =  ""Unsatisfied"""
SELECT count(*) FROM vehicles
SELECT count(*) FROM vehicles
SELECT name FROM vehicles ORDER BY model_year DESC
SELECT name FROM vehicles ORDER BY model_year DESC
SELECT DISTINCT type_of_powertrain FROM vehicles
SELECT DISTINCT type_of_powertrain FROM vehicles
SELECT name ,  type_of_powertrain ,  annual_fuel_cost FROM vehicles WHERE model_year  =  2013 OR model_year  =  2014
SELECT name ,  type_of_powertrain ,  annual_fuel_cost FROM vehicles WHERE model_year  =  2013 OR model_year  =  2014
SELECT type_of_powertrain FROM vehicles WHERE model_year  =  2014 INTERSECT SELECT type_of_powertrain FROM vehicles WHERE model_year  =  2013
SELECT type_of_powertrain FROM vehicles WHERE model_year  =  2014 INTERSECT SELECT type_of_powertrain FROM vehicles WHERE model_year  =  2013
SELECT type_of_powertrain ,  count(*) FROM vehicles GROUP BY type_of_powertrain
SELECT type_of_powertrain ,  count(*) FROM vehicles GROUP BY type_of_powertrain
SELECT type_of_powertrain FROM vehicles GROUP BY type_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT type_of_powertrain FROM vehicles GROUP BY type_of_powertrain ORDER BY count(*) DESC LIMIT 1
SELECT min(annual_fuel_cost) ,  max(annual_fuel_cost) ,  avg(annual_fuel_cost) FROM vehicles
SELECT min(annual_fuel_cost) ,  max(annual_fuel_cost) ,  avg(annual_fuel_cost) FROM vehicles
SELECT name ,  model_year FROM vehicles WHERE city_fuel_economy_rate  <=  highway_fuel_economy_rate
SELECT name ,  model_year FROM vehicles WHERE city_fuel_economy_rate  <=  highway_fuel_economy_rate
SELECT type_of_powertrain ,  avg(annual_fuel_cost) FROM vehicles GROUP BY type_of_powertrain HAVING count(*)  >=  2
SELECT type_of_powertrain ,  avg(annual_fuel_cost) FROM vehicles GROUP BY type_of_powertrain HAVING count(*)  >=  2
SELECT name ,  age ,  membership_credit FROM customers
SELECT name ,  age ,  membership_credit FROM customers
SELECT name ,  age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT name ,  age FROM customers ORDER BY membership_credit DESC LIMIT 1
SELECT avg(age) FROM customers WHERE membership_credit  >  (SELECT avg(membership_credit) FROM customers)
SELECT avg(age) FROM customers WHERE membership_credit  >  (SELECT avg(membership_credit) FROM customers)
SELECT * FROM discount
SELECT * FROM discount
SELECT T2.name ,  sum(T1.total_hours) FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id  =  T2.id GROUP BY T2.id
SELECT T2.name ,  sum(T1.total_hours) FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id  =  T2.id GROUP BY T2.id
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT name FROM vehicles WHERE id NOT IN (SELECT vehicles_id FROM renting_history)
SELECT T2.name FROM renting_history AS T1 JOIN customers AS T2 ON T1.customer_id  =  T2.id GROUP BY T2.id HAVING count(*)  >=  2
SELECT T2.name FROM renting_history AS T1 JOIN customers AS T2 ON T1.customer_id  =  T2.id GROUP BY T2.id HAVING count(*)  >=  2
SELECT T2.name ,  T2.model_year FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id  =  T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name ,  T2.model_year FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id  =  T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id  =  T2.id GROUP BY T2.id ORDER BY sum(T1.total_hours) DESC
SELECT T2.name FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id  =  T2.id GROUP BY T2.id ORDER BY sum(T1.total_hours) DESC
SELECT T2.name FROM renting_history AS T1 JOIN discount AS T2 ON T1.discount_id  =  T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM renting_history AS T1 JOIN discount AS T2 ON T1.discount_id  =  T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name ,  T2.Type_of_powertrain FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id  =  T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours)  >  30
SELECT T2.name ,  T2.Type_of_powertrain FROM renting_history AS T1 JOIN vehicles AS T2 ON T1.vehicles_id  =  T2.id GROUP BY T1.vehicles_id HAVING sum(T1.total_hours)  >  30
SELECT avg(City_fuel_economy_rate) ,  avg(Highway_fuel_economy_rate) , Type_of_powertrain FROM vehicles GROUP BY Type_of_powertrain
SELECT avg(City_fuel_economy_rate) ,  avg(Highway_fuel_economy_rate) , Type_of_powertrain FROM vehicles GROUP BY Type_of_powertrain
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT avg(amount_of_loan) FROM Student_Loans
SELECT T1.bio_data ,  T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING count(*)  >=  2 UNION SELECT T1.bio_data ,  T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING count(*)  <  2
SELECT T1.bio_data ,  T1.student_id FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING count(*)  >=  2 UNION SELECT T1.bio_data ,  T1.student_id FROM Students AS T1 JOIN Detention AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING count(*)  <  2
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T2.class_details LIKE 'net%'
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T2.class_details LIKE '%data%' EXCEPT SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T2.class_details LIKE 'net%'
select bio_data from students where student_id not in (select t1.student_id from students as t1 join detention as t2 on t1.student_id  =  t2.student_id union select t1.student_id from students as t1 join student_loans as t2 on t1.student_id  =  t2.student_id)
select bio_data from students where student_id not in (select t1.student_id from students as t1 join detention as t2 on t1.student_id  =  t2.student_id union select t1.student_id from students as t1 join student_loans as t2 on t1.student_id  =  t2.student_id)
SELECT amount_of_loan ,  date_of_loan FROM Student_Loans WHERE student_id IN ( SELECT student_id FROM Achievements GROUP BY student_id HAVING count(*)  >=  2 )
SELECT amount_of_loan ,  date_of_loan FROM Student_Loans WHERE student_id IN ( SELECT student_id FROM Achievements GROUP BY student_id HAVING count(*)  >=  2 )
SELECT T1.teacher_details ,  T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.teacher_details ,  T1.teacher_id FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT distinct(T1.detention_type_description) FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code  =  T2.detention_type_code
SELECT distinct(T1.detention_type_description) FROM Ref_Detention_Type AS T1 JOIN Detention AS T2 ON T1.detention_type_code  =  T2.detention_type_code
SELECT DISTINCT T1.student_details ,  T3.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id  =  T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code  =  T3.address_type_code
SELECT DISTINCT T1.student_details ,  T3.address_type_description FROM Students AS T1 JOIN Students_Addresses AS T2 ON T1.student_id  =  T2.student_id JOIN Ref_Address_Types AS T3 ON T2.address_type_code  =  T3.address_type_code
SELECT T1.address_details ,  T3.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id  =  T2.address_id JOIN Students AS T3 ON T2.student_id  =  T3.student_id
SELECT T1.address_details ,  T3.bio_data FROM Addresses AS T1 JOIN Students_Addresses AS T2 ON T1.address_id  =  T2.address_id JOIN Students AS T3 ON T2.student_id  =  T3.student_id
SELECT T1.bio_data ,  T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id  =  T2.student_id
SELECT T1.bio_data ,  T2.date_of_transcript FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id  =  T2.student_id
SELECT count(DISTINCT student_id) ,  behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT student_id) ,  behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data ,  T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id  =  T2.student_id WHERE T2.behaviour_monitoring_details IN ( SELECT behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1 ) INTERSECT SELECT T1.bio_data ,  T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id  =  T2.student_id WHERE T2.behaviour_monitoring_details IN ( SELECT behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details HAVING count(*)  =  3 )
SELECT T1.bio_data ,  T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id  =  T2.student_id WHERE T2.behaviour_monitoring_details IN ( SELECT behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1 ) INTERSECT SELECT T1.bio_data ,  T1.student_details FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id  =  T2.student_id WHERE T2.behaviour_monitoring_details IN ( SELECT behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details HAVING count(*)  =  3 )
SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id  =  T2.student_id WHERE T2.behaviour_monitoring_details IN ( SELECT behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1 ) EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Behaviour_Monitoring AS T2 ON T1.student_id  =  T2.student_id WHERE T2.behaviour_monitoring_details NOT IN ( SELECT behaviour_monitoring_details FROM Behaviour_Monitoring GROUP BY behaviour_monitoring_details ORDER BY count(*) DESC LIMIT 1 )
select t1.bio_data from students as t1 join behaviour_monitoring as t2 on t1.student_id  =  t2.student_id where t2.behaviour_monitoring_details in ( select behaviour_monitoring_details from behaviour_monitoring group by behaviour_monitoring_details order by count(*) desc limit 1 ) except select t1.bio_data from students as t1 join behaviour_monitoring as t2 on t1.student_id  =  t2.student_id where t2.behaviour_monitoring_details not in ( select behaviour_monitoring_details from behaviour_monitoring group by behaviour_monitoring_details order by count(*) desc limit 1 )
SELECT T1.bio_data ,  T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id  =  T2.student_id
SELECT T1.bio_data ,  T2.event_date FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id  =  T2.student_id
SELECT count(*) ,  T2.event_type_code ,  T3.event_type_description FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id  =  T2.student_id JOIN Ref_Event_Types AS T3 ON T2.event_type_code  =  T3.event_type_code GROUP BY T2.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  T2.event_type_code ,  T3.event_type_description FROM Students AS T1 JOIN Student_Events AS T2 ON T1.student_id  =  T2.student_id JOIN Ref_Event_Types AS T3 ON T2.event_type_code  =  T3.event_type_code GROUP BY T2.event_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.achievement_details ,  T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code  =  T2.achievement_type_code
SELECT T1.achievement_details ,  T2.achievement_type_description FROM Achievements AS T1 JOIN Ref_Achievement_Type AS T2 ON T1.achievement_type_code  =  T2.achievement_type_code
SELECT count(DISTINCT T1.teacher_id) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T2.student_id NOT IN ( SELECT student_id FROM Achievements )
SELECT count(DISTINCT T1.teacher_id) FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T2.student_id NOT IN ( SELECT student_id FROM Achievements )
SELECT date_of_transcript ,  transcript_details FROM Transcripts
SELECT date_of_transcript ,  transcript_details FROM Transcripts
SELECT achievement_type_code ,  achievement_details ,  date_achievement FROM Achievements
SELECT achievement_type_code ,  achievement_details ,  date_achievement FROM Achievements
SELECT datetime_detention_start ,  datetime_detention_end FROM Detention
SELECT datetime_detention_start ,  datetime_detention_end FROM Detention
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT bio_data FROM Students WHERE student_details LIKE '%Suite%'
SELECT T1.teacher_details ,  T3.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id JOIN Students AS T3 ON T2.student_id  =  T3.student_id
SELECT T1.teacher_details ,  T3.student_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id JOIN Students AS T3 ON T2.student_id  =  T3.student_id
SELECT count(*) ,  teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  teacher_id FROM Classes GROUP BY teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  student_id FROM Classes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id ,  T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING count(*)  =  2
SELECT T1.student_id ,  T1.student_details FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING count(*)  =  2
SELECT T1.detention_type_code ,  T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code  =  T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.detention_type_code ,  T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code  =  T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.bio_data ,  T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id  =  T2.student_id WHERE T2.amount_of_loan  >  ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT T1.bio_data ,  T1.student_details FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id  =  T2.student_id WHERE T2.amount_of_loan  >  ( SELECT avg(amount_of_loan) FROM Student_Loans )
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT date_of_loan FROM Student_Loans ORDER BY date_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id  =  T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 ON T1.student_id  =  T2.student_id ORDER BY T2.amount_of_loan ASC LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id  =  T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.date_of_transcript FROM Transcripts AS T1 JOIN Student_Loans AS T2 ON T1.student_id  =  T2.student_id ORDER BY T2.amount_of_loan DESC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id JOIN Transcripts AS T3 ON T2.student_id  =  T3.student_id ORDER BY T3.date_of_transcript ASC LIMIT 1
SELECT T1.teacher_details FROM Teachers AS T1 JOIN Classes AS T2 ON T1.teacher_id  =  T2.teacher_id JOIN Transcripts AS T3 ON T2.student_id  =  T3.student_id ORDER BY T3.date_of_transcript ASC LIMIT 1
select student_id ,  sum(amount_of_loan) from student_loans group by student_id
SELECT student_id ,  sum(amount_of_loan) FROM Student_Loans GROUP BY student_id
SELECT T1.student_id ,  T1.bio_data ,  count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id
SELECT T1.student_id ,  T1.bio_data ,  count(*) FROM Students AS T1 JOIN Classes AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id
SELECT count(DISTINCT student_id) FROM Detention
SELECT count(DISTINCT student_id) FROM Detention
SELECT T1.address_type_code ,  T2.address_type_description FROM Students_Addresses AS T1 JOIN Ref_Address_Types AS T2 WHERE T1.address_type_code  =  T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_type_code ,  T2.address_type_description FROM Students_Addresses AS T1 JOIN Ref_Address_Types AS T2 WHERE T1.address_type_code  =  T2.address_type_code GROUP BY T1.address_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 WHERE T1.student_id  =  T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 WHERE T1.student_id  =  T2.student_id
SELECT T1.bio_data FROM Students AS T1 JOIN Student_Events AS T2 WHERE T1.student_id  =  T2.student_id EXCEPT SELECT T1.bio_data FROM Students AS T1 JOIN Student_Loans AS T2 WHERE T1.student_id  =  T2.student_id
SELECT date_from ,  date_to FROM Students_Addresses WHERE student_id IN ( SELECT student_id FROM Transcripts GROUP BY student_id HAVING count(*)  =  2 )
SELECT date_from ,  date_to FROM Students_Addresses WHERE student_id IN ( SELECT student_id FROM Transcripts GROUP BY student_id HAVING count(*)  =  2 )
SELECT datetime_detention_start FROM Detention
SELECT datetime_detention_start FROM Detention
SELECT name FROM Author
SELECT name FROM Author
SELECT name ,  address FROM Client
SELECT name ,  address FROM Client
SELECT title ,  isbn ,  SalePrice FROM Book
SELECT title ,  isbn ,  SalePrice FROM Book
SELECT count(*) FROM Book
SELECT count(*) FROM Book
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Client
SELECT count(*) FROM Client
SELECT name ,  address FROM Client ORDER BY name
SELECT name ,  address FROM Client ORDER BY name
SELECT T3.title ,  T1.name FROM Author AS T1 JOIN Author_Book AS T2 ON T2.Author  =  T1.idAuthor JOIN Book AS T3 ON T2.isbn  =  T3.isbn
SELECT T3.title ,  T1.name FROM Author AS T1 JOIN Author_Book AS T2 ON T2.Author  =  T1.idAuthor JOIN Book AS T3 ON T2.isbn  =  T3.isbn
SELECT T1.idOrder ,  T2.name FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient
SELECT T1.idOrder ,  T2.name FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient
SELECT T1.name ,  count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor  =  T2.Author GROUP BY T1.idAuthor
SELECT T1.name ,  count(*) FROM Author AS T1 JOIN Author_Book AS T2 ON T1.idAuthor  =  T2.Author GROUP BY T1.idAuthor
SELECT isbn ,  count(*) FROM Books_Order GROUP BY isbn
SELECT isbn ,  count(*) FROM Books_Order GROUP BY isbn
SELECT isbn ,  sum(amount) FROM Books_Order GROUP BY isbn
SELECT isbn ,  sum(amount) FROM Books_Order GROUP BY isbn
SELECT T2.title FROM Books_Order AS T1 JOIN Book AS T2 ON T1.isbn  =  T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM Books_Order AS T1 JOIN Book AS T2 ON T1.isbn  =  T2.isbn GROUP BY T1.isbn ORDER BY count(*) DESC LIMIT 1
SELECT T2.title ,  T2.PurchasePrice FROM Books_Order AS T1 JOIN BOOk AS T2 ON T1.isbn  =  T2.isbn GROUP BY T1.isbn ORDER BY sum(amount) DESC LIMIT 1
SELECT T2.title ,  T2.PurchasePrice FROM Books_Order AS T1 JOIN BOOk AS T2 ON T1.isbn  =  T2.isbn GROUP BY T1.isbn ORDER BY sum(amount) DESC LIMIT 1
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn  =  T2.isbn
SELECT DISTINCT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn  =  T2.isbn
SELECT DISTINCT T1.name FROM Client AS T1 JOIN Orders AS T2 ON T1.idClient  =  T2.idClient
SELECT DISTINCT T1.name FROM Client AS T1 JOIN Orders AS T2 ON T1.idClient  =  T2.idClient
SELECT T2.name ,  count(*) FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient GROUP BY T1.idClient
SELECT T2.name ,  count(*) FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient GROUP BY T1.idClient
SELECT T2.name FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient GROUP BY T1.idClient ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient GROUP BY T1.idClient ORDER BY count(*) DESC LIMIT 1
SELECT T2.name ,  sum(T3.amount) FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient JOIN Books_Order AS T3 ON T3.idOrder  =  T1.idOrder GROUP BY T1.idClient
SELECT T2.name ,  sum(T3.amount) FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient JOIN Books_Order AS T3 ON T3.idOrder  =  T1.idOrder GROUP BY T1.idClient
SELECT T2.name FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient JOIN Books_Order AS T3 ON T3.idOrder  =  T1.idOrder GROUP BY T1.idClient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT T2.name FROM Orders AS T1 JOIN Client AS T2 ON T1.idClient  =  T2.idClient JOIN Books_Order AS T3 ON T3.idOrder  =  T1.idOrder GROUP BY T1.idClient ORDER BY sum(T3.amount) DESC LIMIT 1
SELECT title FROM book EXCEPT SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn  =  T2.isbn
SELECT title FROM book EXCEPT SELECT T1.title FROM book AS T1 JOIN books_order AS T2 ON T1.isbn  =  T2.isbn
SELECT name FROM Client EXCEPT SELECT T1.name FROM Client AS T1 JOIN Orders AS T2 ON T1.idClient  =  T2.idClient
SELECT name FROM Client EXCEPT SELECT T1.name FROM Client AS T1 JOIN Orders AS T2 ON T1.idClient  =  T2.idClient
SELECT max(saleprice) ,  min(saleprice) FROM Book
SELECT max(saleprice) ,  min(saleprice) FROM Book
SELECT avg(purchaseprice) ,  avg(saleprice) FROM Book
SELECT avg(purchaseprice) ,  avg(saleprice) FROM Book
SELECT max(saleprice - purchaseprice) FROM Book
SELECT max(saleprice - purchaseprice) FROM Book
SELECT title FROM book WHERE saleprice  >  (SELECT avg(saleprice) FROM book)
SELECT title FROM book WHERE saleprice  >  (SELECT avg(saleprice) FROM book)
select title from book order by saleprice asc limit 1
select title from book order by saleprice asc limit 1
select title from book order by purchaseprice  desc limit 1
select title from book order by purchaseprice  desc limit 1
"SELECT avg(saleprice) FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name  =  ""George Orwell"""
"SELECT avg(saleprice) FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name  =  ""George Orwell"""
"SELECT saleprice FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name  =  ""Plato"""
"SELECT saleprice FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name  =  ""Plato"""
"SELECT T1.title FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name  =  ""George Orwell"" ORDER BY T1.saleprice LIMIT 1"
"SELECT T1.title FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name  =  ""George Orwell"" ORDER BY T1.saleprice LIMIT 1"
"SELECT T1.title FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name  =  ""Plato"" AND T1.saleprice  <  (SELECT avg(saleprice) FROM Book)"
"SELECT T1.title FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name  =  ""Plato"" AND T1.saleprice  <  (SELECT avg(saleprice) FROM Book)"
"SELECT T3.name FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T1.title  =  ""Pride and Prejudice"""
"SELECT T3.name FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T1.title  =  ""Pride and Prejudice"""
"SELECT T1.title FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name LIKE ""%Plato%"""
"SELECT T1.title FROM Book AS T1 JOIN Author_book AS T2 ON T1.isbn  =  T2.isbn JOIN Author AS T3 ON T2.Author  =  T3.idAuthor WHERE T3.name LIKE ""%Plato%"""
"SELECT count(*) FROM Book AS T1 JOIN Books_Order AS T2 ON T1.isbn  =  T2.isbn WHERE T1.title  =  ""Pride and Prejudice"""
"SELECT count(*) FROM Book AS T1 JOIN Books_Order AS T2 ON T1.isbn  =  T2.isbn WHERE T1.title  =  ""Pride and Prejudice"""
"SELECT idOrder FROM Book AS T1 JOIN Books_Order AS T2 ON T1.isbn  =  T2.isbn WHERE T1.title  =  ""Pride and Prejudice"" INTERSECT SELECT idOrder FROM Book AS T1 JOIN Books_Order AS T2 ON T1.isbn  =  T2.isbn WHERE T1.title  =  ""The Little Prince"""
"SELECT idOrder FROM Book AS T1 JOIN Books_Order AS T2 ON T1.isbn  =  T2.isbn WHERE T1.title  =  ""Pride and Prejudice"" INTERSECT SELECT idOrder FROM Book AS T1 JOIN Books_Order AS T2 ON T1.isbn  =  T2.isbn WHERE T1.title  =  ""The Little Prince"""
"SELECT T2.isbn FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient WHERE T3.name  =  ""Peter Doe"" INTERSECT SELECT T2.isbn FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient WHERE T3.name  =  ""James Smith"""
"SELECT T2.isbn FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient WHERE T3.name  =  ""Peter Doe"" INTERSECT SELECT T2.isbn FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient WHERE T3.name  =  ""James Smith"""
"SELECT T4.title FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient JOIN book AS T4 ON T2.ISBN  =  T4.isbn WHERE T3.name  =  ""Peter Doe"" EXCEPT SELECT T4.title FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient JOIN book AS T4 ON T2.ISBN  =  T4.isbn WHERE T3.name  =  ""James Smith"""
"SELECT T4.title FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient JOIN book AS T4 ON T2.ISBN  =  T4.isbn WHERE T3.name  =  ""Peter Doe"" EXCEPT SELECT T4.title FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient JOIN book AS T4 ON T2.ISBN  =  T4.isbn WHERE T3.name  =  ""James Smith"""
"SELECT T3.name FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient JOIN Book AS T4 ON T4.isbn  =  T2.isbn WHERE T4.title  =  ""Pride and Prejudice"""
"SELECT T3.name FROM Orders AS T1 JOIN Books_Order AS T2 ON T1.idOrder  =  T2.idOrder JOIN Client AS T3 ON T1.idClient  =  T3.idClient JOIN Book AS T4 ON T4.isbn  =  T2.isbn WHERE T4.title  =  ""Pride and Prejudice"""
SELECT count(*) FROM book
SELECT Title FROM book ORDER BY Title ASC
SELECT Title FROM book ORDER BY Pages DESC
SELECT TYPE ,  Release FROM book
SELECT max(Chapters) ,  min(Chapters) FROM book
"SELECT Title FROM book WHERE TYPE != ""Poet"""
SELECT avg(Rating) FROM review
SELECT T1.Title ,  T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID  =  T2.Book_ID
SELECT T2.Rating FROM book AS T1 JOIN review AS T2 ON T1.Book_ID  =  T2.Book_ID ORDER BY T1.Chapters DESC LIMIT 1
SELECT T2.Rank FROM book AS T1 JOIN review AS T2 ON T1.Book_ID  =  T2.Book_ID ORDER BY T1.Pages ASC LIMIT 1
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID  =  T2.Book_ID ORDER BY T2.Rank LIMIT 1
"SELECT avg(T2.Readers_in_Million) FROM book AS T1 JOIN review AS T2 ON T1.Book_ID  =  T2.Book_ID WHERE T1.Type  =  ""Novel"""
SELECT TYPE ,  COUNT(*) FROM book GROUP BY TYPE
SELECT TYPE FROM book GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT TYPE FROM book GROUP BY TYPE HAVING COUNT(*)  >=  3
SELECT T1.Title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID  =  T2.Book_ID ORDER BY T2.Rating ASC
SELECT T1.Title ,  T1.audio FROM book AS T1 JOIN review AS T2 ON T1.Book_ID  =  T2.Book_ID ORDER BY T2.Readers_in_Million DESC
SELECT count(*) FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM review)
SELECT TYPE FROM book WHERE Chapters  >  75 INTERSECT SELECT TYPE FROM book WHERE Chapters  <  50
SELECT count(DISTINCT TYPE) FROM book
SELECT TYPE ,  title FROM book EXCEPT SELECT T1.type ,  T1.title FROM book AS T1 JOIN review AS T2 ON T1.Book_ID  =  T2.Book_ID;
SELECT count(*) FROM customer
SELECT count(*) FROM customer
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Name FROM customer ORDER BY Level_of_Membership ASC
SELECT Nationality ,  Card_Credit FROM customer
SELECT Nationality ,  Card_Credit FROM customer
"SELECT Name FROM customer WHERE Nationality  =  ""England"" OR Nationality  =  ""Australia"""
"SELECT Name FROM customer WHERE Nationality  =  ""England"" OR Nationality  =  ""Australia"""
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership  >  1
SELECT avg(Card_Credit) FROM customer WHERE Level_of_Membership  >  1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Card_Credit FROM customer ORDER BY Level_of_Membership DESC LIMIT 1
SELECT Nationality ,  COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality ,  COUNT(*) FROM customer GROUP BY Nationality
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM customer WHERE Card_Credit  <  50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit  >  75
SELECT Nationality FROM customer WHERE Card_Credit  <  50 INTERSECT SELECT Nationality FROM customer WHERE Card_Credit  >  75
SELECT T1.Name ,  T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID  =  T2.Customer_ID
SELECT T1.Name ,  T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID  =  T2.Customer_ID
SELECT T1.Name ,  T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID  =  T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name ,  T2.Dish_Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID  =  T2.Customer_ID ORDER BY T2.Quantity DESC
SELECT T1.Name ,  sum(T2.Quantity) FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID  =  T2.Customer_ID GROUP BY T1.Name
select t1.name ,  sum(t2.quantity) from customer as t1 join customer_order as t2 on t1.customer_id  =  t2.customer_id group by t1.name
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID  =  T2.Customer_ID GROUP BY T1.Name HAVING sum(T2.Quantity)  >  1
SELECT T1.Name FROM customer AS T1 JOIN customer_order AS T2 ON T1.Customer_ID  =  T2.Customer_ID GROUP BY T1.Name HAVING sum(T2.Quantity)  >  1
SELECT DISTINCT Manager FROM branch
SELECT DISTINCT Manager FROM branch
SELECT name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT name FROM customer WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customer_order)
SELECT count(*) FROM member
SELECT Name FROM member ORDER BY Age ASC
SELECT Name ,  Nationality FROM member
"select name from member where nationality != ""england"""
SELECT Name FROM member WHERE Age  =  19 OR Age  =  20
SELECT Name FROM member ORDER BY Age DESC LIMIT 1
SELECT Nationality ,  COUNT(*) FROM member GROUP BY Nationality
SELECT Nationality ,  COUNT(*) FROM member GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM member GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT T3.Name ,  T2.Club_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID  =  T2.Club_ID JOIN member AS T3 ON T1.Member_ID  =  T3.Member_ID
SELECT T3.Name ,  T2.Club_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID  =  T2.Club_ID JOIN member AS T3 ON T1.Member_ID  =  T3.Member_ID WHERE T2.Overall_Ranking  <  100
SELECT T3.Name ,  T2.Club_Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID  =  T2.Club_ID JOIN member AS T3 ON T1.Member_ID  =  T3.Member_ID WHERE T1.Year_Join  <  2018
"SELECT T3.Name FROM club_leader AS T1 JOIN club AS T2 ON T1.Club_ID  =  T2.Club_ID JOIN member AS T3 ON T1.Member_ID  =  T3.Member_ID WHERE T2.Club_Name  =  ""Houston"""
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM club_leader)
SELECT Nationality FROM member WHERE Age  >  22 INTERSECT SELECT Nationality FROM member WHERE Age  <  19
SELECT avg(T2.age) FROM club_leader AS T1 JOIN member AS T2 ON T1.member_id  =  T2.member_id
SELECT club_name FROM club WHERE club_name LIKE '%state%'
SELECT Collection_Subset_Name FROM Collection_Subsets;
SELECT Collection_Subset_Name FROM Collection_Subsets;
"SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = ""Top collection"";"
"SELECT Collecrtion_Subset_Details FROM Collection_Subsets WHERE Collection_Subset_Name = ""Top collection"";"
SELECT Document_Subset_Name FROM Document_Subsets;
SELECT Document_Subset_Name FROM Document_Subsets;
"SELECT Document_Subset_Details FROM Document_Subsets WHERE Document_Subset_Name = ""Best for 2000"";"
"SELECT Document_Subset_Details FROM Document_Subsets WHERE Document_Subset_Name = ""Best for 2000"";"
SELECT Document_Object_ID FROM Document_Objects;
SELECT Document_Object_ID FROM Document_Objects;
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER  =  'Marlin'
SELECT Parent_Document_Object_ID FROM Document_Objects WHERE OWNER  =  'Marlin'
SELECT OWNER FROM Document_Objects WHERE Description  =  'Braeden Collection'
SELECT OWNER FROM Document_Objects WHERE Description  =  'Braeden Collection'
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID WHERE T1.Owner  =  'Marlin'
SELECT T2.Owner FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID WHERE T1.Owner  =  'Marlin'
SELECT DISTINCT T2.Description FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID
SELECT DISTINCT T2.Description FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID
"SELECT count(*) FROM Document_Objects WHERE OWNER = ""Marlin"";"
"SELECT count(*) FROM Document_Objects WHERE OWNER = ""Marlin"";"
SELECT Document_Object_ID FROM Document_Objects EXCEPT SELECT Parent_Document_Object_ID FROM Document_Objects
SELECT Document_Object_ID FROM Document_Objects EXCEPT SELECT Parent_Document_Object_ID FROM Document_Objects
SELECT T2.Document_Object_ID ,  count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID GROUP BY T2.Document_Object_ID;
SELECT T2.Document_Object_ID ,  count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID GROUP BY T2.Document_Object_ID;
SELECT Collection_Name FROM Collections;
SELECT Collection_Name FROM Collections;
"SELECT Collection_Description FROM Collections WHERE Collection_Name = ""Best"";"
"SELECT Collection_Description FROM Collections WHERE Collection_Name = ""Best"";"
"SELECT T2.Collection_Name FROM Collections AS T1 JOIN Collections AS T2 ON T1.Parent_Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Nice"";"
"SELECT T2.Collection_Name FROM Collections AS T1 JOIN Collections AS T2 ON T1.Parent_Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Nice"";"
SELECT Collection_Name FROM Collections EXCEPT SELECT T2.Collection_Name FROM Collections AS T1 JOIN Collections AS T2 ON T1.Parent_Collection_ID = T2.Collection_ID;
SELECT Collection_Name FROM Collections EXCEPT SELECT T2.Collection_Name FROM Collections AS T1 JOIN Collections AS T2 ON T1.Parent_Collection_ID = T2.Collection_ID;
SELECT T2.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID GROUP BY T2.Document_Object_ID HAVING count(*)  >  1;
SELECT T2.Document_Object_ID FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID GROUP BY T2.Document_Object_ID HAVING count(*)  >  1;
"SELECT count(*) FROM Collections AS T1 JOIN Collections AS T2 ON T1.Parent_Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = ""Best"";"
"SELECT count(*) FROM Collections AS T1 JOIN Collections AS T2 ON T1.Parent_Collection_ID = T2.Collection_ID WHERE T2.Collection_Name = ""Best"";"
select t1.document_object_id from document_subset_members as t1 join document_objects as t2 on t1.document_object_id  =  t2.document_object_id where t2.owner  =  'ransom'
select t1.document_object_id from document_subset_members as t1 join document_objects as t2 on t1.document_object_id  =  t2.document_object_id where t2.owner  =  'ransom'
SELECT T2.Collection_Subset_ID ,  T1.Collection_Subset_Name ,  count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID =  T2.Collection_Subset_ID GROUP BY T2.Collection_Subset_ID;
SELECT T2.Collection_Subset_ID ,  T1.Collection_Subset_Name ,  count(*) FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID =  T2.Collection_Subset_ID GROUP BY T2.Collection_Subset_ID;
SELECT T2.Document_Object_ID ,  count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID GROUP BY T2.Document_Object_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Document_Object_ID ,  count(*) FROM Document_Objects AS T1 JOIN Document_Objects AS T2 ON T1.Parent_Document_Object_ID = T2.Document_Object_ID GROUP BY T2.Document_Object_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Document_Object_ID , count(*) FROM Document_Subset_Members GROUP BY Document_Object_ID ORDER BY count(*) ASC LIMIT 1;
select document_object_id , count(*) from document_subset_members group by document_object_id order by count(*) asc limit 1;
select document_object_id , count(*) from document_subset_members group by document_object_id having count(*) between 2 and 4;
SELECT Document_Object_ID , count(*) FROM Document_Subset_Members GROUP BY Document_Object_ID HAVING count(*) BETWEEN 2 AND 4;
SELECT DISTINCT OWNER FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.Related_Document_Object_ID  =  T2.Document_Object_ID WHERE T2.Owner  =  'Braeden';
SELECT DISTINCT OWNER FROM Document_Subset_Members AS T1 JOIN Document_Objects AS T2 ON T1.Related_Document_Object_ID  =  T2.Document_Object_ID WHERE T2.Owner  =  'Braeden';
SELECT DISTINCT T1.Document_Subset_Name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID JOIN Document_Objects AS T3 ON T2.Document_Object_ID  =  T3.Document_Object_ID WHERE T3.owner  =  'Braeden'
SELECT DISTINCT T1.Document_Subset_Name FROM Document_Subsets AS T1 JOIN Document_Subset_Members AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID JOIN Document_Objects AS T3 ON T2.Document_Object_ID  =  T3.Document_Object_ID WHERE T3.owner  =  'Braeden'
SELECT T1.Document_Subset_ID ,  T2.Document_Subset_Name , count(DISTINCT T1.Document_Object_ID) FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID GROUP BY T1.Document_Subset_ID;
SELECT T1.Document_Subset_ID ,  T2.Document_Subset_Name , count(DISTINCT T1.Document_Object_ID) FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID GROUP BY T1.Document_Subset_ID;
select t1.document_subset_id ,  t2.document_subset_name , count(distinct t1.document_object_id) from document_subset_members as t1 join document_subsets as t2 on t1.document_subset_id =  t2.document_subset_id group by t1.document_subset_id order by count(*) desc limit 1;
select t1.document_subset_id ,  t2.document_subset_name , count(distinct t1.document_object_id) from document_subset_members as t1 join document_subsets as t2 on t1.document_subset_id =  t2.document_subset_id group by t1.document_subset_id order by count(*) desc limit 1;
"SELECT DISTINCT T1.Document_Object_ID FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID WHERE T2.Document_Subset_Name = ""Best for 2000"";"
"SELECT DISTINCT T1.Document_Object_ID FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID WHERE T2.Document_Subset_Name = ""Best for 2000"";"
SELECT DISTINCT T3.Document_Subset_Name ,  T1.Document_Object_ID FROM Document_Subset_Members AS T1 JOIN Document_Subset_Members  AS T2 ON T1.Related_Document_Object_ID = T2.Document_Object_ID JOIN Document_Subsets AS T3 ON T2.Document_Subset_ID =  T3.Document_Subset_ID
select distinct t3.document_subset_name ,  t1.document_object_id from document_subset_members as t1 join document_subset_members  as t2 on t1.related_document_object_id = t2.document_object_id join document_subsets as t3 on t2.document_subset_id =  t3.document_subset_id
select t1.collection_name from collections as t1 join documents_in_collections as t2 on t1.collection_id = t2.collection_id join document_objects as t3 on t2.document_object_id  =  t3.document_object_id where t3.owner  =  'ransom'
SELECT T1.Collection_Name FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID JOIN Document_Objects AS T3 ON T2.Document_object_id  =  T3.Document_object_id WHERE T3.owner  =  'Ransom'
SELECT count(*) ,  T2.Document_Object_ID FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T2.Document_Object_ID
SELECT count(*) ,  T2.Document_Object_ID FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID GROUP BY T2.Document_Object_ID
"SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Best"";"
"SELECT count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Best"";"
"SELECT T2.Document_Object_ID FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Best"";"
"SELECT T2.Document_Object_ID FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Best"";"
"SELECT T1.Collection_Name ,  T1.Collection_ID ,  count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Best"" GROUP BY T1.Collection_ID ORDER BY count(*) DESC LIMIT 1;"
"SELECT T1.Collection_Name ,  T1.Collection_ID ,  count(*) FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Best"" GROUP BY T1.Collection_ID ORDER BY count(*) DESC LIMIT 1;"
"SELECT DISTINCT T1.Document_Object_ID FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID JOIN Documents_in_Collections AS T3 ON T1.Document_Object_ID  =  T3.Document_Object_ID JOIN Collections AS T4 ON T3.Collection_ID  =  T4.Collection_ID WHERE T2.Document_Subset_Name = ""Best for 2000"" AND T4.Collection_Name = ""Best"";"
"SELECT DISTINCT T1.Document_Object_ID FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID JOIN Documents_in_Collections AS T3 ON T1.Document_Object_ID  =  T3.Document_Object_ID JOIN Collections AS T4 ON T3.Collection_ID  =  T4.Collection_ID WHERE T2.Document_Subset_Name = ""Best for 2000"" AND T4.Collection_Name = ""Best"";"
"SELECT DISTINCT T2.Document_Object_ID FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Best"" EXCEPT SELECT DISTINCT T3.Document_Object_ID FROM Document_Subset_Members AS T3 JOIN Document_Subsets AS T4 ON T3.Document_Subset_ID =  T4.Document_Subset_ID WHERE T4.Document_Subset_Name = ""Best for 2000"""
"SELECT DISTINCT T2.Document_Object_ID FROM Collections AS T1 JOIN Documents_in_Collections AS T2 ON T1.Collection_ID = T2.Collection_ID WHERE T1.Collection_Name = ""Best"" EXCEPT SELECT DISTINCT T3.Document_Object_ID FROM Document_Subset_Members AS T3 JOIN Document_Subsets AS T4 ON T3.Document_Subset_ID =  T4.Document_Subset_ID WHERE T4.Document_Subset_Name = ""Best for 2000"""
"SELECT DISTINCT T1.Document_Object_ID FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID JOIN Documents_in_Collections AS T3 ON T1.Document_Object_ID  =  T3.Document_Object_ID JOIN Collections AS T4 ON T3.Collection_ID  =  T4.Collection_ID WHERE T2.Document_Subset_Name = ""Best for 2000"" OR T4.Collection_Name = ""Best"";"
"SELECT DISTINCT T1.Document_Object_ID FROM Document_Subset_Members AS T1 JOIN Document_Subsets AS T2 ON T1.Document_Subset_ID =  T2.Document_Subset_ID JOIN Documents_in_Collections AS T3 ON T1.Document_Object_ID  =  T3.Document_Object_ID JOIN Collections AS T4 ON T3.Collection_ID  =  T4.Collection_ID WHERE T2.Document_Subset_Name = ""Best for 2000"" OR T4.Collection_Name = ""Best"";"
"SELECT DISTINCT T4.Collection_Name FROM Collection_Subset_Members AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Related_Collection_ID = T2.Collection_ID JOIN Collections AS T3 ON T1.Collection_ID = T3.Collection_ID JOIN Collections AS T4 ON T2.Collection_ID = T4.Collection_ID WHERE T3.Collection_Name = ""Best"";"
"SELECT DISTINCT T4.Collection_Name FROM Collection_Subset_Members AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Related_Collection_ID = T2.Collection_ID JOIN Collections AS T3 ON T1.Collection_ID = T3.Collection_ID JOIN Collections AS T4 ON T2.Collection_ID = T4.Collection_ID WHERE T3.Collection_Name = ""Best"";"
"SELECT count(DISTINCT T1.Related_Collection_ID) FROM Collection_Subset_Members AS T1 JOIN Collections AS T2 ON T1.Collection_ID  =  T2.Collection_ID WHERE T2.Collection_Name = ""Best"";"
"SELECT count(DISTINCT T1.Related_Collection_ID) FROM Collection_Subset_Members AS T1 JOIN Collections AS T2 ON T1.Collection_ID  =  T2.Collection_ID WHERE T2.Collection_Name = ""Best"";"
"SELECT DISTINCT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID =  T2.Collection_Subset_ID JOIN Collections AS T3 ON T2.Collection_ID =  T3.Collection_ID WHERE T3.Collection_Name = ""Best"";"
"SELECT DISTINCT T1.Collection_Subset_Name FROM Collection_Subsets AS T1 JOIN Collection_Subset_Members AS T2 ON T1.Collection_Subset_ID =  T2.Collection_Subset_ID JOIN Collections AS T3 ON T2.Collection_ID =  T3.Collection_ID WHERE T3.Collection_Name = ""Best"";"
"SELECT count(*) FROM songs WHERE name LIKE ""%Love%"""
SELECT name FROM songs ORDER BY name
select name , language from songs
SELECT max(voice_sound_quality) ,  min(voice_sound_quality) FROM performance_score
SELECT T1.voice_sound_quality ,  T1.rhythm_tempo ,  T1.stage_presence FROM performance_score AS T1 JOIN participants AS T2 ON T1.participant_id  =  T2.id WHERE T2.name  =  'Freeway'
SELECT id ,  LANGUAGE ,  original_artist FROM songs WHERE name != 'Love'
SELECT name ,  original_artist FROM songs WHERE english_translation  =  'All the streets of love'
SELECT DISTINCT T2.stage_presence FROM songs AS T1 JOIN performance_score AS T2 ON T1.id  =  T2.songs_id WHERE T1.language  =  'English'
SELECT T1.id ,  T1.Name FROM participants AS T1 JOIN performance_score AS T2 ON T2.participant_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2
SELECT T1.id ,  T1.Name ,  T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T2.participant_id  =  T1.id GROUP BY T1.id ORDER BY count(*)
SELECT T1.id ,  T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T2.participant_id  =  T1.id WHERE T2.voice_sound_quality  =  5 OR T2.rhythm_tempo  =  5
SELECT T1.voice_sound_quality FROM performance_score AS T1 JOIN songs AS T2 ON T1.songs_id  =  T2.id WHERE T2.name  =  ' The Balkan Girls ' AND T2.language  =  'English'
SELECT T1.id ,  T1.name FROM songs AS T1 JOIN performance_score AS T2 ON T1.id  =  T2.songs_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance_score WHERE stage_presence  <  7 OR stage_presence  >  9
SELECT count(*) FROM songs WHERE id NOT IN ( SELECT songs_id FROM performance_score );
SELECT avg(T2.rhythm_tempo) ,  T1.language FROM songs AS T1 JOIN performance_score AS T2 ON T2.songs_id  =  T1.id GROUP BY T1.language
SELECT DISTINCT T1.name FROM participants AS T1 JOIN performance_score AS T2 ON T2.participant_id  =  T1.id JOIN songs AS T3 ON T3.id  =  T2.songs_id WHERE T3.language  =  'English'
SELECT T1.name ,  T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T2.participant_id  =  T1.id JOIN songs AS T3 ON T3.id  =  T2.songs_id WHERE T3.language  =  'Croatian' INTERSECT SELECT T1.name ,  T1.popularity FROM participants AS T1 JOIN performance_score AS T2 ON T2.participant_id  =  T1.id JOIN songs AS T3 ON T3.id  =  T2.songs_id WHERE T3.language  =  'English'
"SELECT name FROM songs WHERE name LIKE ""%Is%"""
select t2.original_artist from performance_score as t1 join songs as t2 on t2.id  =  t1.songs_id where t1.rhythm_tempo  >  5 order by t1.voice_sound_quality desc
SELECT count(*) FROM City
SELECT count(*) FROM City
select distinct state from city
SELECT DISTINCT state FROM City
SELECT count(DISTINCT country) FROM City
SELECT count(DISTINCT country) FROM City
SELECT city_name ,  city_code ,  state ,  country FROM City
SELECT city_name ,  city_code ,  state ,  country FROM City
"SELECT latitude ,  longitude FROM City WHERE city_name  =  ""Baltimore"""
"SELECT latitude ,  longitude FROM City WHERE city_name  =  ""Baltimore"""
"SELECT city_name FROM City WHERE state  =  ""PA"""
"SELECT city_name FROM City WHERE state  =  ""PA"""
"SELECT count(*) FROM City WHERE country  =  ""CANADA"""
"SELECT count(*) FROM City WHERE country  =  ""CANADA"""
"SELECT city_name FROM City WHERE country  =  ""USA"" ORDER BY latitude"
"SELECT city_name FROM City WHERE country  =  ""USA"" ORDER BY latitude"
SELECT state ,  count(*) FROM City GROUP BY state
SELECT state ,  count(*) FROM City GROUP BY state
select country ,  count(*) from city group by country
SELECT country ,  count(*) FROM City GROUP BY country
SELECT state FROM City GROUP BY state HAVING count(*)  >=  2
SELECT state FROM City GROUP BY state HAVING count(*)  >=  2
SELECT state FROM City GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM City GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country FROM City GROUP BY country ORDER BY count(*) ASC LIMIT 1
SELECT country FROM City GROUP BY country ORDER BY count(*) ASC LIMIT 1
"SELECT T2.Fname ,  T2.Lname FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T1.state  =  ""MD"""
"SELECT T2.Fname ,  T2.Lname FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T1.state  =  ""MD"""
"SELECT count(*) FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T1.country  =  ""CHINA"""
"SELECT count(*) FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T1.country  =  ""CHINA"""
"SELECT T2.Fname ,  T2.Major FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T1.city_name  =  ""Baltimore"""
"SELECT T2.Fname ,  T2.Major FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T1.city_name  =  ""Baltimore"""
SELECT T1.country ,  count(*) FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.country
SELECT T1.country ,  count(*) FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.country
SELECT T1.city_name ,  count(*) FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.city_code
SELECT T1.city_name ,  count(*) FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.city_code
SELECT T1.state FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.state FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.country FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT T1.country FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.country ORDER BY count(*) LIMIT 1
SELECT T1.city_name FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.city_code HAVING count(*)  >=  3
SELECT T1.city_name FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.city_code HAVING count(*)  >=  3
SELECT T1.state FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.state HAVING count(*)  >  5
SELECT T1.state FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code GROUP BY T1.state HAVING count(*)  >  5
"SELECT StuID FROM Student EXCEPT SELECT StuID FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE country  =  ""USA"""
"SELECT StuID FROM Student EXCEPT SELECT StuID FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE country  =  ""USA"""
"SELECT StuID FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T1.state  =  ""PA""  AND T2.sex  =  'F'"
"SELECT StuID FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T1.state  =  ""PA""  AND T2.sex  =  'F'"
"SELECT StuID FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T2.sex  =  'M' AND T1.country != ""USA"""
"SELECT StuID FROM City AS T1 JOIN Student AS T2 ON T1.city_code  =  T2.city_code WHERE T2.sex  =  'M' AND T1.country != ""USA"""
"SELECT distance FROM Direct_distance WHERE city1_code  =  ""BAL"" AND city2_code  =  ""CHI"""
"SELECT distance FROM Direct_distance WHERE city1_code  =  ""BAL"" AND city2_code  =  ""CHI"""
"SELECT distance FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code JOIN City AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.city_name  =  ""Boston"" AND T3.city_name  =  ""Newark"""
"SELECT distance FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code JOIN City AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.city_name  =  ""Boston"" AND T3.city_name  =  ""Newark"""
SELECT avg(distance) ,  min(distance) ,  max(distance) FROM Direct_distance
SELECT avg(distance) ,  min(distance) ,  max(distance) FROM Direct_distance
SELECT city1_code ,  city2_code FROM Direct_distance ORDER BY distance DESC LIMIT 1
SELECT city1_code ,  city2_code FROM Direct_distance ORDER BY distance DESC LIMIT 1
SELECT city1_code ,  city2_code FROM Direct_distance WHERE distance  >  (SELECT avg(distance) FROM Direct_distance)
SELECT city1_code ,  city2_code FROM Direct_distance WHERE distance  >  (SELECT avg(distance) FROM Direct_distance)
SELECT city1_code ,  city2_code FROM Direct_distance WHERE distance  <  1000
SELECT city1_code ,  city2_code FROM Direct_distance WHERE distance  <  1000
"SELECT sum(distance) FROM Direct_distance WHERE city1_code  =  ""BAL"""
"SELECT sum(distance) FROM Direct_distance WHERE city1_code  =  ""BAL"""
"SELECT avg(distance) FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code WHERE T2.city_name  =  ""Boston"""
"SELECT avg(distance) FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code WHERE T2.city_name  =  ""Boston"""
"SELECT T3.city_name FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code JOIN City AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.city_name  =  ""Chicago"" ORDER BY distance LIMIT 1"
"SELECT T3.city_name FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code JOIN City AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.city_name  =  ""Chicago"" ORDER BY distance LIMIT 1"
"SELECT T3.city_name FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code JOIN City AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.city_name  =  ""Boston"" ORDER BY distance DESC LIMIT 1"
"SELECT T3.city_name FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code JOIN City AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.city_name  =  ""Boston"" ORDER BY distance DESC LIMIT 1"
SELECT city1_code ,  sum(distance) FROM Direct_distance GROUP BY city1_code
SELECT city1_code ,  sum(distance) FROM Direct_distance GROUP BY city1_code
SELECT T2.city_name ,  avg(distance) FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code GROUP BY T1.city1_code
SELECT T2.city_name ,  avg(distance) FROM Direct_distance AS T1 JOIN City AS T2 ON T1.city1_code  =  T2.city_code GROUP BY T1.city1_code
"SELECT distance FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city1_code  =  T2.city_code JOIN Student AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.Fname  =  ""Linda"" AND T2.Lname  =  ""Smith"" AND T3.Fname  =  ""Tracy"" AND T3.Lname  =  ""Kim"""
"SELECT distance FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city1_code  =  T2.city_code JOIN Student AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.Fname  =  ""Linda"" AND T2.Lname  =  ""Smith"" AND T3.Fname  =  ""Tracy"" AND T3.Lname  =  ""Kim"""
"SELECT T3.Fname ,  T3.Lname FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city1_code  =  T2.city_code JOIN Student AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.Fname  =  ""Linda"" AND T2.Lname  =  ""Smith"" ORDER BY distance DESC LIMIT 1"
"SELECT T3.Fname ,  T3.Lname FROM Direct_distance AS T1 JOIN Student AS T2 ON T1.city1_code  =  T2.city_code JOIN Student AS T3 ON T1.city2_code  =  T3.city_code WHERE T2.Fname  =  ""Linda"" AND T2.Lname  =  ""Smith"" ORDER BY distance DESC LIMIT 1"
"SELECT state FROM Student AS T1 JOIN City AS T2 ON T1.city_code  =  T2.city_code WHERE T1.Fname  =  ""Linda"""
"SELECT state FROM Student AS T1 JOIN City AS T2 ON T1.city_code  =  T2.city_code WHERE T1.Fname  =  ""Linda"""
SELECT * FROM Sailors WHERE age  >  30
SELECT * FROM Sailors WHERE age  >  30
SELECT name ,  age FROM Sailors WHERE age  <  30
SELECT name ,  age FROM Sailors WHERE age  <  30
SELECT DISTINCT bid FROM Reserves WHERE sid = 1
SELECT DISTINCT bid FROM Reserves WHERE sid = 1
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid WHERE T2.bid  =  102
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid WHERE T2.bid  =  102
SELECT DISTINCT bid FROM Reserves
SELECT DISTINCT bid FROM Reserves
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT name FROM Sailors WHERE name LIKE '%e%'
SELECT DISTINCT sid FROM Sailors WHERE age  >  (SELECT min(age) FROM Sailors);
SELECT DISTINCT sid FROM Sailors WHERE age  >  (SELECT min(age) FROM Sailors);
SELECT DISTINCT name FROM Sailors WHERE age  >  (SELECT min(age) FROM Sailors WHERE rating  >  7);
SELECT DISTINCT name FROM Sailors WHERE age  >  (SELECT min(age) FROM Sailors WHERE rating  >  7);
SELECT DISTINCT T1.name ,  T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid
SELECT DISTINCT T1.name ,  T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid
SELECT DISTINCT T1.name ,  T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid GROUP BY T2.sid HAVING COUNT(*)  >  1
select distinct t1.name ,  t1.sid from sailors as t1 join reserves as t2 on t1.sid  =  t2.sid group by t2.sid having count(*)  >=  2
"SELECT DISTINCT T2.sid FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid WHERE T1.color  =  'red' OR T1.color  =  ""blue"""
"SELECT DISTINCT T2.sid FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid WHERE T1.color  =  'red' OR T1.color  =  ""blue"""
"SELECT DISTINCT T2.sid ,  T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid JOIN Sailors AS T3 ON T2.sid  =  T3.sid WHERE T1.color  =  'red' OR T1.color  =  ""blue"""
"SELECT DISTINCT T2.sid ,  T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid JOIN Sailors AS T3 ON T2.sid  =  T3.sid WHERE T1.color  =  'red' OR T1.color  =  ""blue"""
"SELECT DISTINCT T2.sid FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid WHERE T1.color  =  'red' INTERSECT SELECT DISTINCT T2.sid FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid WHERE T1.color  =  ""blue"""
"SELECT DISTINCT T2.sid FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid WHERE T1.color  =  'red' INTERSECT SELECT DISTINCT T2.sid FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid WHERE T1.color  =  ""blue"""
"SELECT DISTINCT T2.sid ,  T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid JOIN Sailors AS T3 ON T2.sid  =  T3.sid WHERE T1.color  =  'red' INTERSECT SELECT DISTINCT T2.sid ,  T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid JOIN Sailors AS T3 ON T2.sid  =  T3.sid WHERE T1.color  =  ""blue"""
"SELECT DISTINCT T2.sid ,  T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid JOIN Sailors AS T3 ON T2.sid  =  T3.sid WHERE T1.color  =  'red' INTERSECT SELECT DISTINCT T2.sid ,  T3.name FROM Boats AS T1 JOIN Reserves AS T2 ON  T1.bid  =  T2.bid JOIN Sailors AS T3 ON T2.sid  =  T3.sid WHERE T1.color  =  ""blue"""
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT sid FROM Sailors EXCEPT SELECT sid FROM Reserves
SELECT sid ,  name FROM Sailors EXCEPT SELECT T1.sid ,  T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid
SELECT sid ,  name FROM Sailors EXCEPT SELECT T1.sid ,  T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid
SELECT sid FROM Sailors EXCEPT SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid
SELECT sid FROM Sailors EXCEPT SELECT T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid
SELECT DISTINCT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid WHERE  T2.bid  =  103
SELECT DISTINCT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid WHERE  T2.bid  =  103
SELECT name FROM Sailors WHERE rating  >  (SELECT min(rating) FROM Sailors WHERE name  =  'Luis')
SELECT name FROM Sailors WHERE rating  >  (SELECT min(rating) FROM Sailors WHERE name  =  'Luis')
SELECT name FROM Sailors WHERE rating  >  (SELECT max(rating) FROM Sailors WHERE name  =  'Luis')
SELECT name FROM Sailors WHERE rating  >  (SELECT max(rating) FROM Sailors WHERE name  =  'Luis')
SELECT DISTINCT T1.name ,  T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid WHERE  T1.rating  >  2
SELECT DISTINCT T1.name ,  T1.sid FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid WHERE  T1.rating  >  2
SELECT name ,  age FROM Sailors WHERE age  =  ( SELECT max(age) FROM Sailors )
SELECT name ,  age FROM Sailors WHERE age  =  ( SELECT max(age) FROM Sailors )
SELECT COUNT(*) FROM Sailors
SELECT COUNT(*) FROM Sailors
SELECT AVG(age) FROM Sailors WHERE rating  =  7
SELECT AVG(age) FROM Sailors WHERE rating  =  7
select count(*) from sailors where name like 'd%'
select count(*) from sailors where name like 'd%'
SELECT AVG(rating) ,  MAX(age) FROM Sailors
SELECT AVG(rating) ,  MAX(age) FROM Sailors
SELECT bid ,  count(*) FROM Reserves GROUP BY bid
SELECT bid ,  count(*) FROM Reserves GROUP BY bid
SELECT bid ,  count(*) FROM Reserves GROUP BY bid HAVING bid  >  50
SELECT bid ,  count(*) FROM Reserves GROUP BY bid HAVING bid  >  50
SELECT bid ,  count(*) FROM Reserves GROUP BY bid HAVING count(*)  >  1
SELECT bid ,  count(*) FROM Reserves GROUP BY bid HAVING count(*)  >  1
SELECT bid ,  count(*) FROM Reserves WHERE sid  >  1 GROUP BY bid
SELECT bid ,  count(*) FROM Reserves WHERE sid  >  1 GROUP BY bid
SELECT T1.rating ,  avg(T1.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid JOIN Boats AS T3 ON T3.bid  =  T2.bid WHERE T3.color  =  'red' GROUP BY T1.rating
SELECT T1.rating ,  avg(T1.age) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid JOIN Boats AS T3 ON T3.bid  =  T2.bid WHERE T3.color  =  'red' GROUP BY T1.rating
SELECT name ,  rating ,  age FROM Sailors ORDER BY rating ,  age
SELECT name ,  rating ,  age FROM Sailors ORDER BY rating ,  age
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats
SELECT count(*) FROM Boats WHERE color  =  'red'
SELECT count(*) FROM Boats WHERE color  =  'red'
SELECT T3.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid JOIN Boats AS T3 ON T3.bid  =  T2.bid WHERE T1.age BETWEEN 20 AND 30
SELECT T3.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid JOIN Boats AS T3 ON T3.bid  =  T2.bid WHERE T1.age BETWEEN 20 AND 30
SELECT name FROM Sailors WHERE rating  >  (SELECT max(T1.rating) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid JOIN Boats AS T3 ON T3.bid  =  T2.bid WHERE T3.color  =  'red')
SELECT name FROM Sailors WHERE rating  >  (SELECT max(T1.rating) FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid JOIN Boats AS T3 ON T3.bid  =  T2.bid WHERE T3.color  =  'red')
SELECT max(rating) FROM Sailors
SELECT max(rating) FROM Sailors
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid JOIN Boats AS T3 ON T3.bid  =  T2.bid WHERE T3.name  =  'Melon'
SELECT T1.name FROM Sailors AS T1 JOIN Reserves AS T2 ON T1.sid  =  T2.sid JOIN Boats AS T3 ON T3.bid  =  T2.bid WHERE T3.name  =  'Melon'
SELECT name ,  age FROM Sailors ORDER BY rating DESC
SELECT name ,  age FROM Sailors ORDER BY rating DESC
SELECT model FROM headphone ORDER BY price DESC LIMIT 1
SELECT model FROM headphone ORDER BY price DESC LIMIT 1
SELECT DISTINCT model FROM headphone ORDER BY model
SELECT DISTINCT model FROM headphone ORDER BY model
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*)  >  2
SELECT CLASS FROM headphone GROUP BY CLASS HAVING count(*)  >  2
SELECT count(*) ,  CLASS FROM headphone WHERE price  >  200 GROUP BY CLASS
SELECT count(*) ,  CLASS FROM headphone WHERE price  >  200 GROUP BY CLASS
SELECT count(DISTINCT earpads) FROM headphone
SELECT count(DISTINCT earpads) FROM headphone
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2
SELECT earpads FROM headphone GROUP BY earpads ORDER BY count(*) DESC LIMIT 2
SELECT model ,  CLASS ,  construction FROM headphone ORDER BY price LIMIT 1
SELECT model ,  CLASS ,  construction FROM headphone ORDER BY price LIMIT 1
SELECT construction ,  avg(price) FROM headphone GROUP BY construction
SELECT construction ,  avg(price) FROM headphone GROUP BY construction
SELECT CLASS FROM headphone WHERE earpads  =  'Bowls' INTERSECT SELECT CLASS FROM headphone WHERE earpads  =  'Comfort Pads'
SELECT CLASS FROM headphone WHERE earpads  =  'Bowls' INTERSECT SELECT CLASS FROM headphone WHERE earpads  =  'Comfort Pads'
SELECT earpads FROM headphone EXCEPT SELECT earpads FROM headphone WHERE construction  =  'Plastic'
SELECT earpads FROM headphone EXCEPT SELECT earpads FROM headphone WHERE construction  =  'Plastic'
SELECT model FROM headphone WHERE price  <  (SELECT avg(price) FROM headphone)
SELECT model FROM headphone WHERE price  <  (SELECT avg(price) FROM headphone)
SELECT name FROM store ORDER BY date_opened
SELECT name FROM store ORDER BY date_opened
SELECT name ,  parking FROM store WHERE neighborhood  =  'Tarzana'
SELECT name ,  parking FROM store WHERE neighborhood  =  'Tarzana'
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(DISTINCT neighborhood) FROM store
SELECT count(*) ,  neighborhood FROM store GROUP BY neighborhood
SELECT count(*) ,  neighborhood FROM store GROUP BY neighborhood
SELECT t1.name ,  sum(t2.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id  =  t2.store_id GROUP BY t2.store_id ORDER BY sum(t2.quantity) DESC LIMIT 1
SELECT t1.name ,  sum(t2.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id  =  t2.store_id GROUP BY t2.store_id ORDER BY sum(t2.quantity) DESC LIMIT 1
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT name FROM store WHERE store_id NOT IN (SELECT store_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT model FROM headphone WHERE headphone_id NOT IN (SELECT headphone_id FROM stock)
SELECT t1.model FROM headphone AS t1 JOIN stock AS t2 ON t1.headphone_id  =  t2.headphone_id GROUP BY t1.model ORDER BY sum(t2.quantity) DESC LIMIT 1
SELECT t1.model FROM headphone AS t1 JOIN stock AS t2 ON t1.headphone_id  =  t2.headphone_id GROUP BY t1.model ORDER BY sum(t2.quantity) DESC LIMIT 1
SELECT sum(t2.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id  =  t2.store_id WHERE t1.name  =  'Woodman'
SELECT sum(t2.quantity) FROM store AS t1 JOIN stock AS t2 ON t1.store_id  =  t2.store_id WHERE t1.name  =  'Woodman'
SELECT Neighborhood FROM store EXCEPT SELECT t1.Neighborhood FROM store AS t1 JOIN stock AS t2 ON t1.store_id  =  t2.store_id
SELECT Neighborhood FROM store EXCEPT SELECT t1.Neighborhood FROM store AS t1 JOIN stock AS t2 ON t1.store_id  =  t2.store_id
SELECT count(*) FROM Author
SELECT count(*) FROM Author
SELECT count(*) FROM Paper
SELECT count(*) FROM Paper
SELECT count(*) FROM Affiliation
SELECT count(*) FROM Affiliation
"SELECT count(*) FROM Paper WHERE venue  =  ""NAACL"" AND YEAR  =  2000"
"SELECT count(*) FROM Paper WHERE venue  =  ""NAACL"" AND YEAR  =  2000"
"SELECT count(DISTINCT T1.paper_id) FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T3.name LIKE ""Columbia University"" AND T1.year  =  2009"
"SELECT count(DISTINCT T1.paper_id) FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T3.name LIKE ""Columbia University"" AND T1.year  =  2009"
SELECT DISTINCT name ,  address FROM Affiliation
SELECT DISTINCT name ,  address FROM Affiliation
SELECT DISTINCT venue ,  YEAR FROM paper ORDER BY YEAR
SELECT DISTINCT venue ,  YEAR FROM paper ORDER BY YEAR
"SELECT DISTINCT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T3.name  =  ""Harvard University"""
"SELECT DISTINCT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T3.name  =  ""Harvard University"""
"SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T3.author_id  =  T2.author_id WHERE T3.name LIKE ""%Mckeown%"""
"SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T3.author_id  =  T2.author_id WHERE T3.name LIKE ""%Mckeown%"""
"SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T3.name LIKE ""Stanford University"" INTERSECT SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T3.name LIKE ""Columbia University"""
"SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T3.name LIKE ""Stanford University"" INTERSECT SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T3.name LIKE ""Columbia University"""
"SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE T3.name LIKE ""%Mckeown ,  Kathleen%"" INTERSECT SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE T3.name LIKE ""%Rambow ,  Owen%"""
"SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE T3.name LIKE ""%Mckeown ,  Kathleen%"" INTERSECT SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE T3.name LIKE ""%Rambow ,  Owen%"""
"SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE T3.name LIKE ""%Mckeown%"" EXCEPT SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE T3.name LIKE ""%Rambow%"""
"SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE T3.name LIKE ""%Mckeown%"" EXCEPT SELECT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE T3.name LIKE ""%Rambow%"""
"SELECT DISTINCT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE  T3.name LIKE ""%Mckeown ,  Kathleen%"" OR T3.name LIKE ""%Rambow ,  Owen%"""
"SELECT DISTINCT T1.title ,  T1.paper_id FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id WHERE  T3.name LIKE ""%Mckeown ,  Kathleen%"" OR T3.name LIKE ""%Rambow ,  Owen%"""
SELECT T1.name ,  count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id  =  T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC
SELECT T1.name ,  count(*) FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id  =  T2.author_id GROUP BY T1.author_id ORDER BY count(*) DESC
SELECT T1.name FROM Affiliation AS T1 JOIN Author_list AS T2 ON T1.affiliation_id  =  T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) DESC
SELECT T1.name FROM Affiliation AS T1 JOIN Author_list AS T2 ON T1.affiliation_id  =  T2.affiliation_id GROUP BY T1.affiliation_id ORDER BY count(*) DESC
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id  =  T2.author_id GROUP BY T1.author_id HAVING count(*)  >  50
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id  =  T2.author_id GROUP BY T1.author_id HAVING count(*)  >  50
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id  =  T2.author_id GROUP BY T1.author_id HAVING count(*)  =  1
SELECT T1.name FROM Author AS T1 JOIN Author_list AS T2 ON T1.author_id  =  T2.author_id GROUP BY T1.author_id HAVING count(*)  =  1
SELECT venue ,  YEAR FROM paper GROUP BY venue ,  YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue ,  YEAR FROM paper GROUP BY venue ,  YEAR ORDER BY count(*) DESC LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
SELECT venue FROM paper GROUP BY venue ORDER BY count(*) LIMIT 1
"SELECT count(*) FROM Citation WHERE cited_paper_id  =  ""A00-1002"""
"SELECT count(*) FROM Citation WHERE cited_paper_id  =  ""A00-1002"""
"SELECT count(*) FROM Citation WHERE paper_id  =  ""D12-1027"""
"SELECT count(*) FROM Citation WHERE paper_id  =  ""D12-1027"""
SELECT paper_id ,  count(*) FROM Citation GROUP BY cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id ,  count(*) FROM Citation GROUP BY cited_paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM Citation AS T1 JOIN Paper AS T2 ON T2.paper_id  =  T1.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM Citation AS T1 JOIN Paper AS T2 ON T2.paper_id  =  T1.paper_id GROUP BY T1.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT paper_id ,  count(*) FROM Citation GROUP BY cited_paper_id ORDER BY count(*) DESC LIMIT 10
SELECT paper_id ,  count(*) FROM Citation GROUP BY cited_paper_id ORDER BY count(*) DESC LIMIT 10
"select count(*) from citation as t1 join author_list as t2 on t1.cited_paper_id  =  t2.paper_id join author as t3 on t2.author_id  =  t3.author_id where t3.name = ""mckeown ,  kathleen"""
"select count(*) from citation as t1 join author_list as t2 on t1.cited_paper_id  =  t2.paper_id join author as t3 on t2.author_id  =  t3.author_id where t3.name = ""mckeown ,  kathleen"""
"select count(*) from citation as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id join author as t3 on t2.author_id  =  t3.author_id where t3.name = ""mckeown ,  kathleen"""
"select count(*) from citation as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id join author as t3 on t2.author_id  =  t3.author_id where t3.name = ""mckeown ,  kathleen"""
SELECT T3.name ,  count(*) FROM Citation AS T1 JOIN Author_list AS T2 ON T1.cited_paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.name ,  count(*) FROM Citation AS T1 JOIN Author_list AS T2 ON T1.cited_paper_id  =  T2.paper_id JOIN Author AS T3 ON T2.author_id  =  T3.author_id GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
"select distinct t1.venue ,  t1.year from paper as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id join author as t3 on t2.author_id  =  t3.author_id where t3.name = ""mckeown ,  kathleen"""
"select distinct t1.venue ,  t1.year from paper as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id join author as t3 on t2.author_id  =  t3.author_id where t3.name = ""mckeown ,  kathleen"""
"select distinct t1.venue ,  t1.year from paper as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id join affiliation as t3 on t2.affiliation_id  =  t3.affiliation_id where t3.name = ""columbia university"""
"select distinct t1.venue ,  t1.year from paper as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id join affiliation as t3 on t2.affiliation_id  =  t3.affiliation_id where t3.name = ""columbia university"""
SELECT T3.name FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T3.author_id  =  T2.author_id WHERE T1.year  =  2009 GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.name FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Author AS T3 ON T3.author_id  =  T2.author_id WHERE T1.year  =  2009 GROUP BY T2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.name FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T1.year  =  2009 GROUP BY T2.affiliation_id ORDER BY count(*) DESC LIMIT 3
SELECT T3.name FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T1.year  =  2009 GROUP BY T2.affiliation_id ORDER BY count(*) DESC LIMIT 3
"select count(distinct t1.paper_id) from paper as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id join affiliation as t3 on t2.affiliation_id  =  t3.affiliation_id where t1.year  <=  2009 and t3.name = ""columbia university"""
"select count(distinct t1.paper_id) from paper as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id join affiliation as t3 on t2.affiliation_id  =  t3.affiliation_id where t1.year  <=  2009 and t3.name = ""columbia university"""
"SELECT count(DISTINCT T1.paper_id) FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T1.year  >=  2000 AND T1.year  <=  2009 AND T3.name LIKE ""Stanford University"""
"SELECT count(DISTINCT T1.paper_id) FROM Paper AS T1 JOIN Author_list AS T2 ON T1.paper_id  =  T2.paper_id JOIN Affiliation AS T3 ON T2.affiliation_id  =  T3.affiliation_id WHERE T1.year  >=  2000 AND T1.year  <=  2009 AND T3.name LIKE ""Stanford University"""
SELECT T2.title FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id  =  T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id  =  T2.paper_id GROUP BY T2.paper_id ORDER BY count(*) DESC LIMIT 1
"select count (distinct t2.author_id) from author_list as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id and t1.author_id != t2.author_id join author as t3 on t1.author_id  =  t3.author_id where t3.name = ""mckeown ,  kathleen"""
"select count (distinct t2.author_id) from author_list as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id and t1.author_id != t2.author_id join author as t3 on t1.author_id  =  t3.author_id where t3.name = ""mckeown ,  kathleen"""
"select t4.name from author_list as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id and t1.author_id != t2.author_id join author as t3 on t1.author_id  =  t3.author_id join author as t4 on t2.author_id  =  t4.author_id where t3.name = ""mckeown ,  kathleen"" group by t2.author_id order by count(*) desc limit 1"
"select t4.name from author_list as t1 join author_list as t2 on t1.paper_id  =  t2.paper_id and t1.author_id != t2.author_id join author as t3 on t1.author_id  =  t3.author_id join author as t4 on t2.author_id  =  t4.author_id where t3.name = ""mckeown ,  kathleen"" group by t2.author_id order by count(*) desc limit 1"
"SELECT paper_id FROM Paper WHERE title LIKE ""%translation%"""
"SELECT paper_id FROM Paper WHERE title LIKE ""%translation%"""
SELECT paper_id ,  title FROM Paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM Citation)
SELECT paper_id ,  title FROM Paper WHERE paper_id NOT IN (SELECT cited_paper_id FROM Citation)
"SELECT T1.name FROM Affiliation AS T1 JOIN Author_list AS T2 ON T1.affiliation_id  =  T2.affiliation_id WHERE T1.address LIKE ""%China%"" GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1"
"SELECT T1.name FROM Affiliation AS T1 JOIN Author_list AS T2 ON T1.affiliation_id  =  T2.affiliation_id WHERE T1.address LIKE ""%China%"" GROUP BY T1.affiliation_id ORDER BY count(*) DESC LIMIT 1"
SELECT count(*) ,  venue ,  YEAR FROM Paper GROUP BY venue ,  YEAR
SELECT count(*) ,  venue ,  YEAR FROM Paper GROUP BY venue ,  YEAR
SELECT count(DISTINCT T2.paper_id) ,  T1.name FROM Affiliation AS T1 JOIN Author_list AS T2 ON T1.affiliation_id  =  T2.affiliation_id GROUP BY T1.affiliation_id
SELECT count(DISTINCT T2.paper_id) ,  T1.name FROM Affiliation AS T1 JOIN Author_list AS T2 ON T1.affiliation_id  =  T2.affiliation_id GROUP BY T1.affiliation_id
SELECT T2.title FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id  =  T2.paper_id GROUP BY T1.cited_paper_id HAVING count(*)  >  50
SELECT T2.title FROM Citation AS T1 JOIN Paper AS T2 ON T1.cited_paper_id  =  T2.paper_id GROUP BY T1.cited_paper_id HAVING count(*)  >  50
SELECT count(*) FROM Author WHERE Author_id NOT IN ( SELECT T2.author_id FROM Citation AS T1 JOIN Author_list AS T2 ON T1.cited_paper_id  =  T2.paper_id GROUP BY T1.cited_paper_id HAVING count(DISTINCT T1.paper_id)  >  50)
SELECT count(*) FROM Author WHERE Author_id NOT IN ( SELECT T2.author_id FROM Citation AS T1 JOIN Author_list AS T2 ON T1.cited_paper_id  =  T2.paper_id GROUP BY T1.cited_paper_id HAVING count(DISTINCT T1.paper_id)  >  50)
"SELECT name FROM Author WHERE author_id IN (SELECT T1.author_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id  =  T2.paper_id WHERE T2.venue  =  ""ACL"" AND T2.year  =  2009 INTERSECT SELECT T1.author_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id  =  T2.paper_id WHERE T2.venue  =  ""NAACL"" AND T2.year  =  2009)"
"SELECT name FROM Author WHERE author_id IN (SELECT T1.author_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id  =  T2.paper_id WHERE T2.venue  =  ""ACL"" AND T2.year  =  2009 INTERSECT SELECT T1.author_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id  =  T2.paper_id WHERE T2.venue  =  ""NAACL"" AND T2.year  =  2009)"
"SELECT name FROM Author WHERE author_id NOT IN (SELECT T1.author_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id  =  T2.paper_id WHERE T2.venue  =  ""ACL"")"
"SELECT name FROM Author WHERE author_id NOT IN (SELECT T1.author_id FROM Author_list AS T1 JOIN Paper AS T2 ON T1.paper_id  =  T2.paper_id WHERE T2.venue  =  ""ACL"")"
SELECT count(*) FROM conference
SELECT count(*) FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT DISTINCT conference_name FROM conference
SELECT conference_name ,  YEAR ,  LOCATION FROM conference
SELECT conference_name ,  YEAR ,  LOCATION FROM conference
SELECT conference_name ,  count(*) FROM conference GROUP BY conference_name
SELECT conference_name ,  count(*) FROM conference GROUP BY conference_name
SELECT YEAR ,  count(*) FROM conference GROUP BY YEAR
SELECT YEAR ,  count(*) FROM conference GROUP BY YEAR
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT YEAR FROM conference GROUP BY YEAR ORDER BY count(*) LIMIT 1
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*)  >=  2
SELECT LOCATION FROM conference GROUP BY LOCATION HAVING count(*)  >=  2
SELECT institution_name ,  LOCATION ,  founded FROM institution
SELECT institution_name ,  LOCATION ,  founded FROM institution
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT count(*) FROM institution WHERE founded BETWEEN 1850 AND 1900
SELECT institution_name ,  LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT institution_name ,  LOCATION FROM institution ORDER BY founded DESC LIMIT 1
SELECT T1.institution_name ,  count(*) FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id  =  T2.institution_id WHERE T1.founded  >  1800 GROUP BY T2.institution_id
select t1.institution_name ,  count(*) from institution as t1 join staff as t2 on t1.institution_id  =  t2.institution_id where t1.founded  >  1800 group by t2.institution_id
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT institution_name FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM staff)
SELECT name FROM staff WHERE age  >  (SELECT avg(age) FROM staff)
SELECT name FROM staff WHERE age  >  (SELECT avg(age) FROM staff)
SELECT max(age) ,  min(age) FROM staff
SELECT max(age) ,  min(age) FROM staff
"SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T2.staff_id  =  T3.staff_id WHERE T3.nationality  =  ""Canada"""
"SELECT T1.conference_name FROM conference AS T1 JOIN conference_participation AS T2 ON T1.conference_id = T2.conference_id JOIN staff AS T3 ON T2.staff_id  =  T3.staff_id WHERE T3.nationality  =  ""Canada"""
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.role  =  'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.role  =  'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.role  =  'Speaker' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.role  =  'Sponsor'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 JOIN Conference AS T3 ON T1.staff_id  =  T2.staff_id AND T2.conference_id  =  T3.conference_id WHERE T3.Conference_name  =  'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 JOIN conference AS T3 ON T1.staff_id  =  T2.staff_id AND T2.conference_id  =  T3.conference_id WHERE T3.Conference_name  =  'Naccl'
SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 JOIN Conference AS T3 ON T1.staff_id  =  T2.staff_id AND T2.conference_id  =  T3.conference_id WHERE T3.Conference_name  =  'ACL' INTERSECT SELECT T1.name FROM staff AS T1 JOIN conference_participation AS T2 JOIN conference AS T3 ON T1.staff_id  =  T2.staff_id AND T2.conference_id  =  T3.conference_id WHERE T3.Conference_name  =  'Naccl'
SELECT DISTINCT T1.name FROM staff AS T1 JOIN conference_participation AS T2 JOIN Conference AS T3 ON T1.staff_id  =  T2.staff_id AND T2.conference_id  =  T3.conference_id WHERE T3.year  =  2003 OR T3.year  =  2004
SELECT DISTINCT T1.name FROM staff AS T1 JOIN conference_participation AS T2 JOIN Conference AS T3 ON T1.staff_id  =  T2.staff_id AND T2.conference_id  =  T3.conference_id WHERE T3.year  =  2003 OR T3.year  =  2004
SELECT T1.conference_name ,  T1.year ,  count(*) FROM Conference AS T1 JOIN Conference_participation AS T2 ON T1.conference_id  =  T2.conference_id GROUP BY T2.conference_id
SELECT T1.conference_name ,  T1.year ,  count(*) FROM Conference AS T1 JOIN Conference_participation AS T2 ON T1.conference_id  =  T2.conference_id GROUP BY T2.conference_id
SELECT T1.conference_name FROM Conference AS T1 JOIN Conference_participation AS T2 ON T1.conference_id  =  T2.conference_id GROUP BY T2.conference_id ORDER BY count(*) DESC LIMIT 2
SELECT T1.conference_name FROM Conference AS T1 JOIN Conference_participation AS T2 ON T1.conference_id  =  T2.conference_id GROUP BY T2.conference_id ORDER BY count(*) DESC LIMIT 2
"SELECT name ,  nationality FROM staff WHERE staff_id NOT IN (SELECT T2.staff_id FROM Conference AS T1 JOIN Conference_participation AS T2 ON T1.conference_id  =  T2.conference_id WHERE T1.Conference_Name  =  ""ACL"")"
"SELECT name ,  nationality FROM staff WHERE staff_id NOT IN (SELECT T2.staff_id FROM Conference AS T1 JOIN Conference_participation AS T2 ON T1.conference_id  =  T2.conference_id WHERE T1.Conference_Name  =  ""ACL"")"
SELECT T1.Institution_Name ,  T1.location FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id  =  T2.institution_id WHERE T2.staff_id NOT IN (SELECT T4.staff_id FROM Conference AS T3 JOIN Conference_participation AS T4 ON T3.conference_id  =  T4.conference_id WHERE T3.year  =  2004)
SELECT T1.Institution_Name ,  T1.location FROM institution AS T1 JOIN staff AS T2 ON T1.institution_id  =  T2.institution_id WHERE T2.staff_id NOT IN (SELECT T4.staff_id FROM Conference AS T3 JOIN Conference_participation AS T4 ON T3.conference_id  =  T4.conference_id WHERE T3.year  =  2004)
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills ORDER BY age DESC LIMIT 1
SELECT pilot_name FROM PilotSkills WHERE age  <  (SELECT avg(age) FROM PilotSkills) ORDER BY age
SELECT pilot_name FROM PilotSkills WHERE age  <  (SELECT avg(age) FROM PilotSkills) ORDER BY age
SELECT * FROM PilotSkills WHERE age  <  30
select * from pilotskills where age  <  30
SELECT pilot_name FROM PilotSkills WHERE age  <  35 AND plane_name  =  'Piper Cub'
SELECT pilot_name FROM PilotSkills WHERE age  <  35 AND plane_name  =  'Piper Cub'
SELECT LOCATION FROM hangar WHERE plane_name  =  'F-14 Fighter'
SELECT LOCATION FROM hangar WHERE plane_name  =  'F-14 Fighter'
SELECT count(DISTINCT LOCATION) FROM hangar
SELECT count(DISTINCT LOCATION) FROM hangar
SELECT plane_name FROM pilotskills WHERE pilot_name  =  'Jones'  AND age  =  32
SELECT plane_name FROM pilotskills WHERE pilot_name  =  'Jones'  AND age  =  32
SELECT count(*) FROM pilotskills WHERE age  >  40
SELECT count(*) FROM pilotskills WHERE age  >  40
SELECT count(*) FROM pilotskills WHERE age  <  35 AND plane_name  =  'B-52 Bomber'
SELECT count(*) FROM pilotskills WHERE age  <  35 AND plane_name  =  'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name  =  'Piper Cub' ORDER BY age LIMIT 1
SELECT pilot_name FROM pilotskills WHERE plane_name  =  'Piper Cub' ORDER BY age LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) DESC LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) LIMIT 1
SELECT plane_name FROM pilotskills GROUP BY plane_name ORDER BY count(*) LIMIT 1
SELECT count(DISTINCT T1.pilot_name) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T2.location  =  'Chicago'
SELECT count(DISTINCT T1.pilot_name) FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T2.location  =  'Chicago'
SELECT plane_name FROM pilotskills WHERE pilot_name  =  'Smith' AND age  =  41
SELECT plane_name FROM pilotskills WHERE pilot_name  =  'Smith' AND age  =  41
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(DISTINCT plane_name) FROM pilotskills
SELECT count(plane_name) FROM pilotskills WHERE pilot_name  =  'Smith'
SELECT count(plane_name) FROM pilotskills WHERE pilot_name  =  'Smith'
SELECT count(plane_name) FROM pilotskills WHERE age  >  40
SELECT count(plane_name) FROM pilotskills WHERE age  >  40
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills WHERE age BETWEEN 30 AND 40 ORDER BY age
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT pilot_name FROM pilotskills ORDER BY age DESC
SELECT LOCATION FROM hangar ORDER BY plane_name
SELECT LOCATION FROM hangar ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT DISTINCT plane_name FROM pilotskills ORDER BY plane_name
SELECT count(pilot_name) FROM pilotskills ORDER BY age  >  40 OR age  <  30
SELECT count(pilot_name) FROM pilotskills ORDER BY age  >  40 OR age  <  30
SELECT pilot_name ,  age FROM pilotskills WHERE plane_name  =  'Piper Cub' AND age  >  35 UNION SELECT pilot_name ,  age FROM pilotskills WHERE plane_name  =  'F-14 Fighter' AND age  <  30
SELECT pilot_name ,  age FROM pilotskills WHERE plane_name  =  'Piper Cub' AND age  >  35 UNION SELECT pilot_name ,  age FROM pilotskills WHERE plane_name  =  'F-14 Fighter' AND age  <  30
SELECT pilot_name FROM pilotskills WHERE plane_name  =  'Piper Cub' EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name  =  'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name  =  'Piper Cub' EXCEPT SELECT pilot_name FROM pilotskills WHERE plane_name  =  'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name  =  'Piper Cub' INTERSECT SELECT pilot_name FROM pilotskills WHERE plane_name  =  'B-52 Bomber'
SELECT pilot_name FROM pilotskills WHERE plane_name  =  'Piper Cub' INTERSECT SELECT pilot_name FROM pilotskills WHERE plane_name  =  'B-52 Bomber'
SELECT avg(age) ,  min(age) FROM pilotskills
SELECT avg(age) ,  min(age) FROM pilotskills
"SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T2.location  =  ""Austin"" INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T2.LOCATION  =  ""Boston"""
"SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T2.location  =  ""Austin"" INTERSECT SELECT T1.pilot_name FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T2.LOCATION  =  ""Boston"""
SELECT pilot_name FROM pilotskills WHERE plane_name  =  'Piper Cub' OR plane_name  =  'F-14 Fighter'
SELECT pilot_name FROM pilotskills WHERE plane_name  =  'Piper Cub' OR plane_name  =  'F-14 Fighter'
SELECT avg(age) ,  plane_name FROM pilotskills GROUP BY plane_name
SELECT avg(age) ,  plane_name FROM pilotskills GROUP BY plane_name
SELECT count(*) ,  plane_name FROM pilotskills GROUP BY plane_name
SELECT count(*) ,  plane_name FROM pilotskills GROUP BY plane_name
SELECT pilot_name ,  plane_name ,  max(age) FROM pilotskills GROUP BY plane_name ORDER BY plane_name
SELECT pilot_name ,  plane_name ,  max(age) FROM pilotskills GROUP BY plane_name ORDER BY plane_name
SELECT pilot_name ,  plane_name ,  max(age) FROM pilotskills GROUP BY plane_name
SELECT pilot_name ,  plane_name ,  max(age) FROM pilotskills GROUP BY plane_name
SELECT max(age) ,  pilot_name FROM pilotskills GROUP BY pilot_name
SELECT max(age) ,  pilot_name FROM pilotskills GROUP BY pilot_name
SELECT count(T1.pilot_name) ,  avg(T1.age) ,  T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name GROUP BY T2.location
SELECT count(T1.pilot_name) ,  avg(T1.age) ,  T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name GROUP BY T2.location
SELECT count(*) ,  plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age)  <  35
SELECT count(*) ,  plane_name FROM pilotskills GROUP BY plane_name HAVING avg(age)  <  35
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T1.age  =  (SELECT min(age) FROM pilotskills)
SELECT T2.location FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T1.age  =  (SELECT min(age) FROM pilotskills)
"SELECT T1.pilot_name ,  T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T2.location  =  ""Austin"""
"SELECT T1.pilot_name ,  T1.age FROM pilotskills AS T1 JOIN hangar AS T2 ON T1.plane_name  =  T2.plane_name WHERE T2.location  =  ""Austin"""
SELECT pilot_name FROM pilotskills WHERE age  >  (SELECT min(age) FROM pilotskills WHERE plane_name  =  'Piper Cub') ORDER BY pilot_name
SELECT pilot_name FROM pilotskills WHERE age  >  (SELECT min(age) FROM pilotskills WHERE plane_name  =  'Piper Cub') ORDER BY pilot_name
SELECT count(*) FROM pilotskills WHERE age  <  (SELECT min(age) FROM pilotskills WHERE plane_name  =  'F-14 Fighter')
SELECT count(*) FROM pilotskills WHERE age  <  (SELECT min(age) FROM pilotskills WHERE plane_name  =  'F-14 Fighter')
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT DISTINCT plane_name FROM pilotskills WHERE plane_name LIKE '%Bomber%'
SELECT count(pilot_name) FROM pilotskills WHERE age  >  (SELECT min(age) FROM pilotskills WHERE plane_name  =  'Piper Cub')
SELECT count(pilot_name) FROM pilotskills WHERE age  >  (SELECT min(age) FROM pilotskills WHERE plane_name  =  'Piper Cub')
SELECT name FROM district ORDER BY Area_km DESC LIMIT 1
SELECT area_km ,  Government_website FROM district ORDER BY Population LIMIT 1
SELECT name ,  population FROM district WHERE area_km  >  (SELECT avg(area_km) FROM district)
SELECT max(area_km) ,  avg(area_km) FROM district
SELECT sum(population) FROM district ORDER BY area_km DESC LIMIT 3
SELECT name ,  Government_website ,  district_id FROM district ORDER BY Population
"SELECT name FROM district WHERE Government_website LIKE ""%gov%"""
SELECT district_id ,  name FROM district WHERE area_km  >  3000 OR population  >  4000
SELECT name ,  speach_title FROM spokesman
SELECT avg(points) ,  avg(age) FROM spokesman WHERE rank_position  =  1
SELECT name ,  points FROM spokesman WHERE age  <  40
SELECT name FROM spokesman ORDER BY age DESC LIMIT 1
SELECT name FROM spokesman WHERE points  <  (SELECT avg(points) FROM spokesman)
SELECT t1.name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.District_ID  =  t2.District_ID GROUP BY t2.District_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM spokesman AS t1 JOIN spokesman_district AS t2 ON t1.Spokesman_ID  =  t2.Spokesman_ID WHERE t2.start_year  <  2004
SELECT t1.name ,  count(*) FROM district AS t1 JOIN spokesman_district AS t2 ON t1.District_ID  =  t2.District_ID GROUP BY t2.District_ID
SELECT t3.name FROM spokesman AS t1 JOIN spokesman_district AS t2 ON t1.Spokesman_ID  =  t2.Spokesman_ID JOIN district AS t3 ON t3.district_id  =  t2.district_id WHERE t1.rank_position  =  1 INTERSECT SELECT t3.name FROM spokesman AS t1 JOIN spokesman_district AS t2 ON t1.Spokesman_ID  =  t2.Spokesman_ID JOIN district AS t3 ON t3.district_id  =  t2.district_id WHERE t1.rank_position  =  2
SELECT t1.name FROM district AS t1 JOIN spokesman_district AS t2 ON t1.District_ID  =  t2.District_ID GROUP BY t2.District_ID HAVING count(*)  >  1
SELECT count(*) FROM district WHERE district_id NOT IN (SELECT district_id FROM spokesman_district)
SELECT name FROM spokesman WHERE Spokesman_ID NOT IN (SELECT Spokesman_ID FROM spokesman_district)
SELECT sum(population) ,  avg(population) FROM district WHERE district_id IN (SELECT district_id FROM spokesman_district)
select title from sculptures order by year desc limit 1
select title from sculptures order by year desc limit 1
select title ,  location from paintings order by year limit 1
SELECT title ,  LOCATION ,  YEAR FROM paintings ORDER BY YEAR LIMIT 1
"SELECT title FROM sculptures WHERE LOCATION  =  ""Gallery 226"""
"SELECT title FROM sculptures WHERE LOCATION  =  ""Gallery 226"""
SELECT title ,  LOCATION FROM paintings
SELECT title ,  LOCATION FROM paintings
SELECT title ,  LOCATION FROM sculptures
SELECT title ,  LOCATION FROM sculptures
SELECT medium FROM paintings WHERE paintingID  =  80
select medium from paintings where paintingid  =  80
SELECT lname ,  fname FROM artists WHERE birthYear  >  1850
SELECT lname ,  fname FROM artists WHERE birthYear  >  1850
"SELECT title ,  YEAR FROM sculptures WHERE LOCATION != ""Gallery 226"""
"SELECT title ,  YEAR FROM sculptures WHERE LOCATION != ""Gallery 226"""
SELECT DISTINCT T1.lname ,  T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID WHERE T2.year  <  1900
SELECT DISTINCT T1.lname ,  T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID WHERE T2.year  <  1900
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID WHERE T2.year  >  1920
SELECT DISTINCT T1.birthYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID WHERE T2.year  >  1920
SELECT lname ,  fname FROM artists ORDER BY deathYear - birthYear DESC LIMIT 1
SELECT lname ,  fname FROM artists ORDER BY deathYear - birthYear DESC LIMIT 1
SELECT deathYear - birthYear FROM artists ORDER BY deathYear - birthYear LIMIT 1
SELECT deathYear - birthYear FROM artists ORDER BY deathYear - birthYear LIMIT 1
SELECT fname  ,  deathYear - birthYear FROM artists ORDER BY deathYear - birthYear DESC LIMIT 1
SELECT fname  ,  deathYear - birthYear FROM artists ORDER BY deathYear - birthYear DESC LIMIT 1
"SELECT count(*) FROM paintings WHERE LOCATION  =  ""Gallery 240"""
"SELECT count(*) FROM paintings WHERE LOCATION  =  ""Gallery 240"""
select count(*) from artists as t1 join paintings as t2 on t1.artistid  =  t2.painterid group by t2.painterid order by t1.deathyear - t1.birthyear desc limit 1
select count(*) from artists as t1 join paintings as t2 on t1.artistid  =  t2.painterid group by t2.painterid order by t1.deathyear - t1.birthyear desc limit 1
"SELECT T2.title ,   T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T1.fname  =  ""Mary"""
"SELECT T2.title ,   T2.year FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T1.fname  =  ""Mary"""
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T1.birthYear  <  1850
SELECT T2.width_mm FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T1.birthYear  <  1850
"SELECT T2.location ,   T2.medium FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T1.fname  =  ""Pablo"""
"SELECT T2.location ,   T2.medium FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T1.fname  =  ""Pablo"""
SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID INTERSECT SELECT T3.lname ,  T3.fname FROM artists AS T3 JOIN paintings AS T4 ON T3.artistID  =  T4.painterID
SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID INTERSECT SELECT T3.lname ,  T3.fname FROM artists AS T3 JOIN paintings AS T4 ON T3.artistID  =  T4.painterID
"SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.medium  =  ""oil"" INTERSECT SELECT T3.lname ,  T3.fname FROM artists AS T3 JOIN paintings AS T4 ON T3.artistID  =  T4.painterID WHERE T4.medium  =  ""lithograph"""
"SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.medium  =  ""oil"" INTERSECT SELECT T3.lname ,  T3.fname FROM artists AS T3 JOIN paintings AS T4 ON T3.artistID  =  T4.painterID WHERE T4.medium  =  ""lithograph"""
"SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.year  =  1884 AND mediumOn  =  ""canvas"""
"SELECT T1.birthYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.year  =  1884 AND mediumOn  =  ""canvas"""
"SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.medium  =  ""oil"" AND LOCATION  =  ""Gallery 241"""
"SELECT DISTINCT T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.medium  =  ""oil"" AND LOCATION  =  ""Gallery 241"""
SELECT count(*) ,  medium FROM paintings GROUP BY medium
SELECT count(*) ,  medium FROM paintings GROUP BY medium
SELECT avg(height_mm) ,  medium FROM paintings GROUP BY medium
SELECT avg(height_mm) ,  medium FROM paintings GROUP BY medium
SELECT count(*) ,  LOCATION FROM paintings WHERE YEAR  <  1900 GROUP BY LOCATION
SELECT count(*) ,  LOCATION FROM paintings WHERE YEAR  <  1900 GROUP BY LOCATION
"SELECT title FROM paintings WHERE YEAR  >  1910 AND medium  =  ""oil"""
"SELECT title FROM paintings WHERE YEAR  >  1910 AND medium  =  ""oil"""
"SELECT DISTINCT painterID FROM paintings WHERE medium  =  ""oil"" AND LOCATION  =  ""Gallery 240"""
"SELECT DISTINCT painterID FROM paintings WHERE medium  =  ""oil"" AND LOCATION  =  ""Gallery 240"""
"SELECT DISTINCT title FROM paintings WHERE height_mm  >  (SELECT min(height_mm) FROM paintings WHERE mediumOn  =  ""canvas"")"
"SELECT DISTINCT title FROM paintings WHERE height_mm  >  (SELECT min(height_mm) FROM paintings WHERE mediumOn  =  ""canvas"")"
"SELECT paintingID FROM paintings WHERE YEAR  <  (SELECT max(YEAR) FROM paintings WHERE LOCATION  =  ""Gallery 240"")"
"SELECT paintingID FROM paintings WHERE YEAR  <  (SELECT max(YEAR) FROM paintings WHERE LOCATION  =  ""Gallery 240"")"
SELECT paintingID FROM paintings ORDER BY YEAR LIMIT 1
SELECT paintingID FROM paintings ORDER BY YEAR LIMIT 1
"SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID WHERE T2.title LIKE ""%female%"""
"SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID WHERE T2.title LIKE ""%female%"""
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY title
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT DISTINCT title FROM paintings ORDER BY height_mm
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950
SELECT title FROM paintings WHERE YEAR BETWEEN 1900 AND 1950 UNION SELECT title FROM sculptures WHERE YEAR BETWEEN 1900 AND 1950
SELECT T2.title FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T1.artistID  =  222 UNION SELECT T4.title FROM artists AS T3 JOIN sculptures AS T4 ON T3.artistID  =  T4.sculptorID WHERE T3.artistID  =  222
SELECT T2.title FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T1.artistID  =  222 UNION SELECT T4.title FROM artists AS T3 JOIN sculptures AS T4 ON T3.artistID  =  T4.sculptorID WHERE T3.artistID  =  222
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.year  <  1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.artistID FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.year  <  1900 GROUP BY T1.artistID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) DESC LIMIT 1
SELECT title FROM paintings WHERE width_mm  <  600 OR height_mm  >  800
SELECT title FROM paintings WHERE width_mm  <  600 OR height_mm  >  800
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR  < 1885 OR YEAR  >  1930
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR  < 1885 OR YEAR  >  1930
SELECT paintingID FROM paintings WHERE height_mm  >  500 AND height_mm  <  2000
SELECT paintingID FROM paintings WHERE height_mm  >  500 AND height_mm  <  2000
"SELECT DISTINCT LOCATION FROM paintings WHERE mediumOn  =  ""panel"" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE mediumOn  =  ""canvas"""
"SELECT DISTINCT LOCATION FROM paintings WHERE mediumOn  =  ""panel"" INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE mediumOn  =  ""canvas"""
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR  <  1885 INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE YEAR  >  1930
SELECT DISTINCT LOCATION FROM paintings WHERE YEAR  <  1885 INTERSECT SELECT DISTINCT LOCATION FROM paintings WHERE YEAR  >  1930
"SELECT avg(height_mm) ,  avg(width_mm) FROM paintings WHERE medium  =  ""oil"" AND LOCATION  =  ""Gallery 241"""
"SELECT avg(height_mm) ,  avg(width_mm) FROM paintings WHERE medium  =  ""oil"" AND LOCATION  =  ""Gallery 241"""
SELECT max(height_mm) ,  paintingID FROM paintings WHERE YEAR  <  1900
SELECT max(height_mm) ,  paintingID FROM paintings WHERE YEAR  <  1900
SELECT max(height_mm) ,  max(width_mm) ,  YEAR FROM paintings GROUP BY YEAR ORDER BY YEAR
SELECT max(height_mm) ,  max(width_mm) ,  YEAR FROM paintings GROUP BY YEAR ORDER BY YEAR
SELECT avg(height_mm) ,  avg(width_mm) ,  painterID FROM paintings GROUP BY painterID ORDER BY title
SELECT avg(height_mm) ,  avg(width_mm) ,  painterID FROM paintings GROUP BY painterID ORDER BY title
SELECT T1.fname ,  count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID GROUP BY T2.painterID HAVING count(*)  >=  2
SELECT T1.fname ,  count(*) FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID GROUP BY T2.painterID HAVING count(*)  >=  2
SELECT T1.deathYear FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID GROUP BY T2.painterID HAVING count(*)  <=  3
select t1.deathyear from artists as t1 join paintings as t2 on t1.artistid  =  t2.painterid group by t2.painterid having count(*)  <  4
SELECT T1.deathYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) LIMIT 1
SELECT T1.deathYear FROM artists AS T1 JOIN sculptures AS T2 ON T1.artistID  =  T2.sculptorID GROUP BY T2.sculptorID ORDER BY count(*) LIMIT 1
SELECT paintingID ,  height_mm FROM paintings WHERE LOCATION  =  'Gallery 240' ORDER BY width_mm DESC LIMIT 1
SELECT paintingID ,  height_mm FROM paintings WHERE LOCATION  =  'Gallery 240' ORDER BY width_mm DESC LIMIT 1
SELECT paintingID FROM paintings WHERE YEAR  <   (SELECT min(YEAR) FROM paintings WHERE LOCATION  =  'Gallery 240')
SELECT paintingID FROM paintings WHERE YEAR  <   (SELECT min(YEAR) FROM paintings WHERE LOCATION  =  'Gallery 240')
SELECT paintingID FROM paintings WHERE height_mm  >   (SELECT max(height_mm) FROM paintings WHERE YEAR  >  1900)
SELECT paintingID FROM paintings WHERE height_mm  >   (SELECT max(height_mm) FROM paintings WHERE YEAR  >  1900)
"SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.medium  =  ""oil"" GROUP BY T2.painterID ORDER BY count(*) DESC LIMIT 3"
"SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID WHERE T2.medium  =  ""oil"" GROUP BY T2.painterID ORDER BY count(*) DESC LIMIT 3"
"SELECT paintingID ,  title ,  LOCATION FROM paintings WHERE medium  =  ""oil"" ORDER BY YEAR"
"SELECT paintingID ,  title ,  LOCATION FROM paintings WHERE medium  =  ""oil"" ORDER BY YEAR"
SELECT title ,  LOCATION ,  YEAR FROM paintings WHERE height_mm  >  1000 ORDER BY title
SELECT title ,  LOCATION ,  YEAR FROM paintings WHERE height_mm  >  1000 ORDER BY title
SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID EXCEPT SELECT T3.lname ,  T3.fname FROM artists AS T3 JOIN sculptures AS T4 ON T3.artistID  =  T4.sculptorID
SELECT T1.lname ,  T1.fname FROM artists AS T1 JOIN paintings AS T2 ON T1.artistID  =  T2.painterID EXCEPT SELECT T3.lname ,  T3.fname FROM artists AS T3 JOIN sculptures AS T4 ON T3.artistID  =  T4.sculptorID
"SELECT DISTINCT LOCATION FROM paintings WHERE YEAR  <  1885 AND mediumOn != ""canvas"""
"SELECT DISTINCT LOCATION FROM paintings WHERE YEAR  <  1885 AND mediumOn != ""canvas"""
SELECT count(*) FROM race
SELECT count(*) FROM race
SELECT Winning_driver ,  Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver ,  Winning_team FROM race ORDER BY Winning_team ASC
SELECT Winning_driver FROM race WHERE Pole_Position != 'Junior Strous'
SELECT Winning_driver FROM race WHERE Pole_Position != 'Junior Strous'
SELECT DISTINCT CONSTRUCTOR FROM driver ORDER BY Age ASC
SELECT DISTINCT CONSTRUCTOR FROM driver ORDER BY Age ASC
SELECT DISTINCT Entrant FROM driver WHERE Age  >=  20
SELECT DISTINCT Entrant FROM driver WHERE Age  >=  20
SELECT max(Age) ,  min(Age) FROM driver
SELECT max(Age) ,  min(Age) FROM driver
SELECT count(DISTINCT Engine) FROM driver WHERE Age  >  30 OR Age  <  20
SELECT count(DISTINCT Engine) FROM driver WHERE Age  >  30 OR Age  <  20
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT Driver_Name FROM driver ORDER BY Driver_Name DESC
SELECT T1.Driver_Name ,  T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID
SELECT T1.Driver_Name ,  T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID
SELECT T1.Driver_Name ,  COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T1.Driver_Name ,  COUNT(*) FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID GROUP BY T1.Driver_ID
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID GROUP BY T1.Driver_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Driver_Name ,  T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*)  >=  2
SELECT T1.Driver_Name ,  T1.Age FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID GROUP BY T1.Driver_ID HAVING COUNT(*)  >=  2
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID WHERE T1.Age  >=  26
SELECT T2.Race_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID WHERE T1.Age  >=  26
"SELECT Driver_Name FROM driver WHERE CONSTRUCTOR != ""Bugatti"""
"SELECT Driver_Name FROM driver WHERE CONSTRUCTOR != ""Bugatti"""
SELECT CONSTRUCTOR ,  COUNT(*) FROM driver GROUP BY CONSTRUCTOR
SELECT CONSTRUCTOR ,  COUNT(*) FROM driver GROUP BY CONSTRUCTOR
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine ORDER BY COUNT(*) DESC LIMIT 1
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*)  >=  2
SELECT Engine FROM driver GROUP BY Engine HAVING COUNT(*)  >=  2
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT Driver_Name FROM driver WHERE Driver_ID NOT IN (SELECT Driver_ID FROM race)
SELECT CONSTRUCTOR FROM driver WHERE Age  <  20 INTERSECT SELECT CONSTRUCTOR FROM driver WHERE Age  >  30
SELECT CONSTRUCTOR FROM driver WHERE Age  <  20 INTERSECT SELECT CONSTRUCTOR FROM driver WHERE Age  >  30
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*)  >  1
SELECT Winning_team FROM race GROUP BY Winning_team HAVING count(*)  >  1
"SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID WHERE Pole_Position  =  ""Carl Skerlong"" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID WHERE Pole_Position  =  ""James Hinchcliffe"""
"SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID WHERE Pole_Position  =  ""Carl Skerlong"" INTERSECT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID WHERE Pole_Position  =  ""James Hinchcliffe"""
"SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID WHERE Pole_Position  =  ""James Hinchcliffe"""
"SELECT Driver_Name FROM driver EXCEPT SELECT T1.Driver_Name FROM driver AS T1 JOIN race AS T2 ON T1.Driver_ID  =  T2.Driver_ID WHERE Pole_Position  =  ""James Hinchcliffe"""
SELECT count(*) FROM languages
SELECT count(*) FROM languages
SELECT name FROM languages ORDER BY name ASC
SELECT name FROM languages ORDER BY name ASC
"SELECT name FROM languages WHERE name LIKE ""%ish%"""
"SELECT name FROM languages WHERE name LIKE ""%ish%"""
SELECT name FROM countries ORDER BY overall_score DESC
SELECT name FROM countries ORDER BY overall_score DESC
SELECT avg(justice_score) FROM countries
SELECT avg(justice_score) FROM countries
"SELECT max(health_score) ,  min(health_score) FROM countries WHERE name != ""Norway"""
"SELECT max(health_score) ,  min(health_score) FROM countries WHERE name != ""Norway"""
SELECT count(DISTINCT language_id) FROM official_languages
SELECT count(DISTINCT language_id) FROM official_languages
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY education_score DESC
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT name FROM countries ORDER BY politics_score DESC LIMIT 1
SELECT T1.name ,  T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id
SELECT T1.name ,  T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id
SELECT T2.name ,  COUNT(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id  =  T2.id GROUP BY T2.name
SELECT T2.name ,  COUNT(*) FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id  =  T2.id GROUP BY T2.name
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id  =  T2.id GROUP BY T2.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id  =  T2.id GROUP BY T2.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id  =  T2.id GROUP BY T2.id HAVING COUNT(*)  >=  2
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id  =  T2.id GROUP BY T2.id HAVING COUNT(*)  >=  2
"SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id WHERE T3.name  =  ""English"""
"SELECT avg(T1.overall_score) FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id WHERE T3.name  =  ""English"""
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id  =  T2.id GROUP BY T2.id ORDER BY COUNT(*) DESC LIMIT 3
SELECT T2.name FROM official_languages AS T1 JOIN languages AS T2 ON T1.language_id  =  T2.id GROUP BY T2.id ORDER BY COUNT(*) DESC LIMIT 3
SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id GROUP BY T3.id ORDER BY avg(T1.overall_score) DESC
SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id GROUP BY T3.id ORDER BY avg(T1.overall_score) DESC
SELECT T1.Name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM languages WHERE id NOT IN (SELECT language_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT name FROM countries WHERE id NOT IN (SELECT country_id FROM official_languages)
SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id WHERE T1.overall_score  >  95 INTERSECT SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id WHERE T1.overall_score  <  90
SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id WHERE T1.overall_score  >  95 INTERSECT SELECT T3.name FROM countries AS T1 JOIN official_languages AS T2 ON T1.id  =  T2.country_id JOIN languages AS T3 ON T2.language_id  =  T3.id WHERE T1.overall_score  <  90
SELECT country ,  town_city FROM Addresses;
SELECT country ,  town_city FROM Addresses;
SELECT DISTINCT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id  =  T2.property_address_id;
SELECT DISTINCT T1.county_state_province FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id  =  T2.property_address_id;
SELECT feature_description FROM Features WHERE feature_name  =  'rooftop';
SELECT feature_description FROM Features WHERE feature_name  =  'rooftop';
SELECT T1.feature_name ,  T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id  =  T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.feature_name ,  T1.feature_description FROM Features AS T1 JOIN Property_Features AS T2 ON T1.feature_id  =  T2.feature_id GROUP BY T1.feature_name ORDER BY count(*) DESC LIMIT 1;
SELECT min(room_count) FROM Properties;
SELECT min(room_count) FROM Properties;
SELECT count(*) FROM Properties WHERE parking_lots  =  1 OR garage_yn  =  1;
SELECT count(*) FROM Properties WHERE parking_lots  =  1 OR garage_yn  =  1;
"SELECT T2.age_category_code FROM Ref_User_Categories AS T1 JOIN Users AS T2 ON T1.user_category_code  =  T2.user_category_code WHERE T1.User_category_description LIKE ""%Mother"";"
"SELECT T2.age_category_code FROM Ref_User_Categories AS T1 JOIN Users AS T2 ON T1.user_category_code  =  T2.user_category_code WHERE T1.User_category_description LIKE ""%Mother"";"
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T2.owner_user_id  =  T1.User_id GROUP BY T1.User_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name FROM Users AS T1 JOIN Properties AS T2 ON T2.owner_user_id  =  T1.User_id GROUP BY T1.User_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T3.room_count) FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id  =  T2.feature_id JOIN Properties AS T3 ON T1.property_id  =  T3.property_id WHERE T2.feature_name  =  'garden';
SELECT avg(T3.room_count) FROM Property_Features AS T1 JOIN Features AS T2 ON T1.feature_id  =  T2.feature_id JOIN Properties AS T3 ON T1.property_id  =  T3.property_id WHERE T2.feature_name  =  'garden';
SELECT T2.town_city FROM Properties AS T1 JOIN Addresses AS T2 ON T1.property_address_id  =  T2.address_id JOIN Property_Features AS T3 ON T1.property_id  =  T3.property_id JOIN Features AS T4 ON T4.feature_id  =  T3.feature_id WHERE T4.feature_name  =  'swimming pool';
SELECT T2.town_city FROM Properties AS T1 JOIN Addresses AS T2 ON T1.property_address_id  =  T2.address_id JOIN Property_Features AS T3 ON T1.property_id  =  T3.property_id JOIN Features AS T4 ON T4.feature_id  =  T3.feature_id WHERE T4.feature_name  =  'swimming pool';
SELECT property_id ,  vendor_requested_price FROM Properties ORDER BY vendor_requested_price LIMIT 1;
SELECT property_id ,  vendor_requested_price FROM Properties ORDER BY vendor_requested_price LIMIT 1;
SELECT avg(room_count) FROM Properties;
SELECT avg(room_count) FROM Properties;
SELECT count(DISTINCT room_size) FROM Rooms;
SELECT count(DISTINCT room_size) FROM Rooms;
SELECT search_seq ,  user_id FROM User_Searches GROUP BY user_id HAVING count(*) >= 2;
SELECT search_seq ,  user_id FROM User_Searches GROUP BY user_id HAVING count(*) >= 2;
SELECT max(search_datetime) FROM User_Searches;
SELECT max(search_datetime) FROM User_Searches;
SELECT search_datetime ,  search_string FROM User_Searches ORDER BY search_string DESC;
SELECT search_datetime ,  search_string FROM User_Searches ORDER BY search_string DESC;
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id  =  T2.property_address_id WHERE T2.owner_user_id NOT IN ( SELECT owner_user_id FROM Properties GROUP BY owner_user_id HAVING count(*)  <=  2 );
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Properties AS T2 ON T1.address_id  =  T2.property_address_id WHERE T2.owner_user_id NOT IN ( SELECT owner_user_id FROM Properties GROUP BY owner_user_id HAVING count(*)  <=  2 );
SELECT T1.user_category_code ,  T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id  =  T2.user_id GROUP BY T1.user_id HAVING count(*)  =  1;
SELECT T1.user_category_code ,  T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id  =  T2.user_id GROUP BY T1.user_id HAVING count(*)  =  1;
SELECT T1.age_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id  =  T2.user_id ORDER BY T2.search_datetime LIMIT 1;
SELECT T1.age_category_code FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id  =  T2.user_id ORDER BY T2.search_datetime LIMIT 1;
SELECT login_name FROM Users WHERE user_category_code  =  'Senior Citizen' ORDER BY first_name
SELECT login_name FROM Users WHERE user_category_code  =  'Senior Citizen' ORDER BY first_name
SELECT count(*) FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id  =  T2.user_id WHERE T1.is_buyer  =  1;
SELECT count(*) FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id  =  T2.user_id WHERE T1.is_buyer  =  1;
SELECT date_registered FROM Users WHERE login_name  =  'ratione';
SELECT date_registered FROM Users WHERE login_name  =  'ratione';
SELECT first_name ,  middle_name ,  last_name ,  login_name FROM Users WHERE is_seller  =  1;
SELECT first_name ,  middle_name ,  last_name ,  login_name FROM Users WHERE is_seller  =  1;
SELECT T1.line_1_number_building ,  T1.line_2_number_street ,  T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id  =  T2.user_address_id WHERE T2.user_category_code  =  'Senior Citizen';
SELECT T1.line_1_number_building ,  T1.line_2_number_street ,  T1.town_city FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id  =  T2.user_address_id WHERE T2.user_category_code  =  'Senior Citizen';
SELECT count(*) FROM Properties GROUP BY property_id HAVING count(*)  >= 2;
SELECT count(*) FROM Properties GROUP BY property_id HAVING count(*)  >= 2;
SELECT count(*) ,  property_id FROM Property_Photos GROUP BY property_id;
SELECT count(*) ,  property_id FROM Property_Photos GROUP BY property_id;
SELECT T1.owner_user_id ,  count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id  =  T2.property_id GROUP BY T1.owner_user_id;
SELECT T1.owner_user_id ,  count(*) FROM Properties AS T1 JOIN Property_Photos AS T2 ON T1.property_id  =  T2.property_id GROUP BY T1.owner_user_id;
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id  =  T2.user_id WHERE T2.user_category_code  =  'Single Mother' OR T2.user_category_code  =  'Student';
SELECT sum(T1.price_max) FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id  =  T2.user_id WHERE T2.user_category_code  =  'Single Mother' OR T2.user_category_code  =  'Student';
SELECT T1.datestamp ,  T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id  =  T2.property_id ORDER BY datestamp;
SELECT T1.datestamp ,  T2.property_name FROM User_Property_History AS T1 JOIN Properties AS T2 ON T1.property_id  =  T2.property_id ORDER BY datestamp;
SELECT T1.property_type_description ,  T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code  =  T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.property_type_description ,  T1.property_type_code FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code  =  T2.property_type_code GROUP BY T1.property_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code  =  'Over 60';
SELECT age_category_description FROM Ref_Age_Categories WHERE age_category_code  =  'Over 60';
SELECT room_size ,  count(*) FROM Rooms GROUP BY room_size
SELECT room_size ,  count(*) FROM Rooms GROUP BY room_size
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id  =  T2.user_address_id WHERE T2.first_name  =  'Robbie';
SELECT T1.country FROM Addresses AS T1 JOIN Users AS T2 ON T1.address_id  =  T2.user_address_id WHERE T2.first_name  =  'Robbie';
SELECT first_name ,  middle_name ,  last_name FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id  =  T2.user_id WHERE T1.property_address_id  =  T2.user_address_id;
SELECT first_name ,  middle_name ,  last_name FROM Properties AS T1 JOIN Users AS T2 ON T1.owner_user_id  =  T2.user_id WHERE T1.property_address_id  =  T2.user_address_id;
SELECT search_string FROM User_Searches EXCEPT SELECT T1.search_string FROM User_Searches AS T1 JOIN Properties AS T2 ON T1.user_id  =  T2.owner_user_id;
SELECT search_string FROM User_Searches EXCEPT SELECT T1.search_string FROM User_Searches AS T1 JOIN Properties AS T2 ON T1.user_id  =  T2.owner_user_id;
SELECT T1.last_name ,  T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id  =  T2.user_id GROUP BY T1.user_id HAVING count(*)  <=  2 INTERSECT SELECT T3.last_name ,  T3.user_id FROM Users AS T3 JOIN Properties AS T4 ON T3.user_id  =  T4.owner_user_id GROUP BY T3.user_id HAVING count(*)  >=  2;
SELECT T1.last_name ,  T1.user_id FROM Users AS T1 JOIN User_Searches AS T2 ON T1.user_id  =  T2.user_id GROUP BY T1.user_id HAVING count(*)  <=  2 INTERSECT SELECT T3.last_name ,  T3.user_id FROM Users AS T3 JOIN Properties AS T4 ON T3.user_id  =  T4.owner_user_id GROUP BY T3.user_id HAVING count(*)  >=  2;
SELECT count(*) FROM bike WHERE weight  >  780
SELECT product_name ,  weight FROM bike ORDER BY price ASC
SELECT heat ,  name ,  nation FROM cyclist
SELECT max(weight) ,  min(weight) FROM bike
SELECT avg(price) FROM bike WHERE material  =  'Carbon CC'
SELECT name ,  RESULT FROM cyclist WHERE nation != 'Russia'
SELECT DISTINCT T1.id ,  T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id  =  T2.bike_id WHERE T2.purchase_year  >  2015
SELECT T1.id ,  T1.product_name FROM bike AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id  =  T2.bike_id GROUP BY T1.id HAVING count(*)  >=  4
SELECT T1.id ,  T1.name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id  =  T2.cyclist_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T3.product_name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id  =  T2.cyclist_id JOIN bike AS T3 ON T2.bike_id  =  T3.id WHERE T1.nation  =  'Russia' OR T1.nation  =  'Great Britain'
SELECT count(DISTINCT heat) FROM cyclist
SELECT count(*) FROM cyclist WHERE id NOT IN ( SELECT cyclist_id FROM cyclists_own_bikes WHERE purchase_year  >  2015 )
SELECT DISTINCT T3.product_name FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id  =  T2.cyclist_id JOIN bike AS T3 ON T2.bike_id  =  T3.id WHERE T1.result  <  '4:21.558'
SELECT T3.product_name ,  T3.price FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id  =  T2.cyclist_id JOIN bike AS T3 ON T2.bike_id  =  T3.id WHERE T1.name  =  'Bradley Wiggins' INTERSECT SELECT T3.product_name ,  T3.price FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id  =  T2.cyclist_id JOIN bike AS T3 ON T2.bike_id  =  T3.id WHERE T1.name  =  'Antonio Tauler'
SELECT name ,  nation ,  RESULT FROM cyclist EXCEPT SELECT T1.name ,  T1.nation ,  T1.result FROM cyclist AS T1 JOIN cyclists_own_bikes AS T2 ON T1.id  =  T2.cyclist_id
"SELECT product_name FROM bike WHERE material LIKE ""%fiber%"""
SELECT cyclist_id ,  count(*) FROM cyclists_own_bikes GROUP BY cyclist_id ORDER BY cyclist_id
"SELECT id ,  flavor FROM goods WHERE food  =  ""Cake"" ORDER BY price DESC LIMIT 1"
"SELECT id ,  flavor FROM goods WHERE food  =  ""Cake"" ORDER BY price DESC LIMIT 1"
"SELECT id ,  flavor FROM goods WHERE food  =  ""Cookie"" ORDER BY price LIMIT 1"
"SELECT id ,  flavor FROM goods WHERE food  =  ""Cookie"" ORDER BY price LIMIT 1"
"SELECT id FROM goods WHERE flavor  =  ""Apple"""
"SELECT id FROM goods WHERE flavor  =  ""Apple"""
SELECT id FROM goods WHERE price  <  3
SELECT id FROM goods WHERE price  <  3
"SELECT DISTINCT T3.CustomerId FROM goods AS T1 JOIN items AS T2 ON T1.Id  =  T2.Item JOIN receipts AS T3 ON T2.Receipt  =  T3.ReceiptNumber WHERE T1.Flavor  =  ""Lemon"" AND T1.Food  =  ""Cake"""
"SELECT DISTINCT T3.CustomerId FROM goods AS T1 JOIN items AS T2 ON T1.Id  =  T2.Item JOIN receipts AS T3 ON T2.Receipt  =  T3.ReceiptNumber WHERE T1.Flavor  =  ""Lemon"" AND T1.Food  =  ""Cake"""
SELECT T1.food ,  count(DISTINCT T3.CustomerId) FROM goods AS T1 JOIN items AS T2 ON T1.Id  =  T2.Item JOIN receipts AS T3 ON T2.Receipt  =  T3.ReceiptNumber GROUP BY T1.food
SELECT T1.food ,  count(DISTINCT T3.CustomerId) FROM goods AS T1 JOIN items AS T2 ON T1.Id  =  T2.Item JOIN receipts AS T3 ON T2.Receipt  =  T3.ReceiptNumber GROUP BY T1.food
SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING count(*)  >=  15
SELECT CustomerId FROM receipts GROUP BY CustomerId HAVING count(*)  >=  15
SELECT T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId  =  T2.id GROUP BY T2.id HAVING count(*)  >  10
SELECT T2.LastName FROM receipts AS T1 JOIN customers AS T2 ON T1.CustomerId  =  T2.id GROUP BY T2.id HAVING count(*)  >  10
"SELECT count(*) FROM goods WHERE food  =  ""Cake"""
"SELECT count(*) FROM goods WHERE food  =  ""Cake"""
"SELECT flavor FROM goods WHERE food  =  ""Croissant"""
"SELECT flavor FROM goods WHERE food  =  ""Croissant"""
SELECT DISTINCT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.receipt  =  T2.ReceiptNumber WHERE T2.CustomerId  =  15
SELECT DISTINCT T1.item FROM items AS T1 JOIN receipts AS T2 ON T1.receipt  =  T2.ReceiptNumber WHERE T2.CustomerId  =  15
SELECT food ,  avg(price) ,  max(price) ,  min(price) FROM goods GROUP BY food
SELECT food ,  avg(price) ,  max(price) ,  min(price) FROM goods GROUP BY food
"SELECT T1.receipt FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.food  =  ""Cake"" INTERSECT SELECT T1.receipt FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.food  =  ""Cookie"""
"SELECT T1.receipt FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.food  =  ""Cake"" INTERSECT SELECT T1.receipt FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.food  =  ""Cookie"""
"SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber  =  T2.receipt JOIN goods AS T3 ON T2.item  =  T3.id JOIN customers AS T4 ON T4.Id  =  T1.CustomerId WHERE T3.food  =  ""Croissant"" AND T4.LastName  =  'LOGAN'"
"SELECT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber  =  T2.receipt JOIN goods AS T3 ON T2.item  =  T3.id JOIN customers AS T4 ON T4.Id  =  T1.CustomerId WHERE T3.food  =  ""Croissant"" AND T4.LastName  =  'LOGAN'"
SELECT T1.ReceiptNumber ,  T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber  =  T2.receipt JOIN goods AS T3 ON T2.item  =  T3.id ORDER BY T3.price DESC LIMIT 1
SELECT T1.ReceiptNumber ,  T1.Date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber  =  T2.receipt JOIN goods AS T3 ON T2.item  =  T3.id ORDER BY T3.price DESC LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) LIMIT 1
SELECT item FROM items GROUP BY item ORDER BY count(*) LIMIT 1
SELECT count(*) ,  food FROM goods GROUP BY food
SELECT count(*) ,  food FROM goods GROUP BY food
SELECT avg(price) ,  food FROM goods GROUP BY food
SELECT avg(price) ,  food FROM goods GROUP BY food
"SELECT id FROM goods WHERE flavor  =  ""Apricot"" AND price  <  5"
"SELECT id FROM goods WHERE flavor  =  ""Apricot"" AND price  <  5"
"SELECT flavor FROM goods WHERE food  =  ""Cake"" AND price  >  10"
"SELECT flavor FROM goods WHERE food  =  ""Cake"" AND price  >  10"
SELECT DISTINCT id ,  price FROM goods WHERE price  <  (SELECT avg(price) FROM goods)
SELECT DISTINCT id ,  price FROM goods WHERE price  <  (SELECT avg(price) FROM goods)
"SELECT DISTINCT id FROM goods WHERE price  <  (SELECT max(price) FROM goods WHERE food  =  ""Tart"")"
"SELECT DISTINCT id FROM goods WHERE price  <  (SELECT max(price) FROM goods WHERE food  =  ""Tart"")"
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber  =  T2.receipt JOIN goods AS T3 ON T2.item  =  T3.id WHERE T3.price  >  13
SELECT DISTINCT T1.ReceiptNumber FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber  =  T2.receipt JOIN goods AS T3 ON T2.item  =  T3.id WHERE T3.price  >  13
SELECT DISTINCT T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber  =  T2.receipt JOIN goods AS T3 ON T2.item  =  T3.id WHERE T3.price  >  15
SELECT DISTINCT T1.date FROM receipts AS T1 JOIN items AS T2 ON T1.ReceiptNumber  =  T2.receipt JOIN goods AS T3 ON T2.item  =  T3.id WHERE T3.price  >  15
"SELECT id FROM goods WHERE id LIKE ""%APP%"""
"SELECT id FROM goods WHERE id LIKE ""%APP%"""
"SELECT id ,  price FROM goods WHERE id LIKE ""%70%"""
"SELECT id ,  price FROM goods WHERE id LIKE ""%70%"""
SELECT DISTINCT LastName FROM customers ORDER BY LastName
SELECT DISTINCT LastName FROM customers ORDER BY LastName
SELECT DISTINCT id FROM goods ORDER BY id
SELECT DISTINCT id FROM goods ORDER BY id
"SELECT T1.receipt FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.flavor  =  ""Apple"" AND T2.food  =  ""Pie"" UNION SELECT ReceiptNumber FROM receipts WHERE CustomerId  =  12"
"SELECT T1.receipt FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.flavor  =  ""Apple"" AND T2.food  =  ""Pie"" UNION SELECT ReceiptNumber FROM receipts WHERE CustomerId  =  12"
SELECT ReceiptNumber ,  date FROM receipts WHERE date  =  (SELECT date FROM receipts ORDER BY date DESC LIMIT 1)
SELECT ReceiptNumber ,  date FROM receipts WHERE date  =  (SELECT date FROM receipts ORDER BY date DESC LIMIT 1)
SELECT T1.Receipt FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.price  >  10 UNION SELECT ReceiptNumber FROM receipts WHERE date  =  (SELECT date FROM receipts ORDER BY date LIMIT 1)
SELECT T1.Receipt FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.price  >  10 UNION SELECT ReceiptNumber FROM receipts WHERE date  =  (SELECT date FROM receipts ORDER BY date LIMIT 1)
"SELECT id FROM goods WHERE food  =  ""Cookie"" OR food  =  ""Cake"" AND price BETWEEN 3 AND 7"
"SELECT id FROM goods WHERE food  =  ""Cookie"" OR food  =  ""Cake"" AND price BETWEEN 3 AND 7"
SELECT T1.FirstName ,  T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id  =  T2.CustomerId ORDER BY T2.date LIMIT 1
SELECT T1.FirstName ,  T1.LastName FROM customers AS T1 JOIN receipts AS T2 ON T1.id  =  T2.CustomerId ORDER BY T2.date LIMIT 1
"SELECT avg(price) FROM goods WHERE flavor  =  ""Blackberry"" OR flavor  =  ""Blueberry"""
"SELECT avg(price) FROM goods WHERE flavor  =  ""Blackberry"" OR flavor  =  ""Blueberry"""
"SELECT min(price) FROM goods WHERE flavor  =  ""Cheese"""
"SELECT min(price) FROM goods WHERE flavor  =  ""Cheese"""
SELECT max(price) ,  min(price) ,  avg(price) ,  flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT max(price) ,  min(price) ,  avg(price) ,  flavor FROM goods GROUP BY flavor ORDER BY flavor
SELECT min(price) ,  max(price) ,  food FROM goods GROUP BY food ORDER BY food
SELECT min(price) ,  max(price) ,  food FROM goods GROUP BY food ORDER BY food
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT date FROM receipts GROUP BY date ORDER BY count(*) DESC LIMIT 3
SELECT CustomerId ,  count(*) FROM receipts GROUP BY CustomerId ORDER BY count(*) DESC LIMIT 1
SELECT CustomerId ,  count(*) FROM receipts GROUP BY CustomerId ORDER BY count(*) DESC LIMIT 1
SELECT date ,  COUNT (DISTINCT CustomerId) FROM receipts GROUP BY date
SELECT date ,  COUNT (DISTINCT CustomerId) FROM receipts GROUP BY date
"SELECT DISTINCT T4.FirstName ,  T4.LastName FROM goods AS T1 JOIN items AS T2 ON T1.id  =  T2.item JOIN receipts AS T3 ON T2.receipt  =  T3.ReceiptNumber JOIN customers AS T4 ON T3.CustomerId  =  T4.id WHERE T1.flavor  =  ""Apple"" AND T1.food  =  ""Tart"""
"SELECT DISTINCT T4.FirstName ,  T4.LastName FROM goods AS T1 JOIN items AS T2 ON T1.id  =  T2.item JOIN receipts AS T3 ON T2.receipt  =  T3.ReceiptNumber JOIN customers AS T4 ON T3.CustomerId  =  T4.id WHERE T1.flavor  =  ""Apple"" AND T1.food  =  ""Tart"""
"SELECT id FROM goods WHERE food  =  ""Cookie"" AND price  <  (SELECT min(price) FROM goods WHERE food  =  'Croissant')"
"SELECT id FROM goods WHERE food  =  ""Cookie"" AND price  <  (SELECT min(price) FROM goods WHERE food  =  'Croissant')"
"SELECT id FROM goods WHERE food  =  ""Cake"" AND price  >=  (SELECT avg(price) FROM goods WHERE food  =  ""Tart"")"
"SELECT id FROM goods WHERE food  =  ""Cake"" AND price  >=  (SELECT avg(price) FROM goods WHERE food  =  ""Tart"")"
SELECT id FROM goods WHERE price  >  (SELECT avg(price) FROM goods)
SELECT id FROM goods WHERE price  >  (SELECT avg(price) FROM goods)
SELECT id ,  flavor ,  food FROM goods ORDER BY price
SELECT id ,  flavor ,  food FROM goods ORDER BY price
"SELECT id ,  flavor FROM goods WHERE food  =  ""Cake"" ORDER BY flavor"
"SELECT id ,  flavor FROM goods WHERE food  =  ""Cake"" ORDER BY flavor"
"SELECT DISTINCT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.flavor  =  ""Chocolate"" GROUP BY item HAVING count(*)  <=  10"
"SELECT DISTINCT T1.item FROM items AS T1 JOIN goods AS T2 ON T1.item  =  T2.id WHERE T2.flavor  =  ""Chocolate"" GROUP BY item HAVING count(*)  <=  10"
"SELECT DISTINCT flavor FROM goods WHERE food  =  ""Cake"" EXCEPT SELECT DISTINCT flavor FROM goods WHERE food  =  ""Tart"""
"SELECT DISTINCT flavor FROM goods WHERE food  =  ""Cake"" EXCEPT SELECT DISTINCT flavor FROM goods WHERE food  =  ""Tart"""
SELECT item FROM items GROUP BY item ORDER BY COUNT (*) DESC LIMIT 3
SELECT item FROM items GROUP BY item ORDER BY COUNT (*) DESC LIMIT 3
SELECT T3.CustomerId FROM goods AS T1 JOIN items AS T2 ON T1.id  =  T2.item JOIN receipts AS T3 ON T2.receipt  =  T3.ReceiptNumber GROUP BY T3.CustomerId HAVING sum(T1.price)  >  150
SELECT T3.CustomerId FROM goods AS T1 JOIN items AS T2 ON T1.id  =  T2.item JOIN receipts AS T3 ON T2.receipt  =  T3.ReceiptNumber GROUP BY T3.CustomerId HAVING sum(T1.price)  >  150
SELECT T3.CustomerId FROM goods AS T1 JOIN items AS T2 ON T1.id  =  T2.item JOIN receipts AS T3 ON T2.receipt  =  T3.ReceiptNumber GROUP BY T3.CustomerId HAVING avg(T1.price)  >  5
SELECT T3.CustomerId FROM goods AS T1 JOIN items AS T2 ON T1.id  =  T2.item JOIN receipts AS T3 ON T2.receipt  =  T3.ReceiptNumber GROUP BY T3.CustomerId HAVING avg(T1.price)  >  5
SELECT T3.date FROM goods AS T1 JOIN items AS T2 ON T1.id  =  T2.item JOIN receipts AS T3 ON T2.receipt  =  T3.ReceiptNumber GROUP BY T3.date HAVING sum(T1.price)  >  100
SELECT T3.date FROM goods AS T1 JOIN items AS T2 ON T1.id  =  T2.item JOIN receipts AS T3 ON T2.receipt  =  T3.ReceiptNumber GROUP BY T3.date HAVING sum(T1.price)  >  100
SELECT count(*) FROM driver
SELECT count(*) FROM driver
SELECT make ,  count(*) FROM driver WHERE points  >  150 GROUP BY make
SELECT make ,  count(*) FROM driver WHERE points  >  150 GROUP BY make
SELECT avg(age) ,  Make FROM driver GROUP BY make
SELECT avg(age) ,  Make FROM driver GROUP BY make
SELECT avg(Laps) FROM driver WHERE age  <  20
SELECT avg(Laps) FROM driver WHERE age  <  20
SELECT Manager ,  Sponsor FROM team ORDER BY Car_Owner
SELECT Manager ,  Sponsor FROM team ORDER BY Car_Owner
SELECT make FROM team GROUP BY team HAVING count(*)  >  1
SELECT make FROM team GROUP BY team HAVING count(*)  >  1
"SELECT Make FROM team WHERE Car_Owner  =  ""Buddy Arrington"""
"SELECT Make FROM team WHERE Car_Owner  =  ""Buddy Arrington"""
SELECT max(Points) ,  min(Points) FROM driver
SELECT max(Points) ,  min(Points) FROM driver
SELECT count(*) FROM driver WHERE Points  <  150
SELECT count(*) FROM driver WHERE Points  <  150
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Age ASC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT Driver FROM driver ORDER BY Points DESC
SELECT T2.Driver ,  T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country
SELECT T2.Driver ,  T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country
"SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country WHERE T1.Capital  =  ""Dublin"""
"SELECT max(T2.Points) FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country WHERE T1.Capital  =  ""Dublin"""
"SELECT avg(T2.age) FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country WHERE T1.Official_native_language  =  ""English"""
"SELECT avg(T2.age) FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country WHERE T1.Official_native_language  =  ""English"""
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country WHERE T2.Points  >  150
SELECT T1.Country FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country WHERE T2.Points  >  150
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT T1.Capital FROM country AS T1 JOIN driver AS T2 ON T1.Country_ID  =  T2.Country ORDER BY T2.Points DESC LIMIT 1
SELECT Make ,  COUNT(*) FROM driver GROUP BY Make
SELECT Make ,  COUNT(*) FROM driver GROUP BY Make
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*)  >=  3
SELECT Make FROM driver GROUP BY Make HAVING COUNT(*)  >=  3
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
SELECT Team FROM team WHERE Team_ID NOT IN (SELECT Team_ID FROM team_driver)
"SELECT t2.country FROM driver AS t1 JOIN country AS t2 ON t1.country  =  t2.country_id WHERE t1.Make  =  ""Dodge"" INTERSECT SELECT t2.country FROM driver AS t1 JOIN country AS t2 ON t1.country  =  t2.country_id WHERE t1.Make  =  ""Chevrolet"""
"SELECT t2.country FROM driver AS t1 JOIN country AS t2 ON t1.country  =  t2.country_id WHERE t1.Make  =  ""Dodge"" INTERSECT SELECT t2.country FROM driver AS t1 JOIN country AS t2 ON t1.country  =  t2.country_id WHERE t1.Make  =  ""Chevrolet"""
SELECT sum(Points) ,  avg(Points) FROM driver
SELECT sum(Points) ,  avg(Points) FROM driver
SELECT country FROM country WHERE country_id NOT IN (SELECT country FROM driver)
SELECT country FROM country WHERE country_id NOT IN (SELECT country FROM driver)
SELECT t1.manager ,  t1.sponsor FROM team AS t1 JOIN team_driver AS t2 ON t1.team_id  =  t2.team_id GROUP BY t2.team_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.manager ,  t1.sponsor FROM team AS t1 JOIN team_driver AS t2 ON t1.team_id  =  t2.team_id GROUP BY t2.team_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.manager ,  t1.car_owner FROM team AS t1 JOIN team_driver AS t2 ON t1.team_id  =  t2.team_id GROUP BY t2.team_id HAVING count(*)  >=  2
SELECT t1.manager ,  t1.car_owner FROM team AS t1 JOIN team_driver AS t2 ON t1.team_id  =  t2.team_id GROUP BY t2.team_id HAVING count(*)  >=  2
SELECT count(*) FROM institution
SELECT count(*) FROM institution
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Name ASC
SELECT Name FROM institution ORDER BY Founded ASC
SELECT Name FROM institution ORDER BY Founded ASC
SELECT City ,  Province FROM institution
SELECT City ,  Province FROM institution
SELECT max(Enrollment) ,  min(Enrollment) FROM institution
SELECT max(Enrollment) ,  min(Enrollment) FROM institution
"SELECT Affiliation FROM institution WHERE City != ""Vancouver"""
"SELECT Affiliation FROM institution WHERE City != ""Vancouver"""
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Capacity DESC
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT Stadium FROM institution ORDER BY Enrollment DESC LIMIT 1
SELECT T2.Name ,  T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID
SELECT T2.Name ,  T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID
SELECT T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID ORDER BY T2.Enrollment ASC LIMIT 1
SELECT T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID ORDER BY T2.Enrollment ASC LIMIT 1
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID ORDER BY T1.Number_of_Championships DESC
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID ORDER BY T1.Number_of_Championships DESC
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID WHERE T1.Number_of_Championships  >=  1
SELECT T2.Name FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID WHERE T1.Number_of_Championships  >=  1
"SELECT sum(T1.Number_of_Championships) FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID WHERE T2.Affiliation  =  ""Public"""
"SELECT sum(T1.Number_of_Championships) FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID WHERE T2.Affiliation  =  ""Public"""
SELECT Affiliation ,  COUNT(*) FROM institution GROUP BY Affiliation
SELECT Affiliation ,  COUNT(*) FROM institution GROUP BY Affiliation
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Affiliation FROM institution GROUP BY Affiliation ORDER BY COUNT(*) DESC LIMIT 1
SELECT Founded ,  COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*)  >  1
SELECT Founded ,  COUNT(*) FROM institution GROUP BY Founded HAVING COUNT(*)  >  1
SELECT T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID ORDER BY T2.Capacity DESC
SELECT T1.Nickname FROM championship AS T1 JOIN institution AS T2 ON T1.Institution_ID  =  T2.Institution_ID ORDER BY T2.Capacity DESC
"select sum(enrollment) from institution where city  =  ""vancouver"" or city  =  ""calgary"""
"select sum(enrollment) from institution where city  =  ""vancouver"" or city  =  ""calgary"""
SELECT Province FROM institution WHERE Founded  <  1920 INTERSECT SELECT Province FROM institution WHERE Founded  >  1950
SELECT Province FROM institution WHERE Founded  <  1920 INTERSECT SELECT Province FROM institution WHERE Founded  >  1950
SELECT count(DISTINCT Province) FROM institution
SELECT count(DISTINCT Province) FROM institution
SELECT * FROM warehouses
SELECT * FROM warehouses
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE LOCATION  =  'New York'
SELECT DISTINCT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE LOCATION  =  'New York'
SELECT CONTENTS FROM boxes WHERE Value  >  150
SELECT CONTENTS FROM boxes WHERE Value  >  150
SELECT warehouse ,  avg(value) FROM boxes GROUP BY warehouse
SELECT warehouse ,  avg(value) FROM boxes GROUP BY warehouse
SELECT avg(value) ,  sum(value) FROM boxes
SELECT avg(value) ,  sum(value) FROM boxes
SELECT avg(capacity) ,  sum(capacity) FROM warehouses
SELECT avg(capacity) ,  sum(capacity) FROM warehouses
SELECT avg(value) ,  max(value) ,  CONTENTS FROM boxes GROUP BY CONTENTS
SELECT avg(value) ,  max(value) ,  CONTENTS FROM boxes GROUP BY CONTENTS
SELECT CONTENTS FROM boxes ORDER BY value DESC LIMIT 1
SELECT CONTENTS FROM boxes ORDER BY value DESC LIMIT 1
SELECT avg(value) FROM boxes
SELECT avg(value) FROM boxes
SELECT DISTINCT CONTENTS FROM boxes
SELECT DISTINCT CONTENTS FROM boxes
SELECT count(DISTINCT CONTENTS) FROM boxes
SELECT count(DISTINCT CONTENTS) FROM boxes
SELECT count(DISTINCT LOCATION) FROM warehouses
SELECT count(DISTINCT LOCATION) FROM warehouses
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'Chicago' OR T2.location  =  'New York'
SELECT T1.code FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'Chicago' OR T2.location  =  'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'Chicago' OR T2.location  =  'New York'
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'Chicago' OR T2.location  =  'New York'
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'New York'
SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'Chicago' INTERSECT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'New York'
SELECT CONTENTS FROM boxes EXCEPT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'New York'
SELECT CONTENTS FROM boxes EXCEPT SELECT T1.contents FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'New York'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Rocks' EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Rocks' EXCEPT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Scissors'
SELECT DISTINCT warehouse FROM boxes WHERE CONTENTS  =  'Rocks' OR CONTENTS  =  'Scissors'
SELECT DISTINCT warehouse FROM boxes WHERE CONTENTS  =  'Rocks' OR CONTENTS  =  'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Scissors'
SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Rocks' INTERSECT SELECT T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Scissors'
SELECT code ,  CONTENTS FROM boxes ORDER BY value
SELECT code ,  CONTENTS FROM boxes ORDER BY value
SELECT code ,  CONTENTS FROM boxes ORDER BY value LIMIT 1
SELECT code ,  CONTENTS FROM boxes ORDER BY value LIMIT 1
SELECT DISTINCT CONTENTS FROM boxes WHERE value  >  (SELECT avg(value) FROM boxes)
SELECT DISTINCT CONTENTS FROM boxes WHERE value  >  (SELECT avg(value) FROM boxes)
SELECT DISTINCT CONTENTS FROM boxes ORDER BY CONTENTS
SELECT DISTINCT CONTENTS FROM boxes ORDER BY CONTENTS
SELECT code FROM boxes WHERE value  >  (SELECT min(value) FROM boxes WHERE CONTENTS  =  'Rocks')
SELECT code FROM boxes WHERE value  >  (SELECT min(value) FROM boxes WHERE CONTENTS  =  'Rocks')
SELECT code ,  CONTENTS FROM boxes WHERE value  >  (SELECT max(value) FROM boxes WHERE CONTENTS  =  'Scissors')
SELECT code ,  CONTENTS FROM boxes WHERE value  >  (SELECT max(value) FROM boxes WHERE CONTENTS  =  'Scissors')
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code ORDER BY T2.capacity DESC LIMIT 1
SELECT sum(T1.value) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code ORDER BY T2.capacity DESC LIMIT 1
SELECT warehouse ,  avg(value) FROM boxes GROUP BY warehouse HAVING avg(value)  >  150
SELECT warehouse ,  avg(value) FROM boxes GROUP BY warehouse HAVING avg(value)  >  150
SELECT sum(value) ,  count(*) ,  CONTENTS FROM boxes GROUP BY CONTENTS
SELECT sum(value) ,  count(*) ,  CONTENTS FROM boxes GROUP BY CONTENTS
SELECT sum(capacity) ,  avg(capacity) ,  max(capacity) ,  LOCATION FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) ,  avg(capacity) ,  max(capacity) ,  LOCATION FROM warehouses GROUP BY LOCATION
SELECT sum(capacity) FROM warehouses
SELECT sum(capacity) FROM warehouses
SELECT max(T1.value) ,  T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code GROUP BY T2.location
SELECT max(T1.value) ,  T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code GROUP BY T2.location
SELECT Warehouse ,  count(*) FROM boxes GROUP BY warehouse
select warehouse ,  count(*) from boxes group by warehouse
SELECT count(DISTINCT LOCATION) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Rocks'
SELECT count(DISTINCT LOCATION) FROM boxes AS T1 JOIN warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T1.contents  =  'Rocks'
SELECT T1.code ,  T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse  =  T2.Code
SELECT T1.code ,  T2.location FROM boxes AS T1 JOIN warehouses AS T2 ON T1.Warehouse  =  T2.Code
SELECT T1.code FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'Chicago'
SELECT T1.code FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location  =  'Chicago'
SELECT count(*) ,  warehouse FROM boxes GROUP BY warehouse
SELECT count(*) ,  warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT CONTENTS) ,  warehouse FROM boxes GROUP BY warehouse
SELECT count(DISTINCT CONTENTS) ,  warehouse FROM boxes GROUP BY warehouse
SELECT T2.code FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse  =  T2.code GROUP BY T2.code HAVING count(*)  >  T2.capacity
SELECT T2.code FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse  =  T2.code GROUP BY T2.code HAVING count(*)  >  T2.capacity
SELECT sum(T1.value) FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location != 'Chicago'
SELECT sum(T1.value) FROM boxes AS T1 JOIN Warehouses AS T2 ON T1.warehouse  =  T2.code WHERE T2.location != 'Chicago'
SELECT university_name ,  city ,  state FROM University ORDER BY university_name
SELECT university_name ,  city ,  state FROM University ORDER BY university_name
SELECT count(*) FROM University WHERE state  =  'Illinois' OR state  =  'Ohio'
SELECT count(*) FROM University WHERE state  =  'Illinois' OR state  =  'Ohio'
SELECT max(enrollment) ,  avg(enrollment) ,  min(enrollment) FROM University
SELECT max(enrollment) ,  avg(enrollment) ,  min(enrollment) FROM University
SELECT team_name FROM University WHERE enrollment  >  (SELECT avg(enrollment) FROM University)
select team_name from university where enrollment  >  (select avg(enrollment) from university)
SELECT DISTINCT home_conference FROM University
SELECT DISTINCT home_conference FROM University
SELECT home_conference ,  count(*) FROM University GROUP BY home_conference
SELECT home_conference ,  count(*) FROM University GROUP BY home_conference
SELECT state FROM University GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state FROM University GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT home_conference FROM University GROUP BY home_conference HAVING avg(enrollment)  >  2000
SELECT home_conference FROM University GROUP BY home_conference HAVING avg(enrollment)  >  2000
SELECT home_conference FROM University GROUP BY home_conference ORDER BY sum(enrollment) LIMIT 1
SELECT home_conference FROM University GROUP BY home_conference ORDER BY sum(enrollment) LIMIT 1
SELECT major_name ,  major_code FROM Major ORDER BY major_code
SELECT major_name ,  major_code FROM Major ORDER BY major_code
SELECT T1.rank ,  T3.major_name FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T2.university_name  =  'Augustana College'
SELECT T1.rank ,  T3.major_name FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T2.university_name  =  'Augustana College'
SELECT T2.university_name ,  T2.city ,  T2.state FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T1.rank  =  1 AND T3.major_name  =  'Accounting'
SELECT T2.university_name ,  T2.city ,  T2.state FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T1.rank  =  1 AND T3.major_name  =  'Accounting'
SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 ON T1.university_id  =  T2.university_id WHERE T1.rank  =  1 GROUP BY T2.university_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 ON T1.university_id  =  T2.university_id WHERE T1.rank  =  1 GROUP BY T2.university_name ORDER BY count(*) DESC LIMIT 1
SELECT university_name FROM University EXCEPT SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 ON T1.university_id  =  T2.university_id WHERE T1.rank  =  1
SELECT university_name FROM University EXCEPT SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 ON T1.university_id  =  T2.university_id WHERE T1.rank  =  1
SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T3.major_name  =  'Accounting' INTERSECT SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T3.major_name  =  'Urban Education'
SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T3.major_name  =  'Accounting' INTERSECT SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T3.major_name  =  'Urban Education'
SELECT T1.university_name ,  T2.rank FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id WHERE T1.state  =  'Wisconsin'
SELECT T1.university_name ,  T2.rank FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id WHERE T1.state  =  'Wisconsin'
SELECT T1.university_name FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id ORDER BY T2.research_point DESC LIMIT 1
SELECT T1.university_name FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id ORDER BY T2.research_point DESC LIMIT 1
SELECT T1.university_name FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id ORDER BY T2.reputation_point
SELECT T1.university_name FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id ORDER BY T2.reputation_point
"SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T1.rank  <=  3 AND T3.major_name  =  ""Accounting"""
"SELECT T2.university_name FROM Major_Ranking AS T1 JOIN University AS T2 JOIN Major AS T3 ON T1.university_id  =  T2.university_id AND T1.major_id  =  T3.major_id WHERE T1.rank  <=  3 AND T3.major_name  =  ""Accounting"""
SELECT sum(enrollment) FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id WHERE T2.rank  >=  5
SELECT sum(enrollment) FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id WHERE T2.rank  >=  5
SELECT T1.University_Name ,  T2.Citation_point FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT T1.University_Name ,  T2.Citation_point FROM University AS T1 JOIN Overall_ranking AS T2 ON T1.university_id  =  T2.university_id ORDER BY T2.Reputation_point DESC LIMIT 3
SELECT state FROM university WHERE enrollment  <  3000 GROUP BY state HAVING count(*)  >  2
SELECT state FROM university WHERE enrollment  <  3000 GROUP BY state HAVING count(*)  >  2
SELECT title FROM movies WHERE rating  =  'null'
SELECT title FROM movies WHERE rating  =  'null'
SELECT title FROM movies WHERE rating  =  'G'
SELECT title FROM movies WHERE rating  =  'G'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Odeon'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Odeon'
SELECT T1.title ,  T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie
SELECT T1.title ,  T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie
SELECT count(*) FROM movies WHERE rating  =  'G'
SELECT count(*) FROM movies WHERE rating  =  'G'
SELECT count(*) FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie
SELECT count(*) FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie
SELECT count(DISTINCT T1.code) FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie
SELECT count(DISTINCT T1.code) FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie
SELECT count(DISTINCT name) FROM movietheaters
SELECT count(DISTINCT name) FROM movietheaters
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT rating FROM movies WHERE title LIKE '%Citizen%'
SELECT title FROM movies WHERE rating  =  'G' OR rating  =  'PG'
SELECT title FROM movies WHERE rating  =  'G' OR rating  =  'PG'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Odeon' OR T2.name  =  'Imperial'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Odeon' OR T2.name  =  'Imperial'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Odeon' INTERSECT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Imperial'
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Odeon' INTERSECT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Imperial'
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Odeon'
SELECT title FROM movies EXCEPT SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T2.name  =  'Odeon'
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY title
SELECT title FROM movies ORDER BY rating
SELECT title FROM movies ORDER BY rating
SELECT name FROM movietheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM movietheaters GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT T1.title FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie GROUP BY T1.title ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  rating FROM movies GROUP BY rating
SELECT count(*) ,  rating FROM movies GROUP BY rating
SELECT count(*) ,  rating FROM movies WHERE rating != 'null' GROUP BY rating
SELECT count(*) ,  rating FROM movies WHERE rating != 'null' GROUP BY rating
SELECT name FROM movietheaters GROUP BY name HAVING count(*)  >=  1
SELECT name FROM movietheaters GROUP BY name HAVING count(*)  >=  1
SELECT DISTINCT name FROM MovieTheaters WHERE Movie  =  'null'
SELECT DISTINCT name FROM MovieTheaters WHERE Movie  =  'null'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T1.rating  =  'G'
SELECT T2.name FROM movies AS T1 JOIN movietheaters AS T2 ON T1.code  =  T2.movie WHERE T1.rating  =  'G'
SELECT title FROM movies
SELECT title FROM movies
SELECT DISTINCT rating FROM movies
SELECT DISTINCT rating FROM movies
SELECT * FROM movies WHERE rating  =  'null'
SELECT * FROM movies WHERE rating  =  'null'
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters WHERE Movie != 'null')
SELECT Title FROM Movies WHERE Code NOT IN (SELECT Movie FROM MovieTheaters WHERE Movie != 'null')
SELECT T2.Name FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Recipient  =  T2.AccountNumber ORDER BY T1.Weight DESC LIMIT 1
SELECT T2.Name FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Recipient  =  T2.AccountNumber ORDER BY T1.Weight DESC LIMIT 1
"SELECT sum(T1.Weight) FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name  =  ""Leo Wong"";"
"SELECT sum(T1.Weight) FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name  =  ""Leo Wong"";"
"SELECT POSITION FROM Employee WHERE Name  =  ""Amy Wong"";"
"SELECT POSITION FROM Employee WHERE Name  =  ""Amy Wong"";"
"SELECT Salary ,  POSITION FROM Employee WHERE Name  =  ""Turanga Leela"";"
"SELECT Salary ,  POSITION FROM Employee WHERE Name  =  ""Turanga Leela"";"
"SELECT avg(Salary) FROM Employee WHERE POSITION  =  ""Intern"";"
"SELECT avg(Salary) FROM Employee WHERE POSITION  =  ""Intern"";"
"SELECT T1.Level FROM Has_Clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T2.position  =  ""Physician"";"
"SELECT T1.Level FROM Has_Clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID WHERE T2.position  =  ""Physician"";"
"SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name  =  ""Leo Wong"";"
"SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name  =  ""Leo Wong"";"
"select t1.packagenumber from package as t1 join client as t2 on t1.recipient  =  t2.accountnumber where t2.name = ""leo wong"";"
"SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Recipient  =  T2.AccountNumber WHERE T2.Name = ""Leo Wong"";"
"SELECT DISTINCT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber OR T1.Recipient  =  T2.AccountNumber WHERE T2.Name = ""Leo Wong"""
"SELECT DISTINCT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber OR T1.Recipient  =  T2.AccountNumber WHERE T2.Name = ""Leo Wong"""
"SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name = ""Ogden Wernstrom"" INTERSECT SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Recipient  =  T2.AccountNumber WHERE T2.Name = ""Leo Wong"""
"SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name = ""Ogden Wernstrom"" INTERSECT SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Recipient  =  T2.AccountNumber WHERE T2.Name = ""Leo Wong"""
"SELECT T1.Contents FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name  =  ""John Zoidfarb"";"
"SELECT T1.Contents FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name  =  ""John Zoidfarb"";"
"SELECT T1.PackageNumber ,  max(T1.Weight) FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name LIKE ""John"";"
"SELECT T1.PackageNumber ,  max(T1.Weight) FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber WHERE T2.Name LIKE ""John"";"
SELECT PackageNumber ,  Weight FROM PACKAGE ORDER BY Weight ASC LIMIT 3;
SELECT PackageNumber ,  Weight FROM PACKAGE ORDER BY Weight ASC LIMIT 3;
SELECT T2.Name ,  count(*) FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber GROUP BY T1.Sender ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name ,  count(*) FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber GROUP BY T1.Sender ORDER BY count(*) DESC LIMIT 1;
select t2.name ,  count(*) from package as t1 join client as t2 on t1.recipient  =  t2.accountnumber group by t1.recipient order by count(*) limit 1;
select t2.name ,  count(*) from package as t1 join client as t2 on t1.recipient  =  t2.accountnumber group by t1.recipient order by count(*) limit 1;
SELECT T2.Name ,  count(*) FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber GROUP BY T1.Sender HAVING count(*)  >  1;
SELECT T2.Name ,  count(*) FROM PACKAGE AS T1 JOIN Client AS T2 ON T1.Sender  =  T2.AccountNumber GROUP BY T1.Sender HAVING count(*)  >  1;
"SELECT Coordinates FROM Planet WHERE Name  =  ""Mars"";"
"SELECT Coordinates FROM Planet WHERE Name  =  ""Mars"";"
SELECT Name ,  Coordinates FROM Planet ORDER BY Name
SELECT Name ,  Coordinates FROM Planet ORDER BY Name
"SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = ""Phillip J. Fry"";"
"SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID WHERE T2.Name = ""Phillip J. Fry"";"
SELECT Date FROM Shipment;
SELECT Date FROM Shipment;
"SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name  =  ""Mars"";"
"SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID WHERE T2.Name  =  ""Mars"";"
"SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID JOIN Employee AS T3 ON T3.EmployeeID = T1.Manager WHERE T2.Name = ""Mars"" AND T3.Name = ""Turanga Leela"";"
"SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID JOIN Employee AS T3 ON T3.EmployeeID = T1.Manager WHERE T2.Name = ""Mars"" AND T3.Name = ""Turanga Leela"";"
"SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID JOIN Employee AS T3 ON T3.EmployeeID = T1.Manager WHERE T2.Name = ""Mars"" OR T3.Name = ""Turanga Leela"";"
"SELECT T1.ShipmentID FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID JOIN Employee AS T3 ON T3.EmployeeID = T1.Manager WHERE T2.Name = ""Mars"" OR T3.Name = ""Turanga Leela"";"
SELECT T2.Name ,  count(*) FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet;
SELECT T2.Name ,  count(*) FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet;
SELECT T2.Name FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name FROM Shipment AS T1 JOIN Planet AS T2 ON T1.Planet = T2.PlanetID GROUP BY T1.Planet ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Name ,  count(*) FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID GROUP BY T1.Manager;
SELECT T2.Name ,  count(*) FROM Shipment AS T1 JOIN Employee AS T2 ON T1.Manager = T2.EmployeeID GROUP BY T1.Manager;
"SELECT sum(T1.Weight) FROM PACKAGE AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Planet AS T3 ON T2.Planet = T3.PlanetID WHERE T3.Name = ""Mars"";"
"SELECT sum(T1.Weight) FROM PACKAGE AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Planet AS T3 ON T2.Planet = T3.PlanetID WHERE T3.Name = ""Mars"";"
select t3.name ,  sum(t1.weight) from package as t1 join shipment as t2 on t1.shipment = t2.shipmentid join planet as t3 on t2.planet = t3.planetid group by t2.planet;
select t3.name ,  sum(t1.weight) from package as t1 join shipment as t2 on t1.shipment = t2.shipmentid join planet as t3 on t2.planet = t3.planetid group by t2.planet;
SELECT T3.Name FROM PACKAGE AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Planet AS T3 ON T2.Planet = T3.PlanetID GROUP BY T2.Planet HAVING sum(T1.Weight)  >  30;
SELECT T3.Name FROM PACKAGE AS T1 JOIN Shipment AS T2 ON T1.Shipment = T2.ShipmentID JOIN Planet AS T3 ON T2.Planet = T3.PlanetID GROUP BY T2.Planet HAVING sum(T1.Weight)  >  30;
"SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON  T1.Sender = T2.AccountNumber JOIN Shipment AS T3 ON T1.Shipment = T3.ShipmentID JOIN Planet AS T4 ON T3.Planet = T4.PlanetID WHERE T2.Name = ""Zapp Brannigan"" AND T4.Name = ""Omicron Persei 8"";"
"SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON  T1.Sender = T2.AccountNumber JOIN Shipment AS T3 ON T1.Shipment = T3.ShipmentID JOIN Planet AS T4 ON T3.Planet = T4.PlanetID WHERE T2.Name = ""Zapp Brannigan"" AND T4.Name = ""Omicron Persei 8"";"
"SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON  T1.Sender = T2.AccountNumber JOIN Shipment AS T3 ON T1.Shipment = T3.ShipmentID JOIN Planet AS T4 ON T3.Planet = T4.PlanetID WHERE T2.Name  =  ""Zapp Brannigan"" OR T4.Name  =  ""Omicron Persei 8"";"
"SELECT T1.PackageNumber FROM PACKAGE AS T1 JOIN Client AS T2 ON  T1.Sender = T2.AccountNumber JOIN Shipment AS T3 ON T1.Shipment = T3.ShipmentID JOIN Planet AS T4 ON T3.Planet = T4.PlanetID WHERE T2.Name  =  ""Zapp Brannigan"" OR T4.Name  =  ""Omicron Persei 8"";"
SELECT PackageNumber ,  Weight FROM PACKAGE WHERE Weight BETWEEN 10 AND 30;
SELECT PackageNumber ,  Weight FROM PACKAGE WHERE Weight BETWEEN 10 AND 30;
"SELECT Name FROM Employee EXCEPT SELECT T2.Name FROM Has_Clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID JOIN Planet AS T3 ON T1.Planet = T3.PlanetID WHERE T3.Name = ""Mars"";"
"SELECT Name FROM Employee EXCEPT SELECT T2.Name FROM Has_Clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID JOIN Planet AS T3 ON T1.Planet = T3.PlanetID WHERE T3.Name = ""Mars"";"
"SELECT T2.Name FROM Has_Clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID JOIN Planet AS T3 ON T1.Planet = T3.PlanetID WHERE T3.Name  =  ""Omega III"";"
"SELECT T2.Name FROM Has_Clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID JOIN Planet AS T3 ON T1.Planet = T3.PlanetID WHERE T3.Name  =  ""Omega III"";"
SELECT T3.Name FROM Has_Clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID JOIN Planet AS T3 ON T1.Planet = T3.PlanetID GROUP BY T1.Planet HAVING count(*)  =  1;
SELECT T3.Name FROM Has_Clearance AS T1 JOIN Employee AS T2 ON T1.Employee = T2.EmployeeID JOIN Planet AS T3 ON T1.Planet = T3.PlanetID GROUP BY T1.Planet HAVING count(*)  =  1;
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary BETWEEN 5000 AND 10000
SELECT Name FROM Employee WHERE Salary  >  5000 OR Salary  >  (SELECT avg(salary) FROM employee)
SELECT Name FROM Employee WHERE Salary  >  5000 OR Salary  >  (SELECT avg(salary) FROM employee)
"select count(*) from employee where employeeid not in ( select t2.employeeid from has_clearance as t1 join employee as t2 on t1.employee = t2.employeeid join planet as t3 on t1.planet = t3.planetid where t3.name = ""mars"" );"
"select count(*) from employee where employeeid not in ( select t2.employeeid from has_clearance as t1 join employee as t2 on t1.employee = t2.employeeid join planet as t3 on t1.planet = t3.planetid where t3.name = ""mars"" );"
SELECT count(*) FROM game
SELECT count(*) FROM game
SELECT Title ,  Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT Title ,  Developers FROM game ORDER BY Units_sold_Millions DESC
SELECT avg(Units_sold_Millions) FROM game WHERE developers != 'Nintendo'
SELECT avg(Units_sold_Millions) FROM game WHERE developers != 'Nintendo'
SELECT Platform_name ,  Market_district FROM platform
SELECT Platform_name ,  Market_district FROM platform
SELECT Platform_name ,  Platform_ID FROM platform WHERE Download_rank  =  1
SELECT Platform_name ,  Platform_ID FROM platform WHERE Download_rank  =  1
SELECT max(Rank_of_the_year) ,  min(Rank_of_the_year) FROM player
SELECT max(Rank_of_the_year) ,  min(Rank_of_the_year) FROM player
SELECT count(*) FROM player WHERE Rank_of_the_year  <=  3
SELECT count(*) FROM player WHERE Rank_of_the_year  <=  3
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name FROM player ORDER BY Player_name ASC
SELECT Player_name ,  College FROM player ORDER BY Rank_of_the_year DESC
SELECT Player_name ,  College FROM player ORDER BY Rank_of_the_year DESC
"SELECT T3.Player_name ,  T3.rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T1.Title  =  ""Super Mario World"""
"SELECT T3.Player_name ,  T3.rank_of_the_year FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T1.Title  =  ""Super Mario World"""
"SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.College  =  ""Auburn"""
"SELECT DISTINCT T1.Developers FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.College  =  ""Auburn"""
"SELECT avg(Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.Position  =  ""Guard"""
"SELECT avg(Units_sold_Millions) FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.Position  =  ""Guard"""
SELECT T1.Title ,  T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID  =  T2.Platform_ID
SELECT T1.Title ,  T2.Platform_name FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID  =  T2.Platform_ID
"SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID  =  T2.Platform_ID WHERE T2.Market_district  =  ""Asia"" OR T2.Market_district  =  ""USA"""
"SELECT T1.Title FROM game AS T1 JOIN platform AS T2 ON T1.Platform_ID  =  T2.Platform_ID WHERE T2.Market_district  =  ""Asia"" OR T2.Market_district  =  ""USA"""
SELECT Franchise ,  COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise ,  COUNT(*) FROM game GROUP BY Franchise
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise ORDER BY COUNT(*) DESC LIMIT 1
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*)  >=  2
SELECT Franchise FROM game GROUP BY Franchise HAVING COUNT(*)  >=  2
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM game_player)
"SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.College  =  ""Oklahoma"" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.College  =  ""Auburn"""
"SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.College  =  ""Oklahoma"" INTERSECT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.College  =  ""Auburn"""
SELECT DISTINCT Franchise FROM game
SELECT DISTINCT Franchise FROM game
"SELECT Title FROM game EXCEPT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.Position  =  ""Guard"""
"SELECT Title FROM game EXCEPT SELECT T1.Title FROM game AS T1 JOIN game_player AS T2 ON T1.Game_ID  =  T2.Game_ID JOIN player AS T3 ON T2.Player_ID  =  T3.Player_ID WHERE T3.Position  =  ""Guard"""
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press ORDER BY Year_Profits_billion DESC
SELECT name FROM press WHERE Year_Profits_billion  >  15 OR Month_Profits_billion  >  1
SELECT name FROM press WHERE Year_Profits_billion  >  15 OR Month_Profits_billion  >  1
SELECT avg(Year_Profits_billion) ,  max(Year_Profits_billion) FROM press
SELECT avg(Year_Profits_billion) ,  max(Year_Profits_billion) FROM press
SELECT name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT name FROM press ORDER BY Month_Profits_billion DESC LIMIT 1
SELECT name FROM press WHERE Month_Profits_billion  =  (SELECT min(Month_Profits_billion) FROM press) OR Month_Profits_billion  =  (SELECT max(Month_Profits_billion) FROM press)
SELECT name FROM press WHERE Month_Profits_billion  =  (SELECT min(Month_Profits_billion) FROM press) OR Month_Profits_billion  =  (SELECT max(Month_Profits_billion) FROM press)
SELECT count(*) FROM author WHERE age  <  30
SELECT count(*) FROM author WHERE age  <  30
SELECT avg(age) ,  gender FROM author GROUP BY gender
SELECT avg(age) ,  gender FROM author GROUP BY gender
SELECT count(*) ,  gender FROM author WHERE age  >  30 GROUP BY gender
SELECT count(*) ,  gender FROM author WHERE age  >  30 GROUP BY gender
SELECT title FROM book ORDER BY release_date DESC
SELECT title FROM book ORDER BY release_date DESC
SELECT count(*) ,  book_series FROM book GROUP BY book_series
SELECT count(*) ,  book_series FROM book GROUP BY book_series
SELECT title ,  release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT title ,  release_date FROM book ORDER BY sale_amount DESC LIMIT 5
SELECT book_series FROM book WHERE sale_amount  >  1000 INTERSECT SELECT book_series FROM book WHERE sale_amount  <  500
SELECT book_series FROM book WHERE sale_amount  >  1000 INTERSECT SELECT book_series FROM book WHERE sale_amount  <  500
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id WHERE t2.book_series  =  'MM' INTERSECT SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id WHERE t2.book_series  =  'LT'
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id WHERE t2.book_series  =  'MM' INTERSECT SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id WHERE t2.book_series  =  'LT'
SELECT name ,  age FROM author WHERE author_id NOT IN (SELECT author_id FROM book)
select name from author where author_id not in (select author_id from book)
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id GROUP BY t2.author_id HAVING count(*)  >  1
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id GROUP BY t2.author_id HAVING count(*)  >  1
SELECT t1.name ,  t2.title ,  t3.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id JOIN press AS t3 ON t2.press_id  =  t3.press_id ORDER BY t2.sale_amount DESC LIMIT 3
SELECT t1.name ,  t2.title ,  t3.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id JOIN press AS t3 ON t2.press_id  =  t3.press_id ORDER BY t2.sale_amount DESC LIMIT 3
SELECT sum(t1.sale_amount) ,  t2.name FROM book AS t1 JOIN press AS t2 ON t1.press_id  =  t2.press_id GROUP BY t1.press_id
SELECT sum(t1.sale_amount) ,  t2.name FROM book AS t1 JOIN press AS t2 ON t1.press_id  =  t2.press_id GROUP BY t1.press_id
SELECT count(*) ,  t2.name FROM book AS t1 JOIN press AS t2 ON t1.press_id  =  t2.press_id WHERE sale_amount  >  1000 GROUP BY t2.name
SELECT count(*) ,  t2.name FROM book AS t1 JOIN press AS t2 ON t1.press_id  =  t2.press_id WHERE sale_amount  >  1000 GROUP BY t2.name
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id ORDER BY t2.sale_amount DESC LIMIT 1
SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id ORDER BY t2.sale_amount DESC LIMIT 1
SELECT t1.name ,  t1.gender FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id GROUP BY t2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name ,  t1.gender FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id GROUP BY t2.author_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM author EXCEPT SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id JOIN press AS t3 ON t2.press_id  =  t3.press_id WHERE t3.name  =  'Accor'
SELECT name FROM author EXCEPT SELECT t1.name FROM author AS t1 JOIN book AS t2 ON t1.author_id  =  t2.author_id JOIN press AS t3 ON t2.press_id  =  t3.press_id WHERE t3.name  =  'Accor'
SELECT t2.name ,  t2.Year_Profits_billion FROM book AS t1 JOIN press AS t2 ON t1.press_id  =  t2.press_id GROUP BY t2.press_id HAVING count(*)  >  2
SELECT t2.name ,  t2.Year_Profits_billion FROM book AS t1 JOIN press AS t2 ON t1.press_id  =  t2.press_id GROUP BY t2.press_id HAVING count(*)  >  2
SELECT count(*) FROM Authors
SELECT author_name FROM Authors
SELECT author_name ,  other_details FROM Authors
"SELECT other_details FROM Authors WHERE author_name  =  ""Addison Denesik"""
SELECT count(*) FROM Documents
SELECT author_name FROM Documents WHERE document_id  =  4
"SELECT author_name FROM Documents WHERE document_name  =  ""Travel to Brazil"""
"SELECT count(*) FROM Documents WHERE author_name  =  ""Era Kerluke"""
SELECT document_name ,  document_description FROM Documents
"SELECT document_id ,  document_name FROM Documents WHERE author_name  =  ""Bianka Cummings"""
"SELECT T2.author_name ,  T2.other_details FROM Documents AS T1 JOIN Authors AS T2 ON T1.author_name  =  T2.author_name WHERE document_name  =  ""Travel to China"""
SELECT author_name ,  count(*) FROM Documents GROUP BY author_name
SELECT author_name FROM Documents GROUP BY author_name ORDER BY count(*) DESC LIMIT 1
SELECT author_name FROM Documents GROUP BY author_name HAVING count(*)  >=  2
SELECT count(*) FROM Business_processes
SELECT next_process_id ,  process_name ,  process_description FROM Business_processes WHERE process_id  =  9
SELECT process_name FROM Business_processes WHERE process_id  =  (SELECT next_process_id FROM Business_processes WHERE process_id  =  9)
SELECT count(*) FROM Process_outcomes
SELECT process_outcome_code ,  process_outcome_description FROM Process_outcomes
"SELECT process_outcome_description FROM Process_outcomes WHERE process_outcome_code  =  ""working"""
SELECT count(*) FROM Process_status
SELECT process_status_code ,  process_status_description FROM Process_status
"SELECT process_status_description FROM Process_status WHERE process_status_code  =  ""ct"""
SELECT count(*) FROM Staff
SELECT staff_id ,  staff_details FROM Staff
SELECT staff_details FROM Staff WHERE staff_id  =  100
SELECT count(*) FROM Ref_staff_roles
SELECT staff_role_code ,  staff_role_description FROM Ref_staff_roles
"SELECT staff_role_description FROM Ref_staff_roles WHERE staff_role_code  =  ""HR"""
SELECT count(DISTINCT document_id) FROM Documents_processes
SELECT DISTINCT process_id FROM Documents_processes
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_processes
SELECT process_id FROM Business_processes EXCEPT SELECT process_id FROM Documents_processes
SELECT T2.process_outcome_description ,  T3.process_status_description FROM Documents_processes AS T1 JOIN Process_outcomes AS T2 ON T1.process_outcome_code  =  T2.process_outcome_code JOIN Process_Status AS T3 ON T1.process_status_code  =  T3.process_status_code WHERE T1.document_id  =  0
"SELECT T3.process_name FROM Documents_processes AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id JOIN Business_processes AS T3 ON T1.process_id  =  T3.process_id WHERE T2.document_name  =  ""Travel to Brazil"""
SELECT process_id ,  count(*) FROM Documents_processes GROUP BY process_id
SELECT count(*) FROM Staff_in_processes WHERE document_id  =  0 AND process_id  =  9
SELECT staff_id ,  count(*) FROM Staff_in_processes GROUP BY staff_id
SELECT staff_role_code ,  count(*) FROM Staff_in_processes GROUP BY staff_role_code
SELECT count(DISTINCT staff_role_code) FROM Staff_in_processes WHERE staff_id  =  3
SELECT count(*) FROM Agencies
SELECT count(*) FROM Agencies
SELECT agency_id ,  agency_details FROM Agencies
SELECT agency_id ,  agency_details FROM Agencies
SELECT count(*) FROM Clients
SELECT count(*) FROM Clients
SELECT client_id ,  client_details FROM Clients
SELECT client_id ,  client_details FROM Clients
SELECT agency_id ,  count(*) FROM Clients GROUP BY agency_id
SELECT agency_id ,  count(*) FROM Clients GROUP BY agency_id
SELECT T1.agency_id ,  T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id  =  T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id ,  T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id  =  T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id ,  T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id  =  T2.agency_id GROUP BY T1.agency_id HAVING count(*)  >=  2
SELECT T1.agency_id ,  T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id  =  T2.agency_id GROUP BY T1.agency_id HAVING count(*)  >=  2
SELECT T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id  =  T2.agency_id WHERE T1.client_details  =  'Mac'
SELECT T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id  =  T2.agency_id WHERE T1.client_details  =  'Mac'
SELECT T1.client_details ,  T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id  =  T2.agency_id
SELECT T1.client_details ,  T2.agency_details FROM Clients AS T1 JOIN Agencies AS T2 ON T1.agency_id  =  T2.agency_id
SELECT sic_code ,  count(*) FROM Clients GROUP BY sic_code
SELECT sic_code ,  count(*) FROM Clients GROUP BY sic_code
"SELECT client_id ,  client_details FROM Clients WHERE sic_code  =  ""Bad"";"
"SELECT client_id ,  client_details FROM Clients WHERE sic_code  =  ""Bad"";"
SELECT T1.agency_id ,  T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id  =  T2.agency_id
SELECT T1.agency_id ,  T1.agency_details FROM Agencies AS T1 JOIN Clients AS T2 ON T1.agency_id  =  T2.agency_id
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT agency_id FROM Agencies EXCEPT SELECT agency_id FROM Clients
SELECT count(*) FROM Invoices
SELECT count(*) FROM Invoices
SELECT invoice_id ,  invoice_status ,  invoice_details FROM Invoices
SELECT invoice_id ,  invoice_status ,  invoice_details FROM Invoices
SELECT client_id ,  count(*) FROM Invoices GROUP BY client_id
SELECT client_id ,  count(*) FROM Invoices GROUP BY client_id
SELECT T1.client_id ,  T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id  =  T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id ,  T2.client_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id  =  T2.client_id GROUP BY T1.client_id ORDER BY count(*) DESC LIMIT 1
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*)  >=  2
SELECT client_id FROM Invoices GROUP BY client_id HAVING count(*)  >=  2
SELECT invoice_status ,  count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status ,  count(*) FROM Invoices GROUP BY invoice_status
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT invoice_status FROM Invoices GROUP BY invoice_status ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_status ,  T1.invoice_details ,  T2.client_id ,  T2.client_details ,  T3.agency_id ,  T3.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id  =  T2.client_id JOIN Agencies AS T3 ON T2.agency_id  =  T3.agency_id
SELECT T1.invoice_status ,  T1.invoice_details ,  T2.client_id ,  T2.client_details ,  T3.agency_id ,  T3.agency_details FROM Invoices AS T1 JOIN Clients AS T2 ON T1.client_id  =  T2.client_id JOIN Agencies AS T3 ON T2.agency_id  =  T3.agency_id
SELECT meeting_type ,  other_details FROM meetings
SELECT meeting_type ,  other_details FROM meetings
SELECT meeting_outcome ,  purpose_of_meeting FROM meetings
SELECT meeting_outcome ,  purpose_of_meeting FROM meetings
SELECT T1.payment_id ,  T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id  =  T2.invoice_id WHERE T2.invoice_status  =  'Working'
SELECT T1.payment_id ,  T1.payment_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id  =  T2.invoice_id WHERE T2.invoice_status  =  'Working'
SELECT invoice_id ,  invoice_status FROM Invoices EXCEPT SELECT T1.invoice_id ,  T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id  =  T2.invoice_id
SELECT invoice_id ,  invoice_status FROM Invoices EXCEPT SELECT T1.invoice_id ,  T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id  =  T2.invoice_id
SELECT count(*) FROM Payments
SELECT count(*) FROM Payments
SELECT payment_id ,  invoice_id ,  payment_details FROM Payments
SELECT payment_id ,  invoice_id ,  payment_details FROM Payments
SELECT DISTINCT T1.invoice_id ,  T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id  =  T2.invoice_id
SELECT DISTINCT T1.invoice_id ,  T1.invoice_status FROM Invoices AS T1 JOIN Payments AS T2 ON T1.invoice_id  =  T2.invoice_id
SELECT invoice_id ,  count(*) FROM Payments GROUP BY invoice_id
SELECT invoice_id ,  count(*) FROM Payments GROUP BY invoice_id
SELECT T1.invoice_id ,  T2.invoice_status ,  T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id  =  T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.invoice_id ,  T2.invoice_status ,  T2.invoice_details FROM Payments AS T1 JOIN Invoices AS T2 ON T1.invoice_id  =  T2.invoice_id GROUP BY T1.invoice_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Staff
SELECT count(*) FROM Staff
SELECT agency_id ,  count(*) FROM Staff GROUP BY agency_id
SELECT agency_id ,  count(*) FROM Staff GROUP BY agency_id
SELECT T1.agency_id ,  T2.agency_details FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id  =  T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.agency_id ,  T2.agency_details FROM Staff AS T1 JOIN Agencies AS T2 ON T1.agency_id  =  T2.agency_id GROUP BY T1.agency_id ORDER BY count(*) DESC LIMIT 1
SELECT meeting_outcome ,  count(*) FROM Meetings GROUP BY meeting_outcome
SELECT meeting_outcome ,  count(*) FROM Meetings GROUP BY meeting_outcome
SELECT client_id ,  count(*) FROM Meetings GROUP BY client_id
SELECT client_id ,  count(*) FROM Meetings GROUP BY client_id
SELECT meeting_type ,  count(*) FROM Meetings GROUP BY meeting_type
SELECT meeting_type ,  count(*) FROM Meetings GROUP BY meeting_type
SELECT T1.meeting_id ,  T1.meeting_outcome ,  T1.meeting_type ,  T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id  =  T2.client_id
SELECT T1.meeting_id ,  T1.meeting_outcome ,  T1.meeting_type ,  T2.client_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id  =  T2.client_id
SELECT meeting_id ,  count(*) FROM Staff_in_meetings GROUP BY meeting_id
SELECT meeting_id ,  count(*) FROM Staff_in_meetings GROUP BY meeting_id
SELECT staff_id ,  count(*) FROM Staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT staff_id ,  count(*) FROM Staff_in_meetings GROUP BY staff_id ORDER BY count(*) ASC LIMIT 1;
SELECT count(DISTINCT staff_id) FROM Staff_in_meetings
SELECT count(DISTINCT staff_id) FROM Staff_in_meetings
SELECT count(*) FROM Staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_meetings )
SELECT count(*) FROM Staff WHERE staff_id NOT IN ( SELECT staff_id FROM Staff_in_meetings )
SELECT T1.client_id ,  T1.client_details FROM Clients AS T1 JOIN meetings AS T2 ON T1.client_id  =  T2.client_id UNION SELECT T1.client_id ,  T1.client_details FROM Clients AS T1 JOIN invoices AS T2 ON T1.client_id  =  T2.client_id
SELECT T1.client_id ,  T1.client_details FROM Clients AS T1 JOIN meetings AS T2 ON T1.client_id  =  T2.client_id UNION SELECT T1.client_id ,  T1.client_details FROM Clients AS T1 JOIN invoices AS T2 ON T1.client_id  =  T2.client_id
"SELECT staff_id ,  staff_details FROM staff WHERE staff_details LIKE ""%s%"" GROUP BY staff_id HAVING count(*)  >=  1"
"SELECT staff_id ,  staff_details FROM staff WHERE staff_details LIKE ""%s%"" GROUP BY staff_id HAVING count(*)  >=  1"
SELECT T1.client_id ,  T1.sic_code ,  T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id  =  T2.client_id GROUP BY T1.client_id HAVING count(*)  =  1 INTERSECT SELECT T1.client_id ,  T1.sic_code ,  T1.agency_id FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id  =  T2.client_id
SELECT T1.client_id ,  T1.sic_code ,  T1.agency_id FROM clients AS T1 JOIN meetings AS T2 ON T1.client_id  =  T2.client_id GROUP BY T1.client_id HAVING count(*)  =  1 INTERSECT SELECT T1.client_id ,  T1.sic_code ,  T1.agency_id FROM clients AS T1 JOIN invoices AS T2 ON T1.client_id  =  T2.client_id
SELECT T1.start_date_time ,  T1.end_date_time ,  T2.client_details ,  T4.staff_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id  =  T2.client_id JOIN staff_in_meetings AS T3 ON T1.meeting_id  =  T3.meeting_id JOIN staff AS T4 ON T3.staff_id  =  T4.staff_id
SELECT T1.start_date_time ,  T1.end_date_time ,  T2.client_details ,  T4.staff_details FROM meetings AS T1 JOIN clients AS T2 ON T1.client_id  =  T2.client_id JOIN staff_in_meetings AS T3 ON T1.meeting_id  =  T3.meeting_id JOIN staff AS T4 ON T3.staff_id  =  T4.staff_id
