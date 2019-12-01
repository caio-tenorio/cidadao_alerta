CREATE TABLE public.remuneracoes (
	id serial NOT NULL,
	vereador varchar(255) NOT NULL,
	total_vantagens float8 NOT NULL,
	descontos_totais float8 NOT NULL,
	valor_liquido float8 NOT NULL,
	"data" varchar(255) NULL,
	"timestamp" timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	id_vereador int4 NULL,
	CONSTRAINT remuneracoes_pkey PRIMARY KEY (id),
	CONSTRAINT fk_vereador FOREIGN KEY (id_vereador) REFERENCES vereadores(id)
);
