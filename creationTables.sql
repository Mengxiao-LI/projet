Create Table Client(
idClient varChar(255),
email varChar(255),
mdp varChar(255),
Constraint pkClient Primary Key (idClient)
);

Create Table TypeDonnees(
numTD int auto_increment,
nomTD varChar(255),
Constraint pkTD Primary Key (numTD)
);

Create Table Courbe(
numCourbe int auto_increment,
idClient varChar(255),
nomCourbe varChar(255),
estPublic boolean,
numTD int,
Constraint pkCourbe Primary Key (numCourbe),
Constraint fkCourbeClient Foreign Key (idClient) References Client (idClient),
Constraint fkCourbeDonnees Foreign Key (numTD) References TypeDonnees (numTD)
);

Create Table Donnees(
temps int,
valeur int,
numCourbe int,
Constraint pkProduit Primary Key (temps, numCourbe),
Constraint fkDonneesCourbe Foreign Key (numCourbe) References Courbe (numCourbe)
);

Drop Table Donnees;
Drop Table Courbe;
Drop Table TypeDonnees;
Drop Table Client;