-- Inputting Salesperson Data

insert into salesperson_kat(
	salesperson_id,
	first_name,
	last_name,
)VALUES(
	1,
	'Donna',
	'Karen',
);


-- Inputting Customer Data

insert into customer_kat(
	customer_id,
	first_name,
	last_name,
	address,
	phone,
	salesperson_id,
	car_id,
)VALUES(
	2,
	'Calvin',
	'Klein',
	'123 Outlet Rd Moneytown CA 90210',
	8089991111,
	1,
	3,
);

-- Inputting Car Data

insert into car_kat(
	car_id,
	year,
	make,
	model,
	customer_id,
	service_id,
)VALUES(
	3,
	2030,
	'Mitsubishi',
	'Outlander',
	2,
	4
);

-- Inputting Service Data

insert into service_kat(
	service_id,
	service_type,
	VIN,
	mechanic_id,
)VALUES(
	4,
	'car maintenance',
	9876543212345,
	5,
);

-- Inputting Mechanic Data

insert into mechanic_kat(
	mechanic_id,
	parts_id,

)VALUES(
	5,
	6
);
-- Inputting Parts Data

insert into parts_kat(
	parts_id,
	parts_used
	adjustment_type,
	invoice_id,
)VALUES(
	6,
	'brakes, pads',
	'tire adjustment',
	7,
);


-- Inputting Invoice Data

insert into invoice_kat(
	invoice_kat,
	amount,
	date,
)VALUES(
	4,
	898.00,
	'3/4/2030',
);

