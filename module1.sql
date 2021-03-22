create database module1;

create table professeur (
	matricule int primary key auto_increment,
	id varchar (20),
	mdp varchar (50)
);

create table classe (
	codeClasse int primary key auto_increment,
	nom varchar (50),
	effectif int
);

create table matiere (
	 idMatiere int primary key auto_increment, 
	 nomMatiere varchar (20), matricule int,
	 constraint foreign key fk_matiere_idMatiere_professeur
	  (matricule) references professeur(matricule) 
);

create table listePresence (
	ine varchar(10) primary key,
	nomEtudiant varchar(20),
	prenomEtudiant varchar (20),
	codeClass int,
	 constraint foreign key fk_listePresence_codeClass_classe
	 (codeClass) references classe (codeClasse)
);