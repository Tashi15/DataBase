-- 1. Manufacturers Table

      create table Manufacturers (
      ManufacturerID int not null,
      CompanyName text not null,
      ContactName text not null,
      Address text not null,
      ZipCode int not null,
      Email text not null,
      Phone text not null,
      CreateOn date not null,
      Primary key (ManufacturerID)
      );

      Insert into Manufacturers values (1,'Shirley Fashion', 'Micheal Ballack', '27 Main St NY', 12601,'Micheal21@yahoo.com', '646-674-7840', '12-August-2015');
      Insert into Manufacturers values (2,'Jonny Fashion', 'John Cena', '14 St Woodside NY', 11644,'Jonny1@yahoo.com', '561-308-2166','11-February-2015');
      Insert into Manufacturers values (3, 'Revo Industries', 'Mark Cuben', '226 Flushing NY', 10651, 'MikeCuben@yahoo.com', '845-973-2911', '01-March-2015');
      Insert into Manufacturers values (4,'Moda Genesis', 'Juan Diaz', '242 Hamton St New Jersey', 11401,'Juan242@yahoo.com', '845-973-2110', '23-September-2015');
      Insert into Manufacturers values (5,'Carla Fashion', 'Carla Ross', '118 Franklin Ave New Jersey', 10060,'Carla456@yahoo.com', '273-123-4567', '27-August-2015');
      Insert into Manufacturers values (6,'Ronaldo Fashion', 'Cristiano Ronaldo', '23 Roosevelt Chicago', 11788,'Cristiano07@yahoo.com', '845-123-4567', '11-June-2015');
      Insert into Manufacturers values (7,'Sonam Fashion', 'Sonam Dolkar', '12 Main St Queens NY', 11601,'Dolkar21@yahoo.com', '845-123-4567', '01-January-2015');
      Insert into Manufacturers values (8,'Joseph Fashion', 'Joseph Thomson', '1 Union Square NY', 11201,'Josephswag@yahoo.com', '845-212-1506', '23-August-2015');
      Insert into Manufacturers values (9,'Girl Fashion', 'Micheala Smith', '25 Main St California', 13370,'Micheala91@yahoo.com', '646-854-4342', '17-May-2015');
      Insert into Manufacturers values (10,'Mens Fashion', 'Mike Burry', '13 Park Avenue NY', 12601,'MikeB@yahoo.com', '845-223-4367', '01-July-2015');
      Insert into Manufacturers values (11,'Jenny Fashion', 'Jenny Kim', '1 Flushing NY', 13601,'Jeny34@yahoo.com', '646-443-3567', '12-August-2015');
      Insert into Manufacturers values (12,'Pablo Fashion', 'Pablo Reeves', '27 Main St Florida', 19601,'Pablo11@yahoo.com', '821-123-4567', '01-August-2015');

      select *
      from Manufacturers

-- 2. Product Table

      Create table product (
      ProductID INT NOT NULL,
      ProductName text not null,
      CategoryID int not null,
      ManufacturerID int NOT NULL,
      UnitPrice int not null,
      UnitsInStock int not null,
      UnitsInOrder int not null,
      CreatedOn date not null,
      primary key (productID)
      );

      insert into product values (101, 'Jeans', 550, 1, 35, 100, 300, '14-May-2015');
      insert into product values (102, 'Running Shoes', 551, 2, 60, 50, 100, '1-June-2015');
      insert into product values (103, 'Soccer Shoes', 552, 3, 110, 20, 150, '27-May-2015');
      insert into product values (104, 'Jeans', 553, 4, 29, 50, 150, '23-August-2015');
      insert into product values (105, 'Pants', 554, 5, 40, 100, 100, '7-May-2015');
      insert into product values (106, 'Khaki Pants', 555, 6, 25, 50, 25, '28-January-2015');
      insert into product values (107, 'T-shirt', 556, 7, 15, 150, 200, '5-December-2015');
      insert into product values (108, 'Socks', 557, 8, 05, 100, 50, '12-July-2015');
      insert into product values (109, 'Jewelry', 558, 9, 200, 50, 20, '14-March-2015');
      insert into product values (110, 'Bag', 559, 10, 45, 100, 30, '21-May-2015');

      select *
      from product

-- 3. Shopping Carts Table

      create table ShoppingCarts (
      ShoppingCartID int not null,
      CustomerID int not null,
      ProductID int not null,
      QuantityToOrder int not null,
      primary key (ShoppingCartID)
      );

      insert into ShoppingCarts values (1001, 1, 101, 2);
      insert into ShoppingCarts values (1002, 7, 111, 6);
      insert into ShoppingCarts values (1003, 5, 109, 1);
      insert into ShoppingCarts values (1004, 6, 104, 3);
      insert into ShoppingCarts values (1005, 8, 115, 4);
      insert into ShoppingCarts values (1006, 17, 107, 2);
      insert into ShoppingCarts values (1007, 12, 102, 3);
      insert into ShoppingCarts values (1008, 21, 113, 2);
      insert into ShoppingCarts values (1009, 18, 106, 6);
      insert into ShoppingCarts values (1010, 11, 108, 1);

      select * 
      from ShoppingCarts

-- 4. Orders Table

      create table Orders (
      OrderID INT not null,
      CustomerID INT NOT NULL,
      OrderDate date not null,
      ShippingDate Date not null,
      ShipVia text not null,
      ShipName text not null,
      ShipAddress text not null,
      ShipZipCode int not null,
      ShipEmail text not null,
      pRIMARY key (OrderID)
      );

      insert into Orders values (10001, 2,'8-June-2015','10-June-2015','UPS', 'Greg Lyall', '27 Madison Ave NY', 11345, 'Greg712@gmail.com');
      insert into Orders values (10002, 6,'13-May-2015','15-May-2015','UPS', 'Carlos Tevez', '15 Union Square NY', 12545, 'Tevez1@gmail.com');
      insert into Orders values (10003, 4,'2-July-2015','4-July-2015','UPS', 'Ronaldnho Gacho', '31 Sunnyside NY', 11345, 'Ronaldinho@gmail.com');
      insert into Orders values (10004, 9,'1-October-2015','3-October-2015','UPS', 'Lionel Messi', '68 Woodside NY', 11377, 'Messi19@gmail.com');
      insert into Orders values (10005, 1,'29-March-2015','1-April-2015','UPS', 'Sean Parker', '12 New Paltz Utah', 14345, 'Parker@gmail.com');
      insert into Orders values (10006, 7,'1-January-2015','4-January-2015','UPS', 'Robert Pattison', '1 hills California', 10945, 'Pattison@gmail.com');
      insert into Orders values (10007, 8,'1-June-2015','4-June-2015','UPS', 'Kristen Stewart', 'Junction Blvd Texas', 16311, 'Stewart@gmail.com');
      insert into Orders values (10008, 5,'12-May-2015','14-May-2015','UPS', 'Adam Smith', '11 Madison Ave NY', 11311, 'AdamSmith@gmail.com');

      select * 
      from Orders

-- 5. OrderDetails Table

      create table OrderDetails (
      OrderDetailID int not null,
      OrderID int not null,
      ProductID int not null,
      UnitPrice Int not null,
      Quantity int not null,
      Discount text not null,
      primary key (OrderDetailID)
      );

      INSERT INTO OrderDetails values(159011, 10006, 106, 45, 150, '10%');
      INSERT INTO OrderDetails values(159012, 10002, 102, 25, 60, '20%');
      INSERT INTO OrderDetails values(159013, 10003, 101, 15, 200, '5%');
      INSERT INTO OrderDetails values(159014, 10006, 108, 60, 50, '30%');
      INSERT INTO OrderDetails values(159015, 10006, 103, 45, 50, '15%');
      INSERT INTO OrderDetails values(159016, 10006, 107, 50, 25, '10%');
      INSERT INTO OrderDetails values(159017, 10006, 109, 15, 150, '5%');
      INSERT INTO OrderDetails values(159018, 10006, 104, 45, 130, '10%');


      select * 
      from OrderDetails

-- 6. Customers Table

      CREATE TABLE Customers (
      CustomerID INT NOT NULL, 
      LastName text not null,
      FirstName text not null,
      Address text not null,
      ZipCode int not null,
      Email text not null,
      Phone text not null,
      DateOfBirth text not null,
      PaymentID text not null,
      Primary key (CustomerID)
      );

      INSERT INTO Customers values (1, 'Thomson', 'Joseph', '12 Harlem NY', 11234, 'Joseph21@gmail.com', '646-679-9021', '1-March-1995', 123456);
      INSERT INTO Customers values (2, 'Smith', 'John', '9 Baker Street NY', 10214, 'JohnSmith@gmail.com', '646-710-2221', '14-June-1992', 234567);
      INSERT INTO Customers values (3, 'Dasilva', 'Neymar', '135 Woodside Avenue NY', 14334, 'Neymar@gmail.com', '843-119-2034', '4-October-1997', 345678);
      INSERT INTO Customers values (4, 'kaka', 'Ricardo', '12 Poughkeepsie NY', 11374, 'Kaka21@gmail.com', '646-111-5467', '18-July-1987', 456789);
      INSERT INTO Customers values (5, 'Bale', 'Gareth', '152 New Paltz NY', 12344, 'Bale10@gmail.com', '646-456-7890', '21-September-1983', 567890);
      INSERT INTO Customers values (6, 'Suarez', 'Luis', '17 Hudson Valley NY', 11344, 'Suarez@gmail.com', '845-290-5555', '17-August-1979', 987654);
      INSERT INTO Customers values (7, 'Zidane', 'Zinedi', '95 Syracuse NY', 10971, 'Zidane@gmail.com', '646-892-2011', '6-April-1980', 876543);
      INSERT INTO Customers values (8, 'Hernandez', 'Javier', '24 Chicago', 10001, 'Chicarito@gmail.com', '646-302-1802', '25-December-1994', 765432);
      INSERT INTO Customers values (9, 'Santos', 'Givani', '117 Bufallo California', 12221, 'Santos@gmail.com', '845-718-1378', '15-March-1991', 654321);

      select *
      from Customers

-- 7. Shippers Table

      create table shippers (
      ShipperID INT NOT NULL,
      CompanyName Text NOT NULL,
      TrackNumber int not null,
      PhoneNumber text not null,
      Primary kEY (ShipperID)
      );
      
      insert into Shippers values (101, 'FedEx', 1931678212, '646-675-2910');
      insert into Shippers values (102, 'FedEx', 1931672242, '646-623-2344');
      insert into Shippers values (103, 'FedEx', 1931612332, '845-663-5343');
      insert into Shippers values (104, 'FedEx', 1931678490, '917-123-4355');
      insert into Shippers values (105, 'FedEx', 1931234422, '646-645-6464');
      insert into Shippers values (106, 'FedEx', 1931192344, '917-867-4577');
      insert into Shippers values (107, 'FedEx', 1931623423, '845-456-2111');
      insert into Shippers values (108, 'FedEx', 1932342525, '917-234-1239');
      insert into Shippers values (109, 'FedEx', 1932342342, '646-323-1290');
      insert into Shippers values (110, 'FedEx', 1936343657, '845-642-9233');
      insert into Shippers values (111, 'FedEx', 1933463466, '646-623-2343');
      insert into Shippers values (112, 'FedEx', 1931634534, '646-123-4212');

      select * from shippers

-- 8. Categories Table

      Create table Categories (
      CategoryID INT NOT NULL,
      CategoryName text not null,
      Description text not null,
      Pictures Text not null,
      Primary KEY (CategoryID)
      );

      insert into Categories values (501, 'Tops', 'Graphic Tees', 'images/tees.png');
      insert into Categories values (502, 'Bottoms', 'Shorts', 'images/shorts.png');
      insert into Categories values (503, 'Jeans', 'Skinny Jeans', 'images/skinnyjeans.png');
      insert into Categories values (504, 'UnderWear', 'Classic Trunk', 'images/underwear.png');
      insert into Categories values (505, 'Socks', 'Bill Fun Socks', 'images/socks.png');
      insert into Categories values (506, 'Bags', 'Fashion Bag', 'images/bags.png');
      insert into Categories values (507, 'Shoes', 'Canvas Shoes', 'images/shoes.png');
      insert into Categories values (508, 'Accesories', 'Belt', 'images/belt.png');

      select * 
      from Categories

-- 9. Payment Table

      create table Payment (
      PaymentID INT NOT NULL,
      PaymentType text not null,
      Primary KEY (PaymentID)
      );

      INSERT INTO Payment values (123456, 'Paypal');
      INSERT INTO Payment values (234567, 'Visa');
      INSERT INTO Payment values (345678, 'MasterCard');
      INSERT INTO Payment values (456789, 'American Express');
      INSERT INTO Payment values (567890, 'Paypal');
      INSERT INTO Payment values (987654, 'MasterCard');
      INSERT INTO Payment values (876543, 'Visa');
      INSERT INTO Payment values (765432, 'Paypal');


      select * 
      from Payment


--------------VIEWS---------------

-- 1. CheapestProduct

      create view CheapestProduct AS
      select ProductId,
             ProductName,
             UnitPrice
      From Product
      order by UnitPrice ASC;

-- 2. ExpensiveProduct

      Create view ExpensiveProduct AS
      SELECT ProductID, 
             ProductName,
             UnitPrice
      From Product
      order by UnitPrice desc

-- 3. Tops

      create view Tops AS
      SELECT CategoryName,
             Description,
             Pictures
      From Categories
      where CategoryName = 'Tops'
      
-- 4. Shoes

      create view Shoes AS 
      SELECT CategoryName,
             Description,
             Pictures
      From Categories
      where CategoryName = 'Shoes'

-- 5. MoreThanTwoProduct

      create view MoreThanTwoProduct as
      select OrderID,
             Quantity,
             UnitPrice
      From OrderDetails
      where Quantity > 2

-- 6. HundredDollarOrMore

      create view FiftyDollarOrMore as
      select OrderID,
             ProductID,
             UnitPrice,
             Quantity
      From OrderDetails
      where UnitPrice > 50

------------Report---------------------

-- 1. UnitInStock

      select ProductID,
             ProductName,
             UnitPrice,
             UnitsInStock
      From Product
      Order by UnitsInStock desc

-- 2. DiscountReport

      select OrderID,
             ProductID,
             UnitPrice,
             Quantity,
             Discount
      From OrderDetails
      order by Discount desc

-- 3. ProductSold

      Select OrderID,
             ProductID,
             UnitPrice,
             Quantity
      From OrderDetails
      order by Quantity desc

-- 4. ShippingReport

      select OrderID,
             CustomerID,
             OrderDate,
             ShippingDate
      From Orders
      order by OrderDate asc

------- StoredProcedures ------

-- 1. Add_ShoppingCarts

      create or replace function add_ShoppingCarts()
      RETURNS trigger as
      $$
         begin 
           if new.ProductID is NULL THEN
           RAISE EXCEPTION 'Invalid OrderID provided';
           end if;
           insert into ShoppingCarts (ProductID, CustomerID, QuantityToOrder)
                  values(new.ProductID, '3');
            return new;
            end;
            $$language plpgsql;


-- 2. Add_OrderDateAndShippingDate

      create or replace function add_OrderDateAndShippingDate()
      Returns trigger as
         $$
            BEGIN
            if NEW.OrderID IS NULL THEN
            RAISE EXCEPTION 'Invalid OrderID Provided';
            end if;
            insert into Orders (OrderID, CustomerID, OrderDate, ShippingDate)
                  values (NEW.OrderID, 8,'8-March-2015','10-March-2015');
                  return NEW;
                  END;
                  $$LANGUAGE plpgsql;

--------TRIGGERS---------

-- 1. AddThingsToCarts
      
      create trigger addThingsToCarts
      Before insert or update on ShoppingCarts
      for each row
      execute procedure add_ShoppingCarts();


      
-- 2. FixedShippingDate

      create trigger FixedShippingDate
      after UPDATE on Orders
      for each row
      execute procedure add_OrderDateAndShippingDate()


    