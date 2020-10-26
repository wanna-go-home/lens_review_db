CREATE OR REPLACE FUNCTION update_default_comment_bundle_id()
    RETURNS trigger
    LANGUAGE plpgsql AS
$func$
BEGIN
    NEW.bundle_id := COALESCE(NEW.bundle_id, NEW.id);
    RETURN NEW;
END;
$func$;

CREATE TRIGGER set_default_bundle_id
BEFORE INSERT ON comment_template
FOR EACH ROW
EXECUTE PROCEDURE update_default_comment_bundle_id();
