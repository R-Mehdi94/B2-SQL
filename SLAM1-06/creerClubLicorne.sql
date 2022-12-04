DROP DATABASE IF EXISTS clubChv;

CREATE DATABASE IF NOT EXISTS clubChv;
USE clubChv;

CREATE TABLE Adherent(
	numAdh int(20) not null,
	nomAdh varchar(20),
	prenomAdh varchar(20),
	adrAdh varchar(30),
	parrain int(20),
	primary key(numAdh),
	foreign key(parrain) references Adherent(numAdh)
);


