-- public."user" definition

-- Drop table

-- DROP TABLE public."user";

CREATE TABLE public."user" (
	user_id int4 NOT NULL,
	nickname text NULL,
	pw text NULL,
	email text NULL,
	phone_num text NULL,
	CONSTRAINT user_pkey PRIMARY KEY (user_id)
);
