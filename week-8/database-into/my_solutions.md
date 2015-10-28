1. SELECT * FROM states;

2. SELECT * FROM regions;

3. SELECT state_name,population FROM states; 

4. SELECT state_name, population FROM states ORDER BY population DESC;

5. SELECT state_name FROM states WHERE region_id = 7;

6.  SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC; 

7. SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;

8. SELECT state_name, region_id FROM states ORDER BY region_id  ASC;

9. SELECT region_name FROM regions WHERE region_name LIKE '%Central%';

10. SELECT region_name, state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER BY region_ID ASC;

![Release_6](/Release_6.png)

What are databases for?
Databases are used for organizing information so that it can be easily accessed, managed, and updated when you have hundreds or even millions of records. 

What is a one-to-many relationship?
A one-to-many relationship is when each row in one table can be related to many rows in the relating table. 

What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is the unique identifier of each row in one table and the foreign key is the attribute of one entity that referes to the primary key of another entity.  
How can you select information out of a SQL database? What are some general guidelines for that?
To select information out of a database we use the SQL commands:
 SELECT column name FROM table_name followed by any more specific query parameters needed such as WHERE or ORDER BY. 






