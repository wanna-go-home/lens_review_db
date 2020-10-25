CREATE TABLE public.free_comment
(

)
    INHERITS (public.board_template)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.free_comment
    OWNER to postgres;
