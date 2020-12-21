CREATE OR REPLACE FUNCTION instead_of_update_freeviewboard()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $function$
   BEGIN
       UPDATE free_board SET view_cnt=NEW.view_cnt WHERE id=OLD.id;
       RETURN NEW;
    END;
$function$;

CREATE TRIGGER instead_of_update_freeviewboard_trig
    INSTEAD OF UPDATE ON
        free_board_view FOR EACH ROW EXECUTE PROCEDURE instead_of_update_freeviewboard();
