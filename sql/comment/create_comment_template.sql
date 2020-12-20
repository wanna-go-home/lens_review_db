CREATE TABLE public.comment_template
(
    account_id text NOT NULL,
    post_id integer NOT NULL,
    content text NOT NULL,
    like_cnt integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    depth smallint NOT NULL,
    bundle_id integer NOT NULL
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.comment_template
    OWNER to postgres;
