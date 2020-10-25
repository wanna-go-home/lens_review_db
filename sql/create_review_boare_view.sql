-- View: public.review_board_view

-- DROP VIEW public.review_board_view;

CREATE OR REPLACE VIEW public.review_board_view
 AS
 SELECT review_board.account_id,
    review_board.title,
    review_board.content,
    review_board.view_cnt,
    review_board.like_cnt,
    review_board.reply_cnt,
    review_board.created_at,
    review_board.id,
    account.name,
    review_board.lens_id
   FROM review_board,
    account
  WHERE review_board.account_id = account.account_id;

ALTER TABLE public.review_board_view
    OWNER TO postgres;
