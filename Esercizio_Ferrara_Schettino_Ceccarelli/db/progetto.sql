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

create table cliente (
username varchar(25) not null,
id_cliente int primary key auto_increment,
e_mail varchar (25) not null,
password varchar (50) not null,
amministratore enum ("SI", "NO") not null
);

insert into cliente (username, e_mail, password, amministratore) values ("Giggino", "gigi@gmail.com", "GigginoIlBiondo", "SI");
insert into cliente (username, e_mail, password, amministratore) values ("Claudia", "claudia@gmail.com", "Admin3", "NO");
insert into cliente (username, e_mail, password, amministratore) values ("Teresa", "teresa@gmail.com", "TeresaAdmin", "NO");

create table dati_anagrafici (
nome varchar(25) not null,
cognome varchar(25) not null,
telefono varchar(25) not null,
cf varchar (50) primary key,
id_cliente int,
foreign key (id_cliente) references cliente (id_cliente) ON DELETE SET NULL ON UPDATE CASCADE
);

insert into dati_anagrafici values ("Luigi", "Greco", "081123456", "LG15P9KUP", 1);
insert into dati_anagrafici values ("Claudia", "Rossi", "389557419", "CR145PK79S9", 2);
insert into dati_anagrafici values ("Teresa", "Verdi", "0818745983", "TV45GT74T7", 3);

create table indirizzo_spedizione (
via varchar(50) not null,
id_spadizione int primary key auto_increment,
citta varchar(25) not null,
provincia varchar(25) not null,
cap int not null,
 id_cliente int,
 foreign key (id_cliente) references cliente (id_cliente) ON DELETE SET NULL ON UPDATE CASCADE
);

insert into indirizzo_spedizione (via, citta, provincia, cap, id_cliente) values ("via Garibaldi n.69", "Pompei", "Napoli", 80045, 2);
insert into indirizzo_spedizione (via, citta, provincia, cap, id_cliente) values ("via Giuseppe Verdi n.15", "Fisciano", "Salerno", 8084, 3);

