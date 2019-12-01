CREATE TABLE public.presencas (
	id serial NOT NULL,
	presente bool NOT NULL,
	id_vereador int4 NOT NULL,
	id_sessao int4 NOT NULL,
	"timestamp" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT presencas_pkey PRIMARY KEY (id),
	CONSTRAINT fk FOREIGN KEY (id_vereador) REFERENCES vereadores(id),
	CONSTRAINT fk_sessao FOREIGN KEY (id_sessao) REFERENCES sessoes(id)
);
