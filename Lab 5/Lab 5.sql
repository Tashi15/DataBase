-- 1. show the cities of agents booking an order a customer whose id is 'c002'. Use joins; no subquiries.
      select a.city 
      from agents a
      inner join orders o
      on a.aid = o.aid
      where o.cid ='c002';

-- 2. Show the ids of products ordered through any agents who makes at least one order for a customer in Dallas, sorted by pid from highest to lowest. Use joins; no subquiries
      select distinct o.pid
      from orders o
      inner join customers c
      on o.cid = c.cid
      where c.city in ('Dallas')
      order by pid desc;

-- 3. Show the names of customers who have never placed an order. Use a subquery.
      select c.name
      from customers c
      where c.cid not in (select o.cid
      from orders o);

-- 4. Show the names of the customers who placed atleast one order. Use an outer join. 
      select c.name
      from customers c
      full outer join orders o
      on c.cid = o.cid
      where o.cid is null;

-- 5. Show the names of customers who placed at least one order through an agent in their own city, along with those agents(s') names.
      select c.name
      from customers c
      inner join agents a 
      on c.city = a.city
      where c.city = a.city;

-- 6. Show the names of customers and agents living in the same city, along with the name of the shared city, regardless of whether or not the customer has ever placed an order with that agent.
      select c.name, a.name, c.city
      from customers c, agents a 
      where c.city = a.city;

-- 7. Show the name and city of customers who live in the city that makes the fewest different kinds of products. (Hint: Use count and group by on the products table).
      select c.name, c.city
      from customers c
      where c.city in (select city
      from products
      group by city
      order by count (pid) asc limit 1)






