create or replace function update_the_db() returns void as
$$
begin

    if not exists(select * from information_schema.tables 
        where 
            table_catalog = CURRENT_CATALOG and table_schema = CURRENT_SCHEMA
            and table_name = 'file') then
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

    end if;

end;
$$
language 'plpgsql';

select update_the_db();
drop function update_the_db();

