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
