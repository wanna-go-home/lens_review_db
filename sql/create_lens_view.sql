-- View: public.lens_preview

-- DROP VIEW public.lens_preview;

CREATE OR REPLACE VIEW public.lens_preview
 AS
 SELECT lens.lens_id,
    lens.name,
    lens.price,
    lens.product_image,
    lens.graphic_dia
   FROM lens;

ALTER TABLE public.lens_preview
    OWNER TO postgres;
