-- Table: public.Color
-- DROP TABLE public."Color";

CREATE TABLE public."Color"
(
    "colorId" integer NOT NULL,
    color text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Color_pkey" PRIMARY KEY ("colorId")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Color"
    OWNER to postgres;


-- Table: public.CountryOrigin
-- DROP TABLE public."CountryOrigin";

CREATE TABLE public."CountryOrigin"
(
    "countryId" integer NOT NULL,
    counter text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "CountryOrigin_pkey" PRIMARY KEY ("countryId")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."CountryOrigin"
    OWNER to postgres;


-- Table: public.Manufacturer
-- DROP TABLE public."Manufacturer";

CREATE TABLE public."Manufacturer"
(
    "manId" integer NOT NULL,
    manufacturer text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Manufacturer_pkey" PRIMARY KEY ("manId")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Manufacturer"
    OWNER to postgres;


-- Table: public.Material
-- DROP TABLE public."Material";

CREATE TABLE public."Material"
(
    "materialId" integer NOT NULL,
    material text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Material_pkey" PRIMARY KEY ("materialId")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Material"
    OWNER to postgres;


-- Table: public.Lens
-- DROP TABLE public."Lens";

CREATE TABLE public."Lens"
(
    "lensId" integer NOT NULL,
    lens text COLLATE pg_catalog."default" NOT NULL,
    "BC" double precision,
    "DIA" double precision,
    "PWR" double precision,
    "waterContent" integer,
    spec text COLLATE pg_catalog."default",
    "manId" integer,
    "countryId" integer,
    "colorId" integer,
    "materialId" integer,
    CONSTRAINT "Lens_pkey" PRIMARY KEY ("lensId"),
    CONSTRAINT "colorId_key" FOREIGN KEY ("colorId")
        REFERENCES public."Color" ("colorId") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID,
    CONSTRAINT "countryId_fkey" FOREIGN KEY ("countryId")
        REFERENCES public."CountryOrigin" ("countryId") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID,
    CONSTRAINT "manId_fkey" FOREIGN KEY ("manId")
        REFERENCES public."Manufacturer" ("manId") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID,
    CONSTRAINT "materialId_fkey" FOREIGN KEY ("materialId")
        REFERENCES public."Material" ("materialId") MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Lens"
    OWNER to postgres;
-- Index: fki_colorId_key

-- DROP INDEX public."fki_colorId_key";

CREATE INDEX "fki_colorId_key"
    ON public."Lens" USING btree
    ("colorId" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_countryId_fkey

-- DROP INDEX public."fki_countryId_fkey";

CREATE INDEX "fki_countryId_fkey"
    ON public."Lens" USING btree
    ("countryId" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_manId_fkey

-- DROP INDEX public."fki_manId_fkey";

CREATE INDEX "fki_manId_fkey"
    ON public."Lens" USING btree
    ("manId" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_materialId_fkey

-- DROP INDEX public."fki_materialId_fkey";

CREATE INDEX "fki_materialId_fkey"
    ON public."Lens" USING btree
    ("materialId" ASC NULLS LAST)
    TABLESPACE pg_default;