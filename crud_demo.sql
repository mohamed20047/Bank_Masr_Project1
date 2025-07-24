use bookbazar;


START TRANSACTION;
INSERT INTO books (title, ISBN, genre, author_id, price, quantity, release_date)
VALUES ('The Lost World', '9781234567890', 'Adventure', 2, 100.00, 25, '2000-01-01 00:00:00');
COMMIT;


START TRANSACTION;
select * from books  WHERE ISBN = '9781234567890';
COMMIT;


START TRANSACTION;
select * from books;
COMMIT;


START TRANSACTION;
update books
set title='The Lost Man',genre='Comedy'
where ISBN = '9781234567890';
COMMIT;


START TRANSACTION;
delete from books where book_id=6;
COMMIT;







