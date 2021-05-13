create schema progetto;
use progetto;
create table prodotti (
id_prodotto int primary key auto_increment,
nome varchar (50) not null,
disponibilita enum ("SI", "NO") not null,
quantita int default 0,
iva float default 0.22,
descrizione varchar (700) not null,
prezzo_base float default 0 
);

insert into prodotti (nome, disponibilita, quantita, descrizione, prezzo_base) values ("Purina crocchette cane", "SI", 500, "crocchette a manzo per cane da 2kg", 14.50);
insert into prodotti (nome, disponibilita, quantita, descrizione, prezzo_base) values ("Purina crocchette gatto", "SI", 500, "crocchette al polli per gatti da 2kg", 14.50);
insert into prodotti (nome, disponibilita, quantita, descrizione, prezzo_base) values ("Cuccia per gatto", "SI", 500, "Cuccia per gatto Small 47x13cm", 10.20);
insert into prodotti (nome, disponibilita, quantita, descrizione, prezzo_base) values ("Salviette detergenti", "SI", 500, "Salviette detergenti zampe cane", 3.80);