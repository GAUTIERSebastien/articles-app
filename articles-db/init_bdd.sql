create table article (
  id int not null auto_increment,
  libelle VARCHAR(100) not null,
  prix DECIMAL,
  primary key (id)
);

insert into article(libelle, prix) values ('Vélo', 500.00);
insert into article(libelle, prix) values ('Moto', 4200.00);
insert into article(libelle, prix) values ('Kayak', 299.89);
insert into article(libelle, prix) values ('Skate', 600.49);


