CREATE TABLE public.vereadores (
	id serial NOT NULL,
	nome_civil varchar(50) NOT NULL,
	nome_parlamentar varchar(50) NOT NULL,
	partido varchar(25) NOT NULL,
	ativo varchar(25) NOT NULL,
	"timestamp" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT vereadores_pkey PRIMARY KEY (id)
);
