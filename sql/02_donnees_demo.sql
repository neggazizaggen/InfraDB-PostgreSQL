-- Project: InfraDB-PostgreSQL
-- Author: Sobhy NEGGAZI
-- Sample data for IT infrastructure

INSERT INTO sites (nom, ville) VALUES
('Siege Central', 'Alger'),
('Direction Regionale Est', 'Constantine'),
('Agence Ouest', 'Oran');

INSERT INTO equipements
(nom, type, adresse_ip, site_id, statut) VALUES
('SRV-AD-01', 'Serveur', '10.10.0.10', 1, 'Actif'),
('SRV-DB-01', 'Serveur PostgreSQL', '10.10.0.20', 1, 'Actif'),
('SW-CORE-01', 'Switch', '10.10.0.2', 1, 'Actif'),
('RTR-EST-01', 'Routeur', '10.20.0.1', 2, 'Actif'),
('SW-OUEST-01', 'Switch', '10.30.0.2', 3, 'Maintenance');

INSERT INTO incidents
(titre, priorite, statut, equipement_id) VALUES
('Perte de connectivite reseau', 'Haute', 'Ouvert', 3),
('Echec de sauvegarde', 'Moyenne', 'En cours', 2),
('Maintenance preventive du switch', 'Basse', 'Ouvert', 5);
