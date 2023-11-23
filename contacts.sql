DROP DATABASE IF EXISTS exo_contacts;
CREATE DATABASE exo_contacts CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

USE exo_contacts;

CREATE TABLE contacts (
        id int PRIMARY KEY AUTO_INCREMENT,
        nom VARCHAR(50),
        prenom VARCHAR(70),
        date_de_naissance DATE,
        sexe VARCHAR(10),
        adresse TEXT,
        cp VARCHAR(10),
        ville VARCHAR(70),
        pays VARCHAR(50),
        FOREIGN KEY(pays) REFERENCES pays_iso(alpha_3) 
);

INSERT INTO contacts (pays) VALUES
('Dupont', 'simon', "31/11/23","M","33 route_de_lyon","30000","Bordeaux","FR"),
('Dupont', 'simon', "31/11/23","M","33 route_de_lyon","30000","Bordeaux","FR"),
('Dupont', 'simon', "31/11/23","M","33 route_de_lyon","30000","Bordeaux","FR"),
('Dupont', 'simon', "31/11/23","M","33 route_de_lyon","30000","Bordeaux","FR"),
('Dupont', 'simon', "31/11/23","M","33 route_de_lyon","30000","Bordeaux","FR"),
('Dupont', 'simon', "31/11/23","M","33 route_de_lyon","30000","Bordeaux","FR"),
('Dupont', 'simon', "31/11/23","M","33 route_de_lyon","30000","Bordeaux","FR"),
('Dupont', 'simon', "31/11/23","M","33 route_de_lyon","30000","Bordeaux","FR"),
('Dumont', 'Cloe', "20/09/1999","F","10 route_de_noves","13160","chateaurenard","FR"),
('Duponte', 'Elise', "03/11/1970","F","54 route_de_paris","84000","villefranche","FR");

