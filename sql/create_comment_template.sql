CREATE TABLE public.comment_template
(
    id serial NOT NULL,
    account_id text NOT NULL,
    content text,
    like_cnt integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT now(),
    depth smallint,
    bundle_id integer,
    PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.comment_template
    OWNER to postgres;
