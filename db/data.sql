-- Alice
insert into person (fname, lname, dob) values ('Alice', 'Alexander', TO_DATE('1971-01-01', 'YYYY-MM-DD'));

-- Alice: Jiu Jitsu
insert into event (person_id, name, city, state, country)
select person_id, 'Jiu Jitsu', 'Jacksonville', 'FL', 'US'
from person where fname = 'Alice';

-- Alice: Jiu Jitsu: $100 from Jeff
insert into expense (event_id, payor_name, expense_amount, expense_amt_curr)
select event_id, 'Jeff', 100, 'USD'
from event where name = 'Jiu Jitsu';

-- Alice: Jiu Jitsu: $200 from Jeremy
insert into expense (event_id, payor_name, expense_amount, expense_amt_curr)
select event_id, 'Jeremy', 200, 'USD'
from event where name = 'Jiu Jitsu';

-- Alice: Karate
insert into event (person_id, name, city, state, country)
select person_id, 'Karate', 'Kalamazoo', 'MI', 'US'
from person where fname = 'Alice';

-- Alice: Karate: $10 from Kim
insert into expense (event_id, payor_name, expense_amount, expense_amt_curr)
select event_id, 'Kim', 10, 'USD'
from event where name = 'Karate';

-- Alice: Log Splitting
insert into event (person_id, name, city, state, country)
select person_id, 'Log Splitting', 'Logansport', 'IN', 'US'
from person where fname = 'Alice';



-- Bob
insert into person (fname, lname, dob) values ('Bob', 'Baker', TO_DATE('1982-02-02', 'YYYY-MM-DD'));

-- Bob: Motorcycling
insert into event (person_id, name, city, state, country)
select person_id, 'Motorcycling', 'Montreal', 'QC', 'CA'
from person where fname = 'Bob';

-- Bob: Motorcycling: $1 from Alex
insert into expense (event_id, payor_name, expense_amount, expense_amt_curr)
select event_id, 'Alex', 1, 'USD'
from event where name = 'Motorcycling';

-- Bob: Motorcycling: $2 from Betty
insert into expense (event_id, payor_name, expense_amount, expense_amt_curr)
select event_id, 'Betty', 2, 'USD'
from event where name = 'Motorcycling';

-- Bob: Motorcycling: $3 from Cathy
insert into expense (event_id, payor_name, expense_amount, expense_amt_curr)
select event_id, 'Cathy', 3, 'USD'
from event where name = 'Motorcycling';


-- Bob: Noodling
insert into event (person_id, name, city, state, country)
select person_id, 'Noodling', 'Nashville', 'TN', 'US'
from person where fname = 'Bob';

-- Bob: Noodling: $4 from Dan
insert into expense (event_id, payor_name, expense_amount, expense_amt_curr)
select event_id, 'Dan', 4, 'USD'
from event where name = 'Noodling';



-- Charlie
insert into person (fname, lname, dob) values ('Charlie', 'Carter', TO_DATE('1993-03-03', 'YYYY-MM-DD'));

