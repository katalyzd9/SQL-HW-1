create table salesperson_kat(
	salesperson_id SERIAL primary key,
	 first_name VARCHAR (100),
	 last_name VARCHAR(50),
);

create table customer_kat(
	customer_id SERIAL primary key,
	first_name VARCHAR (100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	phone INTEGERS, 
	 FOREIGN KEY ("salesperson_id") REFERENCES "salesperson"("salesperson_id"),
	 FOREIGN KEY ("car_id") REFERENCES "car"("car_id"),
	
);

create table car_kat(
	car_id SERIAL primary key,
	year INTEGERS,
	make VARCHAR (50),
	model VARCHAR(50),
	 FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id"),
	 FOREIGN KEY ("service_id") REFERENCES "service"("service_id"),
);

create table service_kat(
	service_id SERIAL primary key,
	service_type VARCHAR (150),
	VIN INTEGERS,
	 FOREIGN KEY ("mechanic_id") REFERENCES "mechanic"("mechanic_id"),
);

create table mechanic_kat(
	mechanic_id SERIAL primary key,
	FOREIGN KEY ("parts_id") REFERENCES "parts"("parts_id")

);

create table parts_kat(
	parts_id SERIAL primary key,
	parts_used VARCHAR (150),
	adjustment_type VARCHAR(200),
	 FOREIGN KEY ("invoice_id") REFERENCES "invoice"("invoice_id")
);

create table invoice_kat(
	invoice_id SERIAL primary key,
	amount INTEGERS,
	date TIME,
);