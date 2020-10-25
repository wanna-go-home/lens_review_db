CREATE TABLE public.review_comment
(

)
    INHERITS (public.comment_template)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.review_comment
    OWNER to postgres;
