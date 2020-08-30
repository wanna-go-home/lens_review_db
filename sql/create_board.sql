-- public.board definition

-- Drop table

-- DROP TABLE public.board;

CREATE TABLE public.board (
	content_id int4 NOT NULL,
	title text NOT NULL,
	"text" text NOT NULL,
	images _text NULL,
	link text NULL,
	user_id int4 NOT NULL,
	view_cnt int4 NULL DEFAULT 0,
	likes_cnt int4 NULL DEFAULT 0,
	created_at date NULL,
	lens_id int4 NULL,
	board_id int4 NULL,
	CONSTRAINT board_pkey PRIMARY KEY (content_id)
);


-- public.board foreign keys

ALTER TABLE public.board ADD CONSTRAINT board_lens_id_fkey FOREIGN KEY (lens_id) REFERENCES lens(lens_id);
ALTER TABLE public.board ADD CONSTRAINT board_user_id_fkey FOREIGN KEY (user_id) REFERENCES "user"(user_id);
