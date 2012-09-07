

CREATE TABLE file
(
  filename character varying(256) NOT NULL,
  data text NOT NULL,
  size integer NOT NULL,
  CONSTRAINT file_pkey PRIMARY KEY (filename )
)
WITH (
  OIDS=FALSE
);

ALTER TABLE file
  OWNER TO toto;

