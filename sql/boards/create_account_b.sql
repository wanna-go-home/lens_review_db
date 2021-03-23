/*
account table을 대체하기 위한 테이블 skeleton
*/
CREATE TABLE public.account_b
(
    phone_num text NOT NULL,
    pin_num text NOT NULL,
    nickname text NOT NULL,
    PRIMARY KEY (phone_num),
    CONSTRAINT unique_phone_num UNIQUE (phone_num)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public.account_b
    OWNER to postgres;
