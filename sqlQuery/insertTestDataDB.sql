insert into tour (name, type, price, persons, hotel_rate)
values ('first tour', 'vacation', 400, 2, 4),
       ('second tour', 'excursion', 500, 2, 3),
       ('third tour', 'shopping', 300, 1, 3),
       ('4 tour', 'vacation', 700, 1, 5),
       ('5 tour', 'excursion', 800, 4, 4),
       ('6 tour', 'shopping', 500, 2, 4),
       ('7 tour', 'vacation', 1000, 2, 5),
       ('8 tour', 'vacation', 1200, 1, 5),
       ('9 tour', 'vacation', 700, 2, 4),
       ('10 tour', 'excursion', 1000, 4, 4);


insert into "user" (role, first_name, last_name, email, password)
values ('user', 'Bob', 'Bobster', 'bobster@gmail.com', 1),
       ('manager', 'Marta', 'Mac', 'mac@gmail.com', 2),
       ('admin', 'Andriy', 'Arch', 'arch@gmail.com', 3);

insert into "order" (user_id, tour_id, registration_date, payment_date)
values (1, 1, '2021-05-01', '2021-05-02'),
       (1, 2, '2021-06-01', '2021-06-02'),
       (1, 2, '2021-07-01', '2021-07-02');

insert into "tour_image" (tour_id, imageurl)
values (1, '400x400.png'),
       (1, '400x400.png'),
       (1, '400x400.png'),
       (2, '400x400.png'),
       (2, '400x400.png'),
       (2, '400x400.png'),
       (3, '400x400.png'),
       (3, '400x400.png'),
       (3, '400x400.png'),
       (4, '400x400.png'),
       (4, '400x400.png'),
       (4, '400x400.png'),
       (5, '400x400.png'),
       (5, '400x400.png'),
       (5, '400x400.png'),
       (6, '400x400.png'),
       (6, '400x400.png'),
       (6, '400x400.png'),
       (7, '400x400.png'),
       (7, '400x400.png'),
       (7, '400x400.png'),
       (8, '400x400.png'),
       (8, '400x400.png'),
       (8, '400x400.png'),
       (9, '400x400.png'),
       (9, '400x400.png'),
       (9, '400x400.png'),
       (10, '400x400.png'),
       (10, '400x400.png'),
       (10, '400x400.png')

