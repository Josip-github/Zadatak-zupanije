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

