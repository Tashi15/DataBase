-- 1. Display the name and city of customers who live in any city that makes the most different kinds of products. (There are two cities that make the most different products. Return the name and city of customers from either one of those.)
      Select name, city
      From customers 
      where city in (select city
                     from products 
                     group by city 
                     having count(city) = (select count(city)
                                           from products 
                                           group by city
                                           order by count(city) Desc 
                                           limit 1));
      
-- 2. Display the names of products whose priceUSD os strictly above the average priceUSD, in reverse alphabetical order.
      select name
      from products
      where priceUSD > (select avg(priceUSD)
                        FROM products)
                        order by name desc;
                        
-- 3. Display the customer name, pid ordered, and the total for all orders, sorted by total from high to low.
      select c.name, o.pid, sum(o.dollars)
      from customers c inner join orders o on c.cid = o.cid
      group by c.name, o.pid
      order by sum(o.dollars) desc;
      
-- 4. Display all customer names (in alphabetical order) and their total ordered, and nothing more. Use coalesce to avoid showing NULLS.
      select c.name, o.pid, sum(coalesce(o.dollars))
      from customers c
      inner join orders o
      on c.cid = o.cid
      group by o.pid, c.name
      order by sum(o.dollars) desc;
      
-- 5. Display the names of all customers who bought products from agents based in Tokyo along with the names of the products they ordered, and the names of the agents who sold it to them.
      select customers.name, products.name, agents.name
      from customers
      inner join orders
      on customers.cid = orders.cid
      inner join products
      on orders.pid = products.pid
      inner join agents
      on agents.aid = orders.aid
      where agents.city = 'Tokyo';
      
-- 6. Write a query to check the accuracy of dollars column in the Orders tabe. This means calculating Orders.totalUSD from data in other tables anf comparing those values to the values in Order.totalUSD. Display all rows in Orders where Orders.totalISD is incorrect, if any.
      select dollars, o.qty*priceUSD*(1-(discount/100)) As truetotal
      from orders o
      inner join products p on o.pid = p.pid
      inner join customers c on o.cid = c.cid
      where dollars not in (select o.qty*p.priceUSD*(1-discount/100) As truetotal
                            from orders o
                            inner join products p on o.pid = p.pid
                            inner join customers c on o.cid = c.cid);
                            
-- 7. What is the difference between a LEFT OUTER JOIN and a RIGHT OUTER JOIN? Give example queries in SQL to demostrate. (Feel free to use the CAP2 database to make your points here.)
      Main difference between RIGHT OUTER join and LEFT OUTER join, as there name suggest, is inclusion of non matched rows. Since INNER join only include matching rows, where value of joining column is same, in final result set, but OUTER join extends that functionality and 
      also include unmatched rows in final result. LEFT outer join includes unmatched rows from table written on left of join predicate. On the other hand RIGHT OUTER join, along with all matching rows, includes unmatched rows from right side of table. 
      Example of inner join queries -
         select c.name, o.pid, sum(o.dollars)
         from customers c inner join orders o on c.cid = o.cid
         group by c.name, o.pid
         order by sum(o.dollars) desc;

     Example of outer join queries - 
         select c.name
         from customers c
         full outer join orders o
         on c.cid = o.cid
         where o.cid is null;

