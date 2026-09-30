USE master;
GO
DROP DATABASE IF EXISTS MOjaBaza;
GO
CREATE DATABASE MojaBaza;
GO
USE MojaBaza;
GO
CREATE TABLE Voce
( IDVoce  nvarchar (50) CONSTRAINT PK_Voce PRIMARY KEY,
  Naziv nvarchar (50)
)

CREATE TABLE Sorta
( IDSorta nvarchar (50) CONSTRAINT PK_Sorta PRIMARY KEY,
Naziv nvarchar (50),
MinimalnaKolicina int,
TrenutnaKolicina int,
NabavnaCijena float,
ProdajnaCijena float,
VoceID nvarchar (50) CONSTRAINT FK_Voće FOREIGN KEY REFERENCES Voce(IDVoce)
)

CREATE TABLE Dobavljac
(IDDobavljac nvarchar (50) CONSTRAINT PK_Dobavljac PRIMARY KEY,
Ime nvarchar (50),
Prezime nvarchar(50),
Adresa nvarchar (50),
BrojTelefona int
)

CREATE TABLE DobavljacSorta
(IDDobavljacSorta nvarchar (50) CONSTRAINT PK_DobavljacSorta PRIMARY KEY,
DobavljacID nvarchar (50) CONSTRAINT FK_Dobavljac FOREIGN KEY REFERENCES Dobavljac(IDDobavljac),
SortaID nvarchar (50) CONSTRAINT FK_Sorta FOREIGN KEY REFERENCES Sorta (IDSorta)
)