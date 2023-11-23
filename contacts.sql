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

INSERT INTO contacts (nom,prenom,date_de_naissance,sexe,adresse,cp,ville,pays) VALUES
('Dubois', 'Jean', '1980-05-15', 'M', '123 Rue de la Liberté', '75001', 'Paris', 'France'),
('Smith', 'Emily', '1992-09-28', 'F', '456 Main Street', '10001', 'New York', 'USA'),
('Schmidt', 'Markus', '1975-03-10', 'M', '789 Hauptstrasse', '10115', 'Berlin', 'Allemagne'),
('Taylor', 'Olivia', '1988-11-22', 'F', '321 Oak Avenue', '2000', 'Sydney', 'Australie'),
('Garcia', 'Antonio', '1982-07-03', 'M', '987 Calle Principal', '28001', 'Madrid', 'Espagne'),
('Tanaka', 'Yuki', '1995-01-18', 'F', '654 Sakura Street', '100-0001', 'Tokyo', 'Japon'),
('Silva', 'Ana', '1987-06-12', 'F', '234 Avenida Brasil', '04578-000', 'São Paulo', 'Brésil'),
('Müller', 'Hans', '1970-12-05', 'M', '876 Musterstrasse', '10178', 'Berlin', 'Allemagne'),
('Chen', 'Wei', '1990-04-30', 'M', '543 Elm Road', '200333', 'Shanghai', 'Chine'),
('Gagnon', 'Sophie', '1984-08-08', 'F', '765 Rue Principale', 'H2X 1Y6', 'Montréal', 'Canada');

CREATE TABLE pays (
    iso_3 VARCHAR(3),
    nom VARCHAR(70),
    iso_2 VARCHAR(2),
    nationalite VARCHAR(50)
)

INSERT INTO PAYS (iso_3, nom, iso_2, nationnalite) VALUES
('FRA', 'France', 'FR', 'Française'),
('USA', 'États-Unis', 'US', 'Américaine'),
('GER', 'Allemagne', 'DE', 'Allemande'),
('GBR', 'Royaume-Uni', 'GB', 'Britannique'),
('ESP', 'Espagne', 'ES', 'Espagnole'),
('ITA', 'Italie', 'IT', 'Italienne'),
('CAN', 'Canada', 'CA', 'Canadienne'),
('AUS', 'Australie', 'AU', 'Australienne'),
('JPN', 'Japon', 'JP', 'Japonaise'),
('BRA', 'Brésil', 'BR', 'Brésilienne');