create schema progetto;
use progetto;
create table prodotti (
id_prodotto int primary key auto_increment,
nome varchar (50) not null,
disponibilita enum ("SI", "NO") not null,
quantita int default 0,
iva_prodotti float default 0.22,
descrizione varchar (700) not null,
prezzo_base float default 0,
pat varchar(500) not null
);

insert into prodotti (nome, disponibilita, quantita, descrizione, prezzo_base, pat) values ("Purina crocchette cane", "SI", 500, "crocchette a manzo per cane da 2kg", 14.50, "C:\Users\utente\Desktop\TSW progetto\QuaLaZampa\Esercizio_Ferrara_Schettino_Ceccarelli\WebContent\image\Purina_crocchette_cane.png");
insert into prodotti (nome, disponibilita, quantita, descrizione, prezzo_base, pat) values ("Purina crocchette gatto", "SI", 500, "crocchette al pollo per gatti da 2kg", 14.50, "C:\Users\utente\Desktop\TSW progetto\QuaLaZampa\Esercizio_Ferrara_Schettino_Ceccarelli\WebContent\image\Purina_crocchette_gatto.png");
insert into prodotti (nome, disponibilita, quantita, descrizione, prezzo_base, pat) values ("Cuccia per gatto", "SI", 500, "Cuccia per gatto Small 47x13cm", 10.20, "C:\Users\utente\Desktop\TSW progetto\QuaLaZampa\Esercizio_Ferrara_Schettino_Ceccarelli\WebContent\image\Cuccia_per_gatto.jpg");
insert into prodotti (nome, disponibilita, quantita, descrizione, prezzo_base, pat) values ("Salviette detergenti", "SI", 500, "Salviette detergenti zampe cane", 3.80, "C:\Users\utente\Desktop\TSW progetto\QuaLaZampa\Esercizio_Ferrara_Schettino_Ceccarelli\WebContent\image\Salviette_detergenti_per_animali.jpg");

create table cliente (
username varchar(25) not null,
id_cliente int primary key auto_increment,
e_mail varchar (25) not null,
password varchar (50) not null,
amministratore enum ("SI", "NO") not null
);

insert into cliente (username, e_mail, password, amministratore) values ("Alfonso", "a@gmail.com", "admin1", "SI");
insert into cliente (username, e_mail, password, amministratore) values ("Sabrina", "s@gmail.com", "admin2", "NO");
insert into cliente (username, e_mail, password, amministratore) values ("Miriam", "m@gmail.com", "admin3", "NO");

create table dati_anagrafici (
nome varchar(25) not null,
cognome varchar(25) not null,
telefono varchar(25) not null,
cf varchar (50) primary key,
id_cliente_dati int,
foreign key (id_cliente_dati) references cliente (id_cliente) ON DELETE SET NULL ON UPDATE CASCADE
);

insert into dati_anagrafici values ("Luigi", "Greco", "081123456", "LG15P9KUP", 1);
insert into dati_anagrafici values ("Claudia", "Rossi", "389557419", "CR145PK79S9", 2);
insert into dati_anagrafici values ("Teresa", "Verdi", "0818745983", "TV45GT74T7", 3);

create table indirizzo_spedizione (
via varchar(50) not null,
id_spedizione int primary key auto_increment,
citta varchar(25) not null,
provincia varchar(25) not null,
cap varchar(25) not null,
 id_cliente_indirizzo int,
 foreign key (id_cliente_indirizzo) references cliente (id_cliente) ON DELETE SET NULL ON UPDATE CASCADE
);

insert into indirizzo_spedizione (via, citta, provincia, cap, id_cliente_indirizzo) values ("via Garibaldi n.69", "Pompei", "Napoli", "80045", 2);
insert into indirizzo_spedizione (via, citta, provincia, cap, id_cliente_indirizzo) values ("via Giuseppe Verdi n.15", "Fisciano", "Salerno", "8084", 3);

create table acquista (
id_cliente_acquista int,
id_prodotto_acquista int,
foreign key (id_cliente_acquista) references cliente (id_cliente) ON DELETE SET NULL ON UPDATE CASCADE,
foreign key (id_prodotto_acquista) references prodotti (id_prodotto) ON DELETE SET NULL ON UPDATE CASCADE
);

create table ordine (
id_ordine int primary key auto_increment,
prezzo_totale float not null,
stato_ordine varchar (25) not null,
data_ordine date not null
);

create table effettua (
id_cliente_effettua int,
id_ordine_effettua int,
foreign key (id_cliente_effettua) references cliente (id_cliente) ON DELETE SET NULL ON UPDATE CASCADE,
foreign key (id_ordine_effettua) references ordine (id_ordine) ON DELETE SET NULL ON UPDATE CASCADE
);

create table inserito (
iva_inserito float default 0.22,
quantita_inserito int not null,
prezzo_inserito float not null,
id_prodotto_inserito int,
id_ordine_inserito int,
foreign key (id_prodotto_inserito) references prodotti (id_prodotto) ON DELETE SET NULL ON UPDATE CASCADE,
foreign key (id_ordine_inserito) references ordine (id_ordine) ON DELETE SET NULL ON UPDATE CASCADE
);
