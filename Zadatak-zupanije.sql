drop database if exists zadatakzupanije;
create database zadatakzupanije;
use zadatakzupanije;

/*treba unijeti 3 zupanije
				6 opcina
				12 mjesta
				3 zupana
				
	promijeniti 5 mjesta
	obrisati	2 opcine
*/

create table zupanija(
	sifra int not null primary key auto_increment,
	naziv varchar(50),
	zupan int
);

create table mjesto(
	sifra int not null primary key auto_increment,
	opcina int,
	naziv varchar(50)
);

create table opcina(
	sifra int not null primary key auto_increment,
	zupanija int,
	naziv varchar(50)
);

create table zupan(
	sifra int not null primary key auto_increment,
	ime varchar(50),
	prezime varchar(50)
);

alter table mjesto add foreign key (opcina) references opcina(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);

alter table zupanija add foreign key (zupan) references zupan(sifra);

insert into zupan(ime, prezime)
values('Angela','Merkel'),('Jacques','Chirac'),('Boris','>Johnson');

insert into zupanija(naziv, zupan)
values('Splitsko-Dalmatinska', 1),('Dubrovaèko-neretvanska', 2),('Požeško-slavonska', 3);

insert into opcina(zupanija,naziv)
values(1,'Split'),(1,'Trogir'),(2,'Dubrovnik'),(2,'Cavtat'),(3,'Požega'),(3,'Velika');

insert into mjesto(opcina,naziv)
values(1,'xyz'),(1,'asd'),(2,'fgh'),(2,'hjk'),(3,'klè'),(3,'poi'),
(4,'rew'),(4,'fvg'),(5,'nhz'),(5,'mji'),(6,'ggt'),(6,'wqa');

update mjesto set naziv='Gospiæ' where mjesto.sifra<6;

