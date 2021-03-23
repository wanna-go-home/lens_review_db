/*
핸드폰 번호를 가지고 사용자를 인증할 때 사용됨.
*/
CREATE TABLE public.user_auth
(
    request_id text NOT NULL,
    phone_num text NOT NULL,
    auth_num text NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT unique_request_id UNIQUE (request_id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.user_auth
    OWNER to postgres;
