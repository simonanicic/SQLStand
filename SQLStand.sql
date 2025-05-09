CREATE DATABASE Stand

USE Stand

CREATE TABLE Voce(
	IDVoca int CONSTRAINT PK_IDVoca PRIMARY KEY IDENTITY,
	Naziv varchar(30) NOT NULL
)

CREATE TABLE Sorta(
	IDSorta int CONSTRAINT PK_IDSorta PRIMARY KEY IDENTITY,
	Naziv varchar(30) NOT NULL,
	MinimalnaKolicina int NOT NULL,
	TrenutnaKolicina int NOT NULL,
	NabavnaCijena float NOT NULL,
	ProdajnaCijena float NOT NULL,
	VoceID int CONSTRAINT FK_Voce FOREIGN KEY REFERENCES Voce(IDVoca)
)

CREATE TABLE Dobavljac(
	IDDobavljac int CONSTRAINT PK_IDDobavljac PRIMARY KEY IDENTITY,
	Ime varchar(30) NOT NULL,
	Prezime varchar(30) NOT NULL,
	Adresa varchar(50) NOT NULL,
	BrojMobitela int NOT NULL
)

CREATE TABLE DobavljacSorta(
	IDDobavljacSorta int CONSTRAINT PK_IDDobavljacSorta PRIMARY KEY IDENTITY,
	DobavljacID int CONSTRAINT FK_Dobavljac FOREIGN KEY REFERENCES Dobavljac(IDDobavljac),
	SortaID int CONSTRAINT FK_Sorta FOREIGN KEY REFERENCES Sorta(IDSorta)
)