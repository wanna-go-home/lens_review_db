-- View: public.free_board_view

-- DROP VIEW public.free_board_view;

CREATE OR REPLACE VIEW public.free_board_view
 AS
 SELECT free_board.account_id,
    free_board.title,
    free_board.content,
    free_board.view_cnt,
    free_board.like_cnt,
    free_board.reply_cnt,
    free_board.created_at,
    free_board.id,
    account.name
   FROM free_board,
    account
  WHERE free_board.account_id = account.account_id;

ALTER TABLE public.free_board_view
    OWNER TO postgres;
