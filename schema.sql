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
