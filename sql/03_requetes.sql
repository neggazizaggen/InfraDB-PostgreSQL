-- Project: InfraDB-PostgreSQL
-- Author: Sobhy NEGGAZI
-- Purpose: IT infrastructure monitoring queries

-- 1. Display all equipment
SELECT
    e.nom,
    e.type,
    e.adresse_ip,
    s.nom AS site,
    e.statut
FROM equipements e
JOIN sites s ON e.site_id = s.id
ORDER BY s.nom, e.nom;

-- 2. Display open incidents
SELECT
    i.id,
    i.titre,
    i.priorite,
    i.statut,
    e.nom AS equipement
FROM incidents i
JOIN equipements e ON i.equipement_id = e.id
WHERE i.statut = 'Ouvert'
ORDER BY
    CASE i.priorite
        WHEN 'Haute' THEN 1
        WHEN 'Moyenne' THEN 2
        WHEN 'Basse' THEN 3
        ELSE 4
    END;

-- 3. Count equipment by status
SELECT
    statut,
    COUNT(*) AS total
FROM equipements
GROUP BY statut;

-- 4. Count incidents by priority
SELECT
    priorite,
    COUNT(*) AS total
FROM incidents
GROUP BY priorite
ORDER BY total DESC;
