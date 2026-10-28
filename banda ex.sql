create database banda;
use banda;
create table membros(
id_membro  int not null auto_increment,
nome varchar(30),
cargo varchar(30),
PRIMARY KEY (id_membro)
);

create table equipamentos(
id_equip int not null auto_increment,
tipo varchar(20),
modelo varchar(30),
id_membro int,
PRIMARY KEY (id_equip),
FOREIGN KEY(id_membro) REFERENCES membros(id_membro)
);
 