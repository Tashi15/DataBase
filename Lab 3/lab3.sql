﻿

-- 1. List the ordno and dollars of all orders.
      select ordno, dollars from orders;

-- 2. List the name and city of agents named Smith.
      select name, city from agents where name = 'Smith';

-- 3. List the pid, name, and priceUSD of products with quantity more than 208000.
      select pid, name, priceUSD from products where quantity > 208000;

-- 4. List the names and cities of customers in Dallas.
      select name, city from customers where city = 'Dallas';

-- 5. List the names of agents not in New York and Not in Tokyo.
      select name from agents where city not in ('New York', 'Tokyo');

-- 6. List all data for products not in Dallas or Duluth that cost US$1 or more.
      select * from products where city not in ('Dallas', 'Duluth') and priceUSD >= 1;

-- 7. List all data for orders in January or March.
      select * from orders where mon in ('jan', 'mar');

-- 8. List all for data for orders in February less than US$500.
      select * from orders where mon = 'feb' and dollars < 500;

-- 9. List all orders from the customer whose cid is C005.
      select * from customers where cid = 'c005';

