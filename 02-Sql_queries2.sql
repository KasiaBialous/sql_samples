CREATE TABLE Pet_types (
PetType_ID int,  
PetType varchar (255));

CREATE TABLE Pets (
PetID int,  
PetType_ID int,
PetName varchar (255),
PetYOB int);

INSERT INTO Pet_types (PetType_ID, PetType)
VALUES ('1','Cat'),
('2','Dog'),
('3','Bird'),
('4','Fish');

INSERT INTO Pets (PetID, PetType_ID, PetName, PetYOB)
VALUES ('1','1', 'Bella', '2000'),
('2','2','Reksio','2022'),
('3','3','Klara','2015'),
('4','4','Plumka','2020'),
('5','1','Gucio','2019'),
('6','2','Fafik','2015'),
('7','3','Roman','2023');

CREATE TABLE Owners (
PetOwner_ID int,
FirstName varchar (255),
LastName varchar (255),
Gender varchar (255),
PetID int);

INSERT INTO Owners (PetOwner_ID, FirstName, LastName, Gender, PetID)
VALUES ('1','Ania', 'Kowalska', 'Female','1'),
('2','Kasia','Kwiatkowska','Female','2'),
('3','Robert','Malinowski','Male','3'),
('4','Marcin','Korczak','Male','4'),
('5','Bogdan','Florczyk','Male','5'),
('6','Alicja','Nowak','Female','6'),
('7','Julia','Jacyk','Female','7');

SELECT PetName, PetType, FirstName,LastName
FROM Owners
JOIN Pets ON Owners.PetID = Pets.PetID
Join Pet_types ON Pet_types.PetType_ID = Pets.PetType_ID
WHERE Gender = 'Female';

SELECT PetName, FirstName,LastName
FROM Owners
JOIN Pets ON Owners.PetID = Pets.PetID
WHERE Gender = 'Female';

SELECT PetName, PetType, FirstName,LastName
FROM Owners
JOIN Pets ON Owners.PetID = Pets.PetID
Join Pet_types ON Pet_types.PetType_ID = Pets.PetType_ID
WHERE Gender = 'Female';
