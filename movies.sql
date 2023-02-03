
create table movies(
	movie_id SERIAL primary key,
	title VARCHAR (100),
	genre VARCHAR(50),
	rating VARCHAR(20)
);

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR (100),
	last_name VARCHAR(100),
	seat VARCHAR (100),
	email VARCHAR (150)
);

create table showtimes(
	showtime_id SERIAL primary key,
	date TIME,
	length INTEGER,
	foreign key ("movie_id") references "movies" ("movie_id")
);

create table ticket(
	ticket_id SERIAL primary key,
	price NUMERIC(5,2),
	date TIME,
	foreign key ("showtime_id") references "showtimes" ("showtime_id"),
	foreign key ("customer_id") references "customer" ("customer_id"),
	foreign key ("movie_id") references "movies" ("movie_id")
);

create table concessions(
	item_id SERIAL primary key,
	category VARCHAR(50),
	quantity INTEGER,
	price INTEGER,
	foreign key ("order_id") references order("order_id")
);

create table order_(
	order_id SERIAL primary key,
	order_date TIME,
	total_cost INTEGER,
	foreign key ("customer_id") references "customer" ("customer_id"),
	foreign key ("ticket_id") references "ticket" ("ticket_id"),
	foreign key ("item_id") references "concessions" ("item_id")
);