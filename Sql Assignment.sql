#Linkedin question:
create database atsrecords;
use atsrecords;
create table ats(id int,technology varchar(50));
insert into ats values(1,"DATA SCIENCE"),(1,"Tableau"),(1,"SQL"),(2,"R"),(2,"poWer BI"),(1,"Python");
use atsrecords;
#list candidates which possess 'SQL' and 'Python' skills
SELECT distinct id FROM ats
WHERE id IN (
    SELECT id
    FROM ats
    WHERE technology = 'SQL'
)
AND id IN (
    SELECT id
    FROM ats
    WHERE technology = 'Python'
);



# ecommerce website example : 
create database ecommerce;
use ecommerce;

create table product_info(product_id int, product_name varchar(50));
create table product_info_likes(user_id int, product_id int, liked_date DATE);
insert into product_info values(1001,'iphone 12'),
(1002,'redmi note 5'),
(1003,'iphone 14 pro'),
(1004,'one plus 5'),
(1005,'poco');
insert into product_info_likes values(1,1001,'2023-08-19'),(2,1002,'2022-10-20'),(3,1003,'2022-10-20'),
(4,1004,'2022-10-20'),(5,1004,'2022-10-20'),(6,1003,'2022-10-20'),(7,1002,'2022-10-20'),(8,1001,'2022-10-20'),
(9,1002,'2022-10-20'),(10,1001,'2022-10-20');

#query to get the id of the product that have zero likes
select product_id from product_info where product_id not in (select product_id from product_info_likes)
