--- lAB 11-----

--1. Funtion PreRegsFor(courseNum) - Returns the immediate prerequisites for the passed-in course number.


create or replace function preRegsFor(int, REFCURSOR) returns refcursor as 
$$
declare
   preRegNum int       := $1;
   resultset REFCURSOR := $2;
begin
   open resultset for 
      select *
      from  Prerequisites
     order by courseNum desc;
   return resultset;
end;
$$ 
language plpgsql;

select preRegsFor(0, 'results');
Fetch all from results;


