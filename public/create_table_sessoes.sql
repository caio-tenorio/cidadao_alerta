CREATE TABLE public.sessoes (
	id serial NOT NULL,
	nome varchar(150) NOT NULL,
	tipo varchar(50) NOT NULL,
	abertura varchar(25) NOT NULL,
	encerramento varchar(25) NOT NULL,
	data_sessao varchar(25) NOT NULL,
	lista_de_presenca _varchar NULL,
	"timestamp" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT sessoes_pkey PRIMARY KEY (id)
);
