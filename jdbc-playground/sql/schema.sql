-- Table: pair, simple key pair example

DROP TABLE pair;

CREATE TABLE pair
(
  key character varying(50) NOT NULL,
  value character varying(255),
  CONSTRAINT pair_pkey PRIMARY KEY (key)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE pair
  OWNER TO various;


-- Table: master

DROP TABLE master;

CREATE TABLE master
(
  id serial NOT NULL,
  value character varying(255) NOT NULL,
  CONSTRAINT master_pkey PRIMARY KEY (id),
  CONSTRAINT unique_id UNIQUE (id)
)
WITH (
OIDS=FALSE
);
ALTER TABLE master
OWNER TO various;

-- Table: detail

DROP TABLE detail;

CREATE TABLE detail
(
  id serial NOT NULL,
  value integer NOT NULL DEFAULT 0,
  master_id integer NOT NULL,
  CONSTRAINT detail_pkey PRIMARY KEY (id),
  CONSTRAINT detail_master_id_fkey FOREIGN KEY (master_id)
  REFERENCES master (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
OIDS=FALSE
);
ALTER TABLE detail
OWNER TO various;


