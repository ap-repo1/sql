SELECT Name FROM client_master WHERE Name like '_a%';
SELECT Name FROM client_master WHERE City NOT LIKE 'B%';
SELECT Name,City from client_master WHERE length(Name)=12 and Name like 'I%';
select Name,City from client_master WHERE City in ('Bombay','Delhi');
select * from client_master where Balance_due>10000;
select * from sales_order where TO_CHAR(Order_date,'MON')like 'JAN';
select * from sales_order where Client_no in ('C001','C002');
select * from product_master where Sell_price>2000 and Sell_price<5000;
select Product_no,Description,Sell_price*1.15 as "NEW_PRICE" from product_master where Sell_price>1500;
select Name,City,State from client_master where State not in ('Maharastra');
select TO_CHAR(Delivery_date,'MON') as "Month",TO_CHAR(Delivery_date,'Day') as "Day" from sales_order where Order_status in 'Fullfilled';
select TO_CHAR(Order_date,'DD-Month-YY') as "TIME TABLE" from sales_order;
select SYSDATE+15 from dual;