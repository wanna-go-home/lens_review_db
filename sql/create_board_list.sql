-- public.board_list definition

-- Drop table

-- DROP TABLE public.board_list;

CREATE TABLE public.board_list (
	board_id int4 NOT NULL,
	"name" text NOT NULL,
	CONSTRAINT board_list_pkey PRIMARY KEY (board_id)
);
