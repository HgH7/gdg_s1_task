Create database retailstore;
use retailstore;

Create Table Customers(
CustomerID int primary key,
Firstname Varchar(20),
Lastname Varchar(20),
Email Varchar(20),
RegistraionDate date
);
Create table Product(
ProductID int primary key,
ProductName Varchar(20),
Category Varchar(20),
Price decimal(10,2),
StockQuantity int
);
create table Orders(
OrderID int primary key,
CustomerID int,
ProductID int,
Foreign Key (CustomerID) references Customers(CustomerID),
foreign key (ProductID) references Product(ProductID),
OrderDate Date,
Quantity int
);

insert into Customers
values
(1, 'mohsen', 'ahmed', 'helloitsme@gmail.com', '2021-04-11'),
(2, 'mohsen', 'ahmed', 'helloitsme@gmail.com', '2020-05-07'),
(3, 'mohsen', 'ahmed', 'helloitsme@gmail.com', '2011-06-21'),
(4, 'Ziad', 'Rageb', 'ZIadra@gmail.com', '2023-11-05'),
(5, 'momen', 'mahmod', 'hacker@gmail.com', '2024-05-06');
insert into Product
values 
(1, 'Laptop', 'Electronics', 850.99, 10),
(2, 'Phone', 'Electronics', 499.99, 25),
(3, 'Chair', 'Furniture', 75.50, 30),
(4, 'Table', 'Furniture', 120.00, 15),
(5, 'Headphones', 'Accessories', 59.99, 50);
insert into Orders
values 
(1, 1, 3, '2024-02-10', 2),
(2, 2, 1, '2024-02-11', 1),
(3, 3, 5, '2024-02-12', 4),
(4, 4, 2, '2024-02-13', 3),
(5, 5, 4, '2024-02-14', 1);

select * from Customers;
select * from Product;
select * from Orders;

select Firstname from Customers where RegistraionDate > '2011-06-21';

select * from Product
order by Price desc
limit 3;

select Firstname, ProductName, Category, Price, OrderID
from Product
inner join Orders on Product.ProductID = Orders.ProductID
inner join Customers on Orders.CustomerID = Customers.CustomerID;