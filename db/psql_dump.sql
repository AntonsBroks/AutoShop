
\connect "ecom";

DROP TABLE IF EXISTS "Cars";

DROP SEQUENCE IF EXISTS "Cars";


CREATE TABLE public."Cars"
(
    car_id bigint NOT NULL,
    model character varying(70) COLLATE pg_catalog."default" NOT NULL,
    color character varying(20) COLLATE pg_catalog."default" NOT NULL,
    mileage bigint,
    condition character varying(100) COLLATE pg_catalog."default" NOT NULL,
    price money NOT NULL,
    year integer NOT NULL,
    firm character varying(15) COLLATE pg_catalog."default" NOT NULL,
    automatic bit(1) NOT NULL,
    CONSTRAINT "Cars_pkey" PRIMARY KEY (car_id)
)

INSERT INTO public."Cars"(
	
	car_id, model, color, mileage, condition, price, year, firm, automatic
)
 VALUES (2, 'E klase', 'black', 3000,'Excellent - A close to perfect original', 54000, '2020', 'Mercedes-Benz', '1');

INSERT INTO public."Cars"(
	
	car_id, model, color, mileage, condition, price, year, firm, automatic
)
VALUES (3, 'E klase', 'grey', 14000,'Fair condition - Runs and drives OK but needs repair', 30000, '2016', 'Mercedes-Benz', '0');

INSERT INTO public."Cars"(
	car_id, model, color, mileage, condition, price, year, firm, automatic)
	
VALUES (4, 'G klase', 'black', 6000,'Excellent - A close to perfect original', 70000, '2020', 'Mercedes-Benz', '1');

INSERT INTO public."Cars"(
	car_id, model, color, mileage, condition, price, year, firm, automatic)
	
VALUES (5, 'V klase', 'white', 3500,'Good condition - Presentable inside', 55000, '2019', 'Mercedes-Benz', '0');
INSERT INTO public."Cars"(
	car_id, model, color, mileage, condition, price, year, firm, automatic)
	
VALUES (1, 'CLS klase','green', 2838,'Good condition - Presentable inside', 38000, '2019', 'Mercedes-Benz', '1');



DROP TABLE IF EXISTS "Service";

DROP SEQUENCE IF EXISTS "Service_id_seq";


DROP TABLE IF EXISTS "Orders"

DROP SEQUENCE IF EXISTS "Orders";


CREATE TABLE public."Orders"
(
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    surname character varying(20) COLLATE pg_catalog."default" NOT NULL,
    adress character varying(50) COLLATE pg_catalog."default" NOT NULL,
    phone integer NOT NULL,
    total_cost money NOT NULL,
    car_id bigint[] NOT NULL,
    pasutijuma_id bigint NOT NULL,
    CONSTRAINT "Orders_pkey" PRIMARY KEY (pasutijuma_id)
)


