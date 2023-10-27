-- 1. Créer une base de données "players"

CREATE DATABASE IF NOT EXISTS gameDB;

USE gameDB;

CREATE TABLE IF NOT EXISTS players (
    id INT PRIMARY KEY AUTO_INCREMENT,
    level INT NOT NULL,
    map VARCHAR(50),
    position VARCHAR(50),
    life INT,
    money FLOAT,
    energy INT
);

-- 2. Remplir la table avec des données fictives
INSERT INTO players (level, map, position, life, money, energy)
VALUES (1, 'Map1', 'x10y20', 100, 500.0, 100),
       (2, 'Map2', 'x30y40', 90, 200.0, 80),
       (3, 'Map3', 'x50y60', 85, 750.0, 95);

-- 3. Modifier les valeurs d'un joueur
UPDATE players
SET level = 4, money = 600.0
WHERE id = 1;

-- 4. Supprimer un joueur
DELETE FROM players WHERE id = 1;

-- 5. Lire les données d'un joueur selon son ID
SELECT * FROM players WHERE id = 1;
