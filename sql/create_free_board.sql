CREATE TABLE public.free_board
(
    id serial NOT NULL,
    PRIMARY KEY (id)
)
    INHERITS (public.board_template)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.free_board
    OWNER to postgres;
