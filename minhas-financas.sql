CREATE TABLE usuario
(
  id int auto_increment NOT NULL PRIMARY KEY,
  nome character varying(150),
  email character varying(100),
  senha character varying(20),
  data_cadastro datetime default now()
);

drop table usuario;

CREATE TABLE lancamento
(
  id int auto_increment NOT NULL PRIMARY KEY ,
  descricao character varying(100) NOT NULL,
  mes integer NOT NULL,
  ano integer NOT NULL,
  valor numeric(16,2) NOT NULL,
  tipo character varying(20) CHECK (tipo in ('RECEITA', 'DESPESA') ) NOT NULL,
  status character varying(20) CHECK (status in ( 'PENDENTE', 'CANCELADO', 'EFETIVADO') ) NOT NULL,
  id_usuario int REFERENCES financas.usuario (id),
  data_cadastro datetime default now()
);