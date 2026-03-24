create database concenssionária;
use concenssionária;

create table cliente(
cpf varchar(11) not null,
nome varchar(30) not null,
telefone varchar(15) not null,
primary key(cpf)
);

create table veiculo(
categoria varchar(10),
modelo varchar(10),
id_veiculo int auto_increment,
estado varchar(10),
placa varchar(15),
primary key(id_veiculo)
);

create table contrato(
 id_contrato int Auto_Increment,
 da_retirada varchar (11) not null,
 da_devolução_prevista varchar(11) not null,
 valor_diaria varchar (10),
 tipo_seguro varchar (20),
 cpf varchar(11) not null,
 id_veiculo int,
 primary key(id_contrato),
 foreign key (cpf) References cliente(cpf),
foreign key (id_veiculo) References veiculo(id_veiculo)
);

create table multa(
desc_multa varchar (50),
id_multa int auto_increment,
id_veiculo int,
id_contrato int,
valor_multa float,
primary key(id_multa),
foreign key (id_veiculo) references veiculo(id_veiculo),
foreign key (id_contrato) references contrato(id_contrato)
);

create table manuntenção(
id_manuntenção int auto_increment,
id_veiculo int,
desc_manuntenção varchar(50),
primary key(id_manuntenção),
foreign key (id_veiculo) references veiculo(id_veiculo)
);

create table reserva(
id_reserva int auto_increment,
data_res varchar(11),
id_veiculo int,
cpf varchar(11) not null,
primary key(id_reserva),
foreign key (id_veiculo) references veiculo(id_veiculo),
foreign key (cpf) references cliente(cpf)
);

create table pagamento(
id_pag int auto_increment,
estado varchar(10),
valor float,
cpf varchar(11),
primary key(id_pag),
foreign key (cpf) references cliente(cpf)
);

create table devolução(
id_devolução int auto_increment,
km_final varchar(20),
danos_ident varchar(50),
valor_adic float,
cpf varchar(11) not null,
primary key(id_devolução),
foreign key (cpf) references cliente(cpf)
);
