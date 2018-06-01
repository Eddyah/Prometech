CREATE TABLE utilisateurs (
  ID                 INTEGER AUTO_INCREMENT PRIMARY KEY,
  nom                VARCHAR(256),
  prenom             VARCHAR(256),
  email              VARCHAR(256),
  password           VARCHAR(256),
  statutClient       BOOLEAN,
  statutGestionnaire BOOLEAN,
  statutAdmin        BOOLEAN,
  statutSubordonne   BOOLEAN
);

CREATE TABLE produits (
  numeroDeSerie INTEGER AUTO_INCREMENT PRIMARY KEY,
  nom           VARCHAR(256),
  modele        VARCHAR(256)
);

CREATE TABLE capteurs (
  numeroDeSerie INTEGER PRIMARY KEY REFERENCES produits (numeroDeSerie)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  valeur        FLOAT
);

CREATE TABLE actionneurs (
  numeroDeSerie INTEGER PRIMARY KEY REFERENCES produits (numeroDeSerie)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  etat          INTEGER
);

CREATE TABLE historique (
  numeroDeSerie INTEGER PRIMARY KEY REFERENCES produits (numeroDeSerie)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  valeur        FLOAT,
  time          DATETIME
);

CREATE TABLE proprieteProduit (
  ID_utilisateur INTEGER REFERENCES utilisateurs (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  numeroDeSerie  INTEGER REFERENCES produits (numeroDeSerie)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT PRIMARY KEY (ID_utilisateur, numeroDeSerie)
);

CREATE TABLE logements (
  ID           INTEGER AUTO_INCREMENT PRIMARY KEY,
  adresse      TEXT,
  nbrPieces    INTEGER,
  nbrHabitants INTEGER,
  superficie   INTEGER
);

CREATE TABLE occupationLogement (
  ID_utilisateur INTEGER REFERENCES utilisateurs (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  ID_logement    INTEGER REFERENCES logements (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT PRIMARY KEY (ID_utilisateur, ID_logement)
);

CREATE TABLE gestionLogement (
  ID_utilisateur INTEGER REFERENCES utilisateurs (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  ID_logement    INTEGER REFERENCES logements (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT PRIMARY KEY (ID_utilisateur, ID_logement)
);

CREATE TABLE pieces (
  ID          INTEGER AUTO_INCREMENT PRIMARY KEY,
  ID_logement INTEGER REFERENCES logements (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  nom         VARCHAR(256)
);

CREATE TABLE positionProduit (
  numeroDeSerie INTEGER REFERENCES produits (numeroDeSerie)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  ID_piece      INTEGER REFERENCES pieces (ID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT PRIMARY KEY (numeroDeSerie, ID_piece)
);

CREATE TABLE logs (
  ID             INTEGER AUTO_INCREMENT PRIMARY KEY,
  time           DATETIME,
  action         TEXT,
  ID_utilisateur INTEGER REFERENCES utilisateurs (ID)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);

CREATE TABLE ticketsDeSupport (
  ID       INTEGER AUTO_INCREMENT PRIMARY KEY,
  etat     INTEGER,
  priorite INTEGER,
  time     DATETIME,
  contenu  TEXT,
  objet    VARCHAR(256),
  email    VARCHAR(256)
);

CREATE TABLE modeleProduits(
    ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    modele VARCHAR(256),
    icon INTEGER
);