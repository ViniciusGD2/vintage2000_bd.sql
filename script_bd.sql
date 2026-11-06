CREATE TABLE fornecedor (
  id_fornecedor SERIAL PRIMARY KEY,
  nome varchar(255),
  cnpj varchar(18),
  telefone varchar(20)
);

SELECT * FROM fornecedor;



INSERT INTO fornecedor (nome, cnpj) VALUES ('Raul Enzo Nogueira','25.123.638/0001-40')


drop table cliente 


CREATE table cliente(
  id_cliente SERIAL PRIMARY KEY, 
  nome varchar(255),
  email varchar(255),
  cpf varchar(14),
  fk_conta int
);

SELECT * FROM cliente;

INSERT INTO cliente(nome, email, cpf) VALUES ('Emilia Tan','sugoku@gmail','641.805.689-26');

SELECT * FROM cliente;






create table conta(
  id_conta serial primary key,
  numero varchar(50),
  saldo decimal(10,2)
);











DROP TABLE estoque;

create table estoque(
  id_estoque serial primary key,
  quantidade int, 
  fk_produto int, 
  fk_fornecedor int,
  CONSTRAINT fk_estoque_produto FOREIGN KEY (fk_produto) REFERENCES produto(id_produto),
  CONSTRAINT fk_estoque_fornecedor FOREIGN KEY (fk_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

 create table produto(
  id_produto serial primary key,
  nome varchar (200),
  tendencia varchar (100),
  novidade boolean,
  preco_base  numeric,
  id_categoria int(8),
  id_loja int(8)
 );


