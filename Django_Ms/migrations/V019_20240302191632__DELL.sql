CREATE TABLE product_management.product_category (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
	"name" bpchar(128) NOT NULL,
	description bpchar(128) NOT NULL,
	created_at timestamp NOT NULL,
	modified_at timestamp NOT NULL,
	deleted_at timestamp NOT NULL,
	CONSTRAINT product_category_pk PRIMARY KEY (id)
);



CREATE TABLE product_management."comments" (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
	"text" varchar NULL,
	likes int4 NULL DEFAULT 0,
	review int8 NULL DEFAULT 0,
	user_id int4 NOT NULL,
	CONSTRAINT comments_pk PRIMARY KEY (id)
);

ALTER TABLE product_management."comments" ADD CONSTRAINT comments_fk_1 FOREIGN KEY (user_id) REFERENCES user_management.users(id);


CREATE TABLE product_management.product_inventory (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
	quantity int4 NOT NULL,
	created_at timestamp NOT NULL,
	modified_at timestamp NOT NULL,
	deleted_at timestamp NOT NULL,
	CONSTRAINT product_inventory_pk PRIMARY KEY (id)
);

CREATE TABLE product_management.discount (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
	"name" bpchar(128) NOT NULL,
	description bpchar(128) NOT NULL,
	discount_percent bpchar(128) NOT NULL,
	active bool NOT NULL,
	created_at timestamp NOT NULL,
	modified_at timestamp NOT NULL,
	deleted_at timestamp NOT NULL,
	CONSTRAINT discount_pk PRIMARY KEY (id)
);


CREATE TABLE product_management.products (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
	"name" varchar NOT NULL,
	description varchar NOT NULL,
	sku bpchar(128) NOT NULL,
	price int4 NOT NULL,
	category_id int4 NOT NULL,
	inventory_id int4 NOT NULL,
	discount_id int4 NULL,
	created_at timestamp NOT NULL,
	modified_at timestamp NOT NULL,
	deleted_at timestamp NOT NULL,
	image varchar NOT NULL,
	test_colum1 varchar NULL,
	test_colum2 varchar NULL,
	test_colum3 varchar NULL,
	test_colum4 varchar NULL,
	CONSTRAINT products_pk PRIMARY KEY (id)
);


ALTER TABLE product_management.products ADD CONSTRAINT products_fk_1 FOREIGN KEY (category_id) REFERENCES product_management.product_category(id);
ALTER TABLE product_management.products ADD CONSTRAINT products_fk_2 FOREIGN KEY (inventory_id) REFERENCES product_management.product_inventory(id);
ALTER TABLE product_management.products ADD CONSTRAINT products_fk_3 FOREIGN KEY (discount_id) REFERENCES product_management.discount(id);



CREATE TABLE product_management.product_comments (
	id int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
	product_id int4 NOT NULL,
	comment_id int4 NULL,
	CONSTRAINT product_comments_pk PRIMARY KEY (id)
);


ALTER TABLE product_management.product_comments ADD CONSTRAINT product_comments_fk_1 FOREIGN KEY (product_id) REFERENCES product_management.products(id);
ALTER TABLE product_management.product_comments ADD CONSTRAINT product_comments_fk_2 FOREIGN KEY (comment_id) REFERENCES product_management."comments"(id);