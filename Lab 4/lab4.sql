-- 1. Get the cities of agents booking an order for a customer whose cid is 'c002'.
      select city
      From agents 
      where aid in (select aid 
		    From orders 
		    where cid = 'c002');

-- 2. Get ids of products ordered through any agents who takes at least one order from a customer in Dallas, sorted by pid from highest to lowest.
      select distinct pid  
      From orders 
      where aid in (select aid 
                    From orders
                    where cid in (select cid 
                                  From customers
                                  where city = 'Dallas'))
                                  order by pid Desc;
                      
-- 3. Get the ids and names of customers who did not place an order through agent a01.
      select cid, name
      From customers 
      where cid not in (select cid
                        From orders 
                        where aid = 'a01');

-- 4. Get ids of the customers who ordered both the product p01 and p07.
     select cid
      From orders
      where pid = 'p01' intersect
                         (select cid 
                         From orders
                         where pid = 'p07');

-- 5. Get the ids of products not ordered by any customers who placed any order through agent a07 in pid order from highest to lowest.
      select distinct pid 
      From orders 
      where cid not in (select cid
			From orders
			where aid = 'a07')
      order by pid Desc;
      
-- 6. Get the name, discounts, and city from all the customers who place orders through agents in London or New York.
      select name, discount, city
      From customers
      where cid in (select cid 
		    from orders
		    where aid in (select aid
		                  From agents 
		                  where city = 'London' or city =  'New York'));

-- 7. Get all customers who have the same discount as that of any customers in Dallas or London.
      select name, discount
      From customers
      where discount in (select discount
                         From customers
                         where city in ('London','Dallas'));
                          
-- 8. Tell me about check constraints: What are they? What are they good for? What is the advantage of putting that sort of thing inside the database? Make up some examples of good uses of check constraints and some examples of bad uses of check constraints. Explain the differences in your examples and arugue your case.
--      A check constraint is the most generic constraint type. A check constraint is used to limit the value range that can be placed in a column.
--      The main benefit of using check constraints is the ability to enforce rules in the database and not necessairy additional logic in the application. Check constraints provide data integrity and consistency. Some good uses example-  Price > 0 AND Price <1000. Some bad uses are Price < 0 AND Price < 1000. The good examples shows the exact price, that is greater than 0 and less then 1000. The bad examples shows the price, that is less then 0 and greater than 1000 which is not possible at all. Thats why it is consider as bad check constraints.



