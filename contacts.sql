DROP DATABASE IF EXISTS exo_contacts;
CREATE DATABASE exo_contacts CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

USE exo_contacts;

CREATE TABLE pays (
    iso_3 VARCHAR(3) PRIMARY KEY,
    nom VARCHAR(70),
    iso_2 VARCHAR(2),
    nationalite VARCHAR(50)
);

CREATE TABLE contact (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nom VARCHAR(50),
        prenom VARCHAR(70),
        date_de_naissance DATE,
        sexe VARCHAR(10),
        adresse TEXT,
        cp VARCHAR(10),
        ville VARCHAR(70),
        pays_iso_3 VARCHAR(3),
        FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
	);

CREATE TABLE telephone (
    id INT,
    id_contact INT,
    numero VARCHAR(50),
    type TINYINT, 
    FOREIGN KEY (id_contact) REFERENCES contact(id)
);




INSERT INTO pays(iso_3, nom, iso_2, nationalite) VALUES
('FRA', 'France', 'FR', 'Française'),
('USA', 'États-Unis', 'US', 'Américaine'),
('GER', 'Allemagne', 'DE', 'Allemande'),
('GBR', 'Royaume-Uni', 'GB', 'Britannique'),
('ESP', 'Espagne', 'ES', 'Espagnole'),
('ITA', 'Italie', 'IT', 'Italienne'),
('CAN', 'Canada', 'CA', 'Canadienne'),
('AUS', 'Australie', 'AU', 'Australienne'),
('JPN', 'Japon', 'JP', 'Japonaise'),
('BRA', 'Brésil', 'BR', 'Brésilienne'),
('CHN', 'Chine', 'CH' , 'Chinoise');

INSERT INTO contact (nom,prenom,date_de_naissance,sexe,adresse,cp,ville,pays_iso_3) VALUES
('Dubois', 'Jean', '1980-05-15', 'M', '123 Rue de la Liberté', '75001', 'Paris', 'FRA'),
('Smith', 'Emily', '1992-09-28', 'F', '456 Main Street', '10001', 'New York', 'USA'),
('Schmidt', 'Markus', '1975-03-10', 'M', '789 Hauptstrasse', '10115', 'Berlin', 'GER'),
('Taylor', 'Olivia', '1988-11-22', 'F', '321 Oak Avenue', '2000', 'Sydney', 'AUS'),
('Garcia', 'Antonio', '1982-07-03', 'M', '987 Calle Principal', '28001', 'Madrid', 'ESP'),
('Tanaka', 'Yuki', '1995-01-18', 'F', '654 Sakura Street', '100-0001', 'Tokyo', 'JPN'),
('Silva', 'Ana', '1987-06-12', 'F', '234 Avenida Brasil', '04578-000', 'São Paulo', 'BRA'),
('Müller', 'Hans', '1970-12-05', 'M', '876 Musterstrasse', '10178', 'Berlin', 'GER'),
('Chen', 'Wei', '1990-04-30', 'M', '543 Elm Road', '200333', 'Shanghai', 'CHN'),
('Gagnon', 'Sophie', '1984-08-08', 'F', '765 Rue Principale', 'H2X 1Y6', 'Montréal', 'CAN');


INSERT INTO telephone (id, id_contact, numero, type) VALUES
(1, 1, '123456789', 'Mobile'),
(2, 1, '987654321', 'Domicile'),
(3, 2, '555111222', 'Mobile'),
(4, 3, '999888777', 'Travail'),
(5, 4, '333444555', 'Mobile'),
(6, 5, '777888999', 'Domicile'),
(7, 6, '111222333', 'Mobile'),
(8, 7, '444555666', 'Domicile'),
(9, 8, '666777888', 'Travail'),
(10, 9, '888999000', 'Mobile');