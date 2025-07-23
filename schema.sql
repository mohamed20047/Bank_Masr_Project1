Create database bookbazar;
use bookbazar;
CREATE USER 'bookadmin'@'localhost' IDENTIFIED BY '#0987#';
GRANT ALL PRIVILEGES ON bookbazaar.* TO 'bookadmin'@'localhost';

create table author (
author_id int auto_increment primary key,
author_name varchar(100) NOT NULL,
email varchar(100) unique,
date_of_birth date,
nationality varchar(100)
);

create table users (
user_id int auto_increment primary key,
user_name varchar(100),
email varchar(100) unique,
password varchar(256),
birth_date date
);

create table books (
book_id int auto_increment primary key,
title varchar(100),
ISBN VARCHAR(20) UNIQUE,
genre VARCHAR(50),
author_id INT NOT NULL,
price decimal(10,2) NOT NULL,
quantity int NOT NULL,
release_date datetime,
FOREIGN KEY (author_id) REFERENCES authors(author_id) on delete cascade on update cascade

);

create table user_books (
  user_id INT NOT NULL,
  book_id INT NOT NULL,

  purchased_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  
  PRIMARY KEY (user_id, book_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE ON UPDATE CASCADE
);


##insert sample data in table authors
insert into author (author_name,email,date_of_birth,nationality)values
   ('Agatha Christie', 'agathae@gmail.com', '1890-09-15', 'British'),
    ('Naguib Mahfouz', 'naguib@gmail.com', '1911-12-11', 'Egyptian'),
    ('Johann Wolfgang von Goethe', 'Johann@gmail.com', '1749-08-28', 'German'),
    ('Alaa Al Aswany', 'alaa@gmail.com', '1957-05-26', 'Egyptian');


##insert sample data in table books
insert into books (title, ISBN, genre, author_id, price, quantity, release_date) values
    ('Murder on the Orient Express', '9780062693662', 'Mystery', 1, 120.00, 20, '1934-01-01 00:00:00'),
    ('The Thief and the Dogs', '9780385264761', 'Fiction', 2, 90.50, 15, '1961-01-01 00:00:00'),
    ('Faust', '9780140449013', 'Tragedy', 3, 140.00, 10, '1808-01-01 00:00:00'),
    ('The Yacoubian Building', '9780060878133', 'Drama', 4, 110.00, 12, '2002-01-01 00:00:00'),
    ('Death on the Nile', '9780007119325', 'Crime', 1, 130.00, 18, '1937-11-01 00:00:00');

##insert sample data in table users with hashed password using SHA2-256
insert into users (user_name,email,password,birth_date)values
("Mohamed11","mohamed@gmail.com",SHA2('1234@55m', 256),"2002-07-05"),
("Amany10","amany@gmail.com",SHA2('99876aa@', 256),"2004-10-10"),
("Ayten55","ayten@gmail.com",SHA2('0985@346', 256),"2005-09-02"),
("Ahmed99","ahmed@gmail.com",SHA2('#a23456@', 256),"1996-12-02"),
("laila33","laila@gmail.com",SHA2('#a267891', 256),"1999-12-10"),
("saraXX","sara@gmail.com",SHA2('#a66449@', 256),"2000-01-02"),
("Omar43","omar@gmail.com",SHA2('#a23400@', 256),"1998-10-02");

##insert sample data in table user_books
insert into user_books (user_id,book_id,purchased_at)values
(1,2,"2025-07-01 10:15:00"),
(1,4,"2025-07-10 15:45:00"),
(3,5,"2023-06-25 09:00:00"),
(4,3,"2024-02-05 13:20:00"),
(2,2,"2025-07-03 18:30:00");


select * from books;
select * from users;
select * from author;
select * from user_books;
