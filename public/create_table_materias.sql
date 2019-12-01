CREATE TABLE public.materias (
	id serial NOT NULL,
	tipo varchar(100) NOT NULL,
	data_materia varchar(50) NOT NULL,
	ementa varchar(1000) NOT NULL,
	autor varchar(100) NOT NULL,
	texto_integral_link varchar(500) NULL,
	link varchar(1000) NULL,
	"timestamp" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	id_vereador int4 NULL,
	CONSTRAINT materias_pkey PRIMARY KEY (id),
	CONSTRAINT fk FOREIGN KEY (id_vereador) REFERENCES vereadores(id)
);
