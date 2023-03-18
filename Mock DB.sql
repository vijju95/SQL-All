create database Mock;
use Mock;
-- 1) details of book whoes price is greater than 500.
select * from book where Book_price>500;
-- 2) show book name and count book price accoording to author_id.
select Author_id, count(Book_price) from book 
group by Author_id;
-- 3) book names award in 2019
select Book_name from book where Book_award=2019;
-- 4) city name of all author by there id
select distinct author_city from author;

-- 5) foreign keyin author table and drop
create table book (
book_id int,
book_name varchar(30),
author_id int,
price int,
foreign key (Author_id) references author_table(Author_id),
foreign key (book_id) references award_table(book_id));
drop table book;
create table author_table (
author_id int primary key,
author_name varchar(20),
ph_no int,
address varchar(50),
email varchar(30) unique );

create table award_table (
book_id int primary key,
award_id int,
auth_id int,
award_year int );

;
foreign key (Author_id) references book_table(Author_id);
foreign key (Author_id) references book_table(Author_id);
