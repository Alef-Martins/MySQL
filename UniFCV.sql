/*clientes*/
create table if not exists cliente(
    cod_cliente smallint not null auto_increment,
    nome_cliente varchar(40) not null,
    endereço varchar(40),
    cidade varchar(20),
    cep char(08)null,
    uf char(02) null,
    primary key (cod_cliente)
)default charset=utf8mb4;

/*vendedores*/
create TABLE if not exists vendedor(
    cod_vendedor smallint not null AUTO_INCREMENT,
    nome_vendedor varchar(40) not null,
    sal_fixo real(9,2) not null,
    faixa_comissao char(01) not null,
    primary key (cod_vendedor)
)default charset=utf8mb4;

alter table vendedor auto_increment=11;

/*produtos*/
create table if not exists produto(
    cod_produto smallint not null,
    uni_produto char(03) not null,
    desc_produto varchar(30) not null,
    val_unit real(9, 2) not null,
    primary key(cod_produto)
)default charset=utf8mb4;

/*pedido*/
create table if not exists pedido(
    num_pedido smallint not null UNIQUE,
    prazo_entrega smallint not null,
    cd_cli SMALLINT not null REFERENCES cliente (cod_cliente),
    cd_vendedor smallint not NULL references vendedor (cod_vendedor),
    primary key(num_pedido)
)default charset=utf8mb4;

/*item pedido*/
create table if not exists item_pedido(
    no_pedido smallint not null REFERENCES pedido (num_pedido),
    cd_produto smallint not null references produto(cod_produto),
    qtd_pedido float not null
)default charset=utf8mb4;

/*Inserir dados na tabela vendedor*/
insert into vendedor
(cod_vendedor, nome_vendedor, sal_fixo, faixa_comissao)
values 
(default, 'Ana Cristina', '2100', 'a'),
(DEFAULT, 'Armando Souza', '2500', 'a'),
(default, 'Cassia Andrade', '900', 'c'),
(default, 'Maria Paula', '900', 'c'),
(default, 'Paulo Alberto', '1500', 'b');

/*Inserir dados na tabela cliente*/
insert into cliente
VALUES
(default, 'Supermercado Carrefour', 'Av. da Americas', 'Rio de Janeiro', '20000001', 'RJ'),
(default, 'Supermercado Baratao', 'Rua Rolando Lero', 'Rio de Janeiro', '20000002', 'RJ'),
(default, 'Supermercado Arariboia', 'Rua Itaoca', 'Niteroi', '20000003', 'RJ'),
(default, 'UFF', 'Cidade Universitaria', 'Niteroi', '20000004', 'RJ'),
(default, 'CSN', 'Rua do Aço', 'Volta Redonda', '20000005', 'RJ'),
(default, 'Pegeout', 'Rodovia Pres. Dutra', 'Resende', '20000006', 'RJ'),
(default, 'Ind. Quimicas Paulistas', 'Rua Tuiuti', 'São Paulo', '11000001', 'SP'),
(default, 'Ford Caminhões', 'Rua Henry Ford', 'São Paulo', '11000002', 'SP'),
(default, 'Riocel Celulose', 'Rua Gen. Arouca', 'Guaiba', '30000001', 'RS'),
(default, 'Elevadores Sur', 'Rua Planejada', 'Guaiba', '30000001', 'RS');

/*Inserir dados na tabela produto*/
insert into produto VALUES
('100', 'kg', 'Chapa de aço', '2.5'),
('200', 'kg', 'Cimento', '4.5'),
('300', 'kg', 'Parafuso 3.0X10.5mm', '2'),
('400', 'm', 'Fio plastico', '2'),
('500', 'l', 'Solvente PRW', '5');

/*Inserir dados na tabela pedido*/
insert into pedido values
('1111', '10', '1', '11'),
('1112', '5', '1', '11'),
('1113', '30', '1', '15'),
('2111', '18','3','14'),
('2112', '18', '3', '12'),
('2113', '3', '3','12'),
('3111', '13','4', '12'),
('3112', '7', '4', '11'),
('4111', '7', '6', '11'),
('4112', '7','6', '14'),
('5111', '10', '8', '14'),
('6111', '30', '9', '14'),
('6112', '60', '9', '12'),
('7111', '20', '1', '15');

/*Inserir dados na tabela item_pedido*/
insert into item_pedido values
('1111', '100', '100'),
('1111', '200', '100'),
('1111', '300', '200'),
('1112', '400', '100'),
('1112', '500', '1000'),
('1113', '100', '300'),
('2111', '100', '500'),
('2111', '500', '400'),
('2112', '200', '100'),
('2112', '200', '200'),
('3111', '400', '300'),
('3112', '100', '400'),
('3112', '200', '600'),
('4111', '300', '700'),
('4112', '500', '1000'),
('4112', '500', '500'),
('5111', '200', '100'),
('5111', '300', '500'),
('6111', '400', '100'),
('6112', '300','400'),
('6112', '400', '200'),
('7111', '100', '500');