USE Osobe

CREATE TABLE Osoba (
	IDOsobe int NOT NULL PRIMARY KEY,
	Ime nvarchar(50) NOT NULL
)

DELETE FROM Osoba

-- 5
BEGIN TRAN
INSERT INTO Osoba (IDOsobe, Ime)
VALUES (123,'Ivan')
SAVE TRAN rollbackTran1
INSERT INTO Osoba (IDOsobe, Ime)
VALUES (124,'Luka')
SAVE TRAN rollbackTran2
ROLLBACK TRAN

SELECT * FROM Osoba

-- 6
BEGIN TRAN
INSERT INTO Osoba (IDOsobe, Ime)
VALUES (123, 'Ivan')
SAVE TRAN rollbackTran1
INSERT INTO Osoba (IDOsobe, Ime)
VALUES (124, 'Luka')
SAVE TRAN rollbackTran2
COMMIT TRAN

SELECT * FROM Osoba

-- 7
BEGIN TRAN
INSERT INTO Osoba (IDOsobe, Ime)
VALUES (123, 'Ivan')
SAVE TRAN rollbackTran1
INSERT INTO Osoba (IDOsobe, Ime)
VALUES (124, 'Luka')
ROLLBACK TRAN rollbackTran1
ROLLBACK

SELECT * FROM Osoba

-- 8 
BEGIN TRAN
INSERT INTO Osoba (IDOsobe, Ime)
VALUES (123, 'Ivan')
SAVE TRAN rollbackTran1
INSERT INTO Osoba (IDOsobe, Ime)
VALUES (124, 'Luka')
ROLLBACK TRAN rollbackTran1
COMMIT TRAN

SELECT * FROM Osoba