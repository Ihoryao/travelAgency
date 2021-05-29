create table tour
(
    id                 serial primary key                             not null,
    name               varchar(40)                                    not null,
    type               varchar(40)                                    not null,
    price              int                                            not null,
    persons            int                                            not null,
    hotel_rate         int check ( hotel_rate > 0 and hotel_rate < 6) not null,
    hot                bool default false,

    discount_step      int  default 5,
    discount_max_value int  default 20,
    description        text default 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi excepturi vero
                harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium omnis
                perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae deserunt
                facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere a quia.
                Eaque
                non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic
                sequi excepturi vero
                harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium omnis
                perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae deserunt
                facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere a quia.
                Eaque
                non optio cumque.'
);

create table tour_image
(
    id       serial primary key                                           not null,
    tour_id  int references tour (id) on delete cascade on update cascade not null,
    imageURL varchar(255)                                                 not null
);

create type role_type as enum ('user', 'manager', 'admin');

-- create table role
-- (
--     id   serial primary key not null,
--     role role_type
-- );

create table "user"
(
    id         serial primary key not null,
--     role_id    int references role (id) on delete cascade on update cascade not null,
    role       role_type          not null,
    first_name varchar(50),
    last_name  varchar(50),
    email      varchar(50)        not null,
    password   varchar(255)       not null,
    discount   int  default 0,
    blocked    bool default false
);

create type "status_type" as enum ('registered', 'paid', 'canceled');
-- create table tour_status
-- (
--     id     serial primary key not null,
--     status status_type default 'registered'
-- );

create table "order"
(
    id                serial primary key                                             not null,
    user_id           int references "user" (id) on delete cascade on update cascade not null,
    tour_id           int references tour (id) on delete cascade on update cascade   not null,
--     tour_status_id    int references tour_status (id) on delete cascade on update cascade not null,
    status            status_type default 'registered'                               not null,
    registration_date date                                                           null,
    payment_date      date                                                           null
);