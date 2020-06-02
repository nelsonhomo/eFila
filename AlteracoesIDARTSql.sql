ALTER TABLE sync_temp_patients ADD COLUMN IF NOT EXISTS syncstatus character(1) COLLATE pg_catalog."default";
ALTER TABLE sync_temp_patients ADD COLUMN IF NOT EXISTS syncuuid character varying(255) COLLATE pg_catalog."default";
ALTER TABLE sync_temp_patients RENAME COLUMN uuid TO uuidopenmrs;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS syncstatus character(1) COLLATE pg_catalog."default";
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS syncuuid character varying(255) COLLATE pg_catalog."default";
ALTER TABLE sync_temp_dispense DROP CONSTRAINT sync_temp_dispense_pkey;
ALTER TABLE sync_temp_dispense ADD CONSTRAINT sync_temp_dispense_pkey PRIMARY KEY (id, mainclinicname);
ALTER TABLE sync_temp_dispense RENAME COLUMN linhaid TO linhanome;
ALTER TABLE sync_temp_dispense RENAME COLUMN regimeid TO regimenome;
ALTER TABLE sync_temp_dispense DROP COLUMN IF EXISTS sync_temp_dispenseid;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS mainclinic integer NOT NULL;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS mainclinicname character varying(255) COLLATE pg_catalog."default" NOT NULL;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS prescriptionid character varying(255) COLLATE pg_catalog."default";
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS tipods character varying(255) COLLATE pg_catalog."default";
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS dispensasemestral integer NOT NULL DEFAULT 0;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS durationsentence character varying(255) COLLATE pg_catalog."default" DEFAULT NULL::character varying;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS dc character(1) COLLATE pg_catalog."default" DEFAULT 'F'::bpchar;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS prep character(1) COLLATE pg_catalog."default" DEFAULT 'F'::bpchar;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS ce character(1) COLLATE pg_catalog."default" DEFAULT 'F'::bpchar;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS cpn character(1) COLLATE pg_catalog."default" DEFAULT 'F'::bpchar;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS prescricaoespecial character(1) COLLATE pg_catalog."default" DEFAULT 'F'::bpchar;
ALTER TABLE sync_temp_dispense ADD COLUMN IF NOT EXISTS motivocriacaoespecial character varying(255) COLLATE pg_catalog."default" DEFAULT ''::character varying;
update simpledomain set value = 'Voltou da Referencia' where name = 'activation_reason' and value = 'Desconhecido';

