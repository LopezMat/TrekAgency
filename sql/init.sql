CREATE DATABASE TrekAgency;

USE TrekAgency;

CREATE TABLE Clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    email VARCHAR(100),
    telephone VARCHAR(15),
    date_inscription DATE
);

CREATE TABLE Treks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    lieu VARCHAR(100),
    duree INT,
    prix DECIMAL(10, 2),
    difficulte ENUM('Facile', 'Moyen', 'Difficile'),
    description TEXT
);

CREATE TABLE Reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    trek_id INT,
    date_reservation DATE,
    statut ENUM('Confirmée', 'Annulée'),
    FOREIGN KEY (client_id) REFERENCES Clients(id),
    FOREIGN KEY (trek_id) REFERENCES Treks(id)
);
