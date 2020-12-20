CREATE TABLE public.free_board_comment
(
    id serial NOT NULL,
    PRIMARY KEY (id)
)
    INHERITS (public.comment_template)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.free_board_comment
    OWNER to postgres;

CREATE TRIGGER set_free_bundle_id
BEFORE INSERT ON free_board_comment
FOR EACH ROW
EXECUTE PROCEDURE update_default_comment_bundle_id();
