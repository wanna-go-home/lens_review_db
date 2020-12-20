CREATE TABLE public.board_template
(
    account_id text,
    title text,
    content text,
    view_cnt integer DEFAULT 0,
    like_cnt integer DEFAULT 0,
    reply_cnt integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT now()
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.board_template
    OWNER to postgres;
