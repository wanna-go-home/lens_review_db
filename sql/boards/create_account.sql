CREATE TABLE public.account
(
    uuid serial NOT NULL,
    id email NOT NULL,
    pw pw NOT NULL,
    name text NOT NULL,
    phone_num text NOT NULL,
    PRIMARY KEY (uuid),
    CONSTRAINT unique_id UNIQUE (id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.account
    OWNER to postgres;
