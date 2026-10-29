-- Project: InfraDB-PostgreSQL
-- Author: Sobhy NEGGAZI
-- Purpose: IT infrastructure inventory

CREATE TABLE sites (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    ville VARCHAR(100) NOT NULL
);

CREATE TABLE equipements (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    adresse_ip INET,
    site_id INTEGER REFERENCES sites(id),
    statut VARCHAR(20) DEFAULT 'Actif'
);

CREATE TABLE incidents (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titre VARCHAR(200) NOT NULL,
    priorite VARCHAR(20) NOT NULL,
    statut VARCHAR(20) DEFAULT 'Ouvert',
    equipement_id INTEGER REFERENCES equipements(id),
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
