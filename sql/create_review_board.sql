CREATE TABLE public.review_board
(
    id serial NOT NULL,
    lens_id integer,
    PRIMARY KEY (id)
)
    INHERITS (public.board_template)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.review_board
    OWNER to postgres;
