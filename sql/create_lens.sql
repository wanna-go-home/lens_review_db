-- public.lens definition

-- Drop table

-- DROP TABLE public.lens;

CREATE TABLE public.lens (
	lens_id int4 NOT NULL,
	"name" text NULL,
	graphic_dia numeric NULL,
	per_package int4 NULL,
	price int4 NULL,
	review_cnt int4 NULL,
	bc numeric NULL,
	dia numeric NULL,
	pwr json NULL,
	url text NULL,
	product_image json NULL,
	demonstration_image json NULL,
	CONSTRAINT lens_pkey1 PRIMARY KEY (lens_id)
);
