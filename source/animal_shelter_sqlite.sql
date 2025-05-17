PRAGMA foreign_keys = ON;

------------------------------------
-- LinkedIn Learning ---------------
-- Advanced SQL - Query Processing -
-- Ami Levin 2020 ------------------
-- .\DemoDB\PostgreSQL.sql----------
------------------------------------


-- Connect to Animal_Shelter database


-- Reference Colors
CREATE	TABLE Colors 
(
	Color TEXT NOT NULL 
		PRIMARY KEY
);
INSERT INTO	Colors (Color)
VALUES
('Black'), ('Brown'), ('Cream'), ('Ginger'), ('Gray'), ('White');

-- Reference Species
CREATE TABLE Species 
(
	Species TEXT NOT NULL 
		PRIMARY KEY
);
INSERT INTO	Species (Species)
VALUES
('Cat'), ('Dog'), ('Ferret'), ('Rabbit'), ('Raccoon');

-- Animals
CREATE	TABLE Animals
(
	Name			TEXT			NOT NULL,
	Species			TEXT			NOT NULL
		REFERENCES Species (Species),
	Primary_Color	TEXT			NOT NULL
		REFERENCES Colors (Color),
	Implant_Chip_ID	TEXT			NOT NULL
		UNIQUE,
	Breed			TEXT			NULL,
	Gender			TEXT				NOT NULL
		CHECK (Gender IN ('F', 'M')),
	Birth_Date		DATE				NOT NULL,
	Pattern			TEXT			NOT NULL,
	Admission_Date	DATE				NOT NULL,
	PRIMARY KEY (Name, Species)
);
INSERT INTO	Animals (Name, Species, Primary_Color, Implant_Chip_ID, Breed, Gender, Birth_Date, Pattern, Admission_Date)
VALUES
('Abby', 'Dog', 'Black', 'fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de', NULL, 'F', '1999-02-19', 'Tricolor', '2016-07-19'),
('Ace', 'Dog', 'Ginger', '33d50c6b-9d2e-4eb1-8171-0466dee4f349', NULL, 'M', '2005-12-19', 'Bicolor', '2019-06-25'),
('Angel', 'Dog', 'Brown', 'f0769a5e-1a11-49f1-ac80-3f40a32ea158', NULL, 'F', '2001-09-19', 'Tuxedo', '2017-02-04'),
('April', 'Rabbit', 'Gray', 'ccfef7e8-6fad-4ba0-81ea-0611dd229e42', NULL, 'F', '2005-01-27', 'Broken', '2019-04-24'),
('Archie', 'Cat', 'Ginger', '970d7094-ab66-4dca-a0d1-0c16264989af', 'Persian', 'M', '2009-08-26', 'Tricolor', '2016-07-10'),
('Arya', 'Dog', 'Gray', 'cd1528ad-c91d-47ea-9b70-3cacd5bdbe71', NULL, 'F', '2014-04-14', 'Bicolor', '2018-06-10'),
('Aspen', 'Dog', 'Brown', '51d4cfd1-cd25-4c5a-aa52-0bfd771f8886', NULL, 'F', '2010-04-17', 'Tuxedo', '2016-02-09'),
('Bailey', 'Dog', 'Ginger', '36438bc9-e225-4038-97b2-1e28fd287957', NULL, 'F', '2014-09-28', 'Bicolor', '2018-10-01'),
('Baloo', 'Rabbit', 'White', 'f5ce3a02-1ec7-431d-8a76-09369e8d798b', 'English Lop', 'M', '2015-04-27', 'Broken', '2016-08-21'),
('Beau', 'Dog', 'Cream', '4b94a68c-0c97-4f70-9275-35b3a9eee8d9', NULL, 'M', '2016-02-09', 'Solid', '2017-05-24'),
('Benji', 'Dog', 'Gray', '646f0a76-14e4-42e7-9554-3af1ea6cc78f', 'English setter', 'M', '2012-05-21', 'Bicolor', '2018-10-02'),
('Benny', 'Dog', 'Brown', '2ae54bbb-a587-49d5-9a4d-1400a303c4bf', NULL, 'M', '2010-03-04', 'Tuxedo', '2018-09-30'),
('Blue', 'Dog', 'Ginger', '6d296d1d-e14d-4308-8b4f-27f87fe1534e', NULL, 'M', '2003-09-03', 'Bicolor', '2016-04-03'),
('Bon bon', 'Rabbit', 'Gray', 'bce7e239-304a-483d-9e38-05b9b66af496', NULL, 'F', '2002-06-29', 'Broken', '2016-01-03'),
('Boomer', 'Dog', 'Black', '01e2ad60-daa5-4681-b934-40c9dcf7d73a', 'Schnauzer', 'M', '2013-08-11', 'Tricolor', '2017-01-11'),
('Brody', 'Dog', 'Black', 'eb517826-e48a-41ae-a5fb-1bbeca23c05d', 'Schnauzer', 'M', '2007-08-23', 'Tricolor', '2018-12-05'),
('Brutus', 'Dog', 'Ginger', 'b7fad096-7cd1-42a7-85d6-0c3e6599dbeb', 'Weimaraner', 'M', '2011-04-04', 'Bicolor', '2018-08-03'),
('Buddy', 'Cat', 'White', '6d49b3f6-e075-4f33-97a3-1d4878ee1345', NULL, 'M', '2017-01-26', 'Tortoiseshell', '2018-12-20'),
('Callie', 'Dog', 'Cream', '2636f17f-5893-482f-94a7-47eeb715047a', 'English setter', 'F', '2003-08-28', 'Solid', '2017-12-19'),
('Charlie', 'Cat', 'Gray', 'ab967364-43cc-4dd2-a4d9-080f0def56ca', NULL, 'M', '2016-06-16', 'Calico', '2018-02-16'),
('Chico', 'Dog', 'Brown', 'c6614119-945a-45a9-a5a2-3c8f840edc01', NULL, 'M', '2014-03-20', 'Tuxedo', '2019-03-22'),
('Chubby', 'Rabbit', 'Ginger', '561fea02-9c12-43b1-9ea8-071c9eae4c55', NULL, 'M', '2013-02-07', 'Broken', '2017-10-31'),
('Cleo', 'Cat', 'Black', '0897655b-1486-4d5d-ad60-03a855afcaf3', NULL, 'F', '2015-08-13', 'Tortoiseshell', '2019-09-06'),
('Cooper', 'Dog', 'Black', '14f9e97b-6cd4-4ee4-9798-1c4f2376141b', NULL, 'M', '2009-11-15', 'Tricolor', '2017-01-15'),
('Cosmo', 'Cat', 'Cream', '2754b9c9-5df4-4206-818d-21bdd1a093ed', NULL, 'M', '2017-11-09', 'Solid', '2019-05-13'),
('Dolly', 'Dog', 'Gray', 'dbdc4f81-1709-49d6-9f73-1d2099eca35c', NULL, 'F', '2013-09-29', 'Bicolor', '2018-04-27'),
('Emma', 'Dog', 'Black', 'bac4c56d-ebb6-43e3-86f3-36506e17f74d', 'Schnauzer', 'F', '2006-12-26', 'Tricolor', '2019-03-28'),
('Fiona', 'Cat', 'Gray', '90226140-f54e-419d-82e5-0ea81e0e6384', NULL, 'F', '1999-05-23', 'Calico', '2017-01-13'),
('Frankie', 'Dog', 'Gray', 'cc96e651-2f1c-45f8-bce2-26ac8c9868a7', 'English setter', 'M', '2003-09-10', 'Bicolor', '2016-06-20'),
('George', 'Cat', 'Brown', '6fefc95e-7d46-4e25-b90a-0ba75f45d972', NULL, 'M', '2001-10-04', 'Bicolor', '2017-11-24'),
('Ginger', 'Dog', 'Ginger', '9e241a82-ad77-49dc-ad15-0ac8d2e89dde', NULL, 'F', '2015-11-17', 'Bicolor', '2016-11-27'),
('Gizmo', 'Dog', 'Brown', '78556795-4748-447f-a2ce-336b01173a18', NULL, 'M', '2006-01-23', 'Tuxedo', '2019-08-14'),
('Gracie', 'Cat', 'Black', '66691184-06b1-4aa8-89b3-0def5fd9fbe1', NULL, 'F', '2007-11-20', 'Spotted', '2017-05-21'),
('Gus', 'Dog', 'Cream', '104a1427-d921-4d11-b45c-370c70e1578f', 'English setter', 'M', '2014-10-29', 'Solid', '2016-09-28'),
('Hobbes', 'Cat', 'Gray', '8788e7b9-dc20-45ef-8778-0066f60d790d', NULL, 'M', '2002-01-01', 'Spotted', '2016-07-29'),
('Holly', 'Dog', 'Cream', 'dd737e6e-3b26-43b4-ad4b-28398602df74', NULL, 'F', '2011-06-13', 'Solid', '2016-12-30'),
('Hudini', 'Rabbit', 'Cream', 'de295dd6-502f-43e3-b139-06ceb3fa2128', NULL, 'M', '2018-03-22', 'Brindle', '2019-12-10'),
('Humphrey', 'Rabbit', 'Cream', '2a423596-5bf8-41a7-906a-0bd3ea15e17c', 'Belgian Hare', 'M', '2008-12-22', 'Brindle', '2017-12-31'),
('Ivy', 'Cat', 'Brown', '0955c70b-a2b6-4d78-8e4b-1f6386ffc763', 'Turkish Angora', 'F', '2013-05-13', 'Spotted', '2018-05-20'),
('Jake', 'Dog', 'White', '9209d54c-0238-457b-9922-02171e9df0e6', 'Bullmastiff', 'M', '2011-02-27', 'Tuxedo', '2016-12-14'),
('Jax', 'Dog', 'Ginger', '24ad2ed9-e7e6-4571-8a45-3c9361418b07', 'Weimaraner', 'M', '2009-02-06', 'Bicolor', '2017-10-03'),
('Kiki', 'Cat', 'Cream', '4e029101-2326-461c-8ff7-0eb809f110cb', NULL, 'F', '2015-07-07', 'Tricolor', '2019-11-16'),
('King', 'Dog', 'Brown', '793e68eb-b952-4425-b9e2-0406ea01ac53', NULL, 'M', '2015-09-12', 'Tuxedo', '2017-08-29'),
('Kona', 'Dog', 'Gray', 'c87ee041-973f-482c-b5e4-3310b4d80612', NULL, 'F', '2008-10-16', 'Bicolor', '2019-12-13'),
('Layla', 'Dog', 'Cream', 'df2e0bbc-acb7-413c-90bc-2aae37aceb90', NULL, 'F', '2006-03-11', 'Solid', '2018-06-14'),
('Lexi', 'Dog', 'Brown', 'bfd890aa-afb6-4e8f-b60b-0124840eb504', NULL, 'F', '2017-09-17', 'Tuxedo', '2018-06-22'),
('Lily', 'Dog', 'Black', '11de2603-8bcf-49b6-9dde-46f893d93948', 'Schnauzer', 'F', '2001-04-03', 'Tricolor', '2016-06-18'),
('Lucy', 'Dog', 'Brown', '3a389eaf-f623-4cd7-9ec9-2144ca9d244c', 'Weimaraner', 'F', '2003-04-04', 'Tuxedo', '2018-02-22'),
('Luke', 'Dog', 'Gray', 'fd6e5e29-0515-47a8-890d-096f07c83738', NULL, 'M', '2017-04-23', 'Bicolor', '2017-12-23'),
('Lulu', 'Cat', 'Ginger', '9f018ecd-7d17-4027-8751-2167300d6cf3', NULL, 'F', '2003-12-19', 'Calico', '2019-10-09'),
('Luna', 'Dog', 'Cream', '74c3566b-a889-4861-b67e-3570aac7247a', NULL, 'F', '2009-01-14', 'Solid', '2017-03-02'),
('Luna', 'Rabbit', 'Black', '202c2c7d-7a25-449d-ad71-05482b04346f', NULL, 'F', '2010-11-16', 'Broken', '2017-08-18'),
('Mac', 'Dog', 'Gray', '3b55a74d-c5f7-44bc-9e6a-11c446628a0d', 'English setter', 'M', '2006-12-23', 'Bicolor', '2018-01-03'),
('Maddie', 'Dog', 'Brown', '2a37b609-d1f6-475f-a890-0234fcb2f0b8', NULL, 'F', '2014-09-26', 'Tuxedo', '2017-05-02'),
('Max', 'Dog', 'Gray', 'eb92c3b9-19bd-4ab1-b0f3-11dd7adb3cf0', NULL, 'M', '2001-12-01', 'Bicolor', '2017-07-26'),
('Millie', 'Dog', 'Ginger', '7d69f605-c2ff-42ac-a5ac-20b63eb881ca', NULL, 'F', '2015-05-18', 'Bicolor', '2016-10-27'),
('Miss Kitty', 'Cat', 'Black', '1ab8347c-6349-4092-9667-09653a9fd09c', 'Maine Coon', 'F', '2016-09-19', 'Bicolor', '2019-10-19'),
('Misty', 'Cat', 'Ginger', '805281a0-5de6-4ba8-8fb1-11cefe0575e0', 'Siamese', 'F', '2009-02-21', 'Spotted', '2019-06-06'),
('Mocha', 'Dog', 'Brown', '63dc76e7-3431-4455-9ad8-2fe4ff72f4af', NULL, 'F', '2002-09-23', 'Tuxedo', '2019-01-10'),
('Nala', 'Dog', 'Gray', '2929bba7-ed35-43f1-9f3e-01120beb4f8b', 'English setter', 'F', '2018-06-02', 'Bicolor', '2019-07-19'),
('Nova', 'Cat', 'White', '81802526-cae2-40bb-846a-01d2156545b4', 'Sphynx', 'F', '2011-04-07', 'Tortoiseshell', '2017-12-09'),
('Odin', 'Dog', 'Ginger', 'd6088551-bad5-41f6-b9a5-09a3a50cb2ff', NULL, 'M', '2007-07-10', 'Bicolor', '2016-09-15'),
('Oscar', 'Cat', 'White', '18c0c340-e7a3-430e-baf5-13c938287d4f', NULL, 'M', '2008-06-08', 'Bicolor', '2018-02-23'),
('Otis', 'Dog', 'Ginger', 'cb5444d8-39fc-4a56-aa83-17e1bfd6e960', NULL, 'M', '2008-05-15', 'Bicolor', '2018-07-22'),
('Patches', 'Cat', 'Gray', '21247670-2e5a-43ef-acf9-0e794463c466', NULL, 'F', '2014-07-29', 'Bicolor', '2018-11-04'),
('Peanut', 'Rabbit', 'Gray', '99a021d1-5e5a-4499-8759-02b3d89ce9af', NULL, 'M', '2008-10-14', 'Broken', '2018-04-11'),
('Pearl', 'Cat', 'Brown', 'df9291b5-9f82-4ad1-a9fd-1206fd6cd837', 'American Bobtail', 'F', '2012-07-05', 'Tricolor', '2019-04-09'),
('Penelope', 'Cat', 'Brown', '5a6a4dc1-b813-4331-b027-1718eb50bc9e', 'Scottish Fold', 'F', '2000-09-21', 'Tabby', '2017-07-12'),
('Penelope', 'Dog', 'White', 'e4e5609a-9c86-4c59-8eee-47ed74ff04b5', 'Bullmastiff', 'F', '2008-06-28', 'Tuxedo', '2016-01-14'),
('Penny', 'Cat', 'Cream', 'b947b10b-c402-4da5-9713-185fd21065c4', NULL, 'F', '2005-11-02', 'Tricolor', '2017-02-15'),
('Piper', 'Dog', 'Ginger', 'b6bd98c9-5f0d-4ac2-81ad-278acf2afd46', NULL, 'F', '2012-03-08', 'Bicolor', '2016-03-21'),
('Poppy', 'Dog', 'Brown', '10e33eb3-a2d5-4fcd-9428-1dbb389fbb30', 'Weimaraner', 'F', '2011-04-09', 'Tuxedo', '2018-05-05'),
('Prince', 'Dog', 'Cream', '06c5cfcb-2c24-4030-acda-06fb3343a173', NULL, 'M', '2016-11-06', 'Solid', '2017-08-29'),
('Pumpkin', 'Cat', 'Gray', '64085fe7-0f2e-4e80-a170-286f1519fda8', 'Russian Blue', 'M', '2002-12-28', 'Spotted', '2019-01-18'),
('Ranger', 'Dog', 'Ginger', '559412c8-2c13-4a18-8b94-481bc06099de', NULL, 'M', '2015-07-12', 'Bicolor', '2017-09-25'),
('Remi / Remy', 'Dog', 'Cream', '835106aa-cfa5-47fb-ba29-0071d1a1592a', NULL, 'M', '2001-08-12', 'Solid', '2018-10-13'),
('Riley', 'Dog', 'Ginger', 'e042131e-2921-442c-9bbd-107507293bb2', NULL, 'F', '2013-05-01', 'Bicolor', '2019-03-08'),
('Rocky', 'Cat', 'Brown', '6c07246c-3107-4651-8f5c-1eb14d1c5ea5', NULL, 'M', '2009-03-26', 'Solid', '2019-11-18'),
('Roxy', 'Dog', 'Brown', '01dfa05c-86b4-4936-a608-1c59097fa2d3', 'Weimaraner', 'F', '2013-03-28', 'Tuxedo', '2018-07-23'),
('Rusty', 'Dog', 'Ginger', '92ffde28-b23a-4249-a32d-07ba417aa143', NULL, 'M', '2005-01-27', 'Bicolor', '2016-01-05'),
('Sadie', 'Cat', 'Gray', 'c231514d-61c1-4180-b679-0bdba7314fd6', NULL, 'F', '2016-08-24', 'Bicolor', '2016-09-19'),
('Salem', 'Cat', 'Ginger', '59f3aa7b-4d2b-49f6-9964-0155880b0473', 'Sphynx', 'M', '2011-02-26', 'Spotted', '2017-10-29'),
('Sam', 'Cat', 'Gray', '27f6f2b4-3570-43e1-8b64-05a1dc86fd8d', NULL, 'M', '2016-09-18', 'Bicolor', '2018-10-09'),
('Sammy', 'Dog', 'Black', '42d68579-c4be-4dc3-9c35-1c40a9ef7b11', NULL, 'M', '2012-08-24', 'Tricolor', '2018-04-05'),
('Samson', 'Dog', 'Ginger', 'a5fa2dc8-9708-465f-9f64-0b39d31be53a', NULL, 'M', '2008-01-24', 'Bicolor', '2018-12-28'),
('Shadow', 'Dog', 'Black', '02dc6920-79bd-430a-a1ed-3196366f9bfe', NULL, 'M', '2014-07-09', 'Tricolor', '2016-04-07'),
('Shelby', 'Dog', 'Gray', '83f5b5b0-af40-4a45-9bdf-0f8ea289e906', NULL, 'F', '2004-08-04', 'Bicolor', '2016-01-28'),
('Simon', 'Cat', 'Gray', '39ed8368-b8bc-433e-8678-0199bce6259e', NULL, 'M', '2008-07-19', 'Bicolor', '2017-10-23'),
('Skye', 'Dog', 'White', 'b7db3359-2e5d-42ab-af61-0f1d97ee195c', 'Bullmastiff', 'F', '2013-12-10', 'Tuxedo', '2016-04-20'),
('Stanley', 'Cat', 'Cream', '44b218ef-c708-46b7-967e-16c16e4ad577', NULL, 'M', '2005-01-19', 'Tabby', '2019-11-26'),
('Stella', 'Dog', 'Cream', '20ccae0a-96ff-43c1-9fd4-2cf0916620ed', NULL, 'F', '2005-03-11', 'Solid', '2017-02-18'),
('Thomas', 'Cat', 'Brown', '265151dd-f5f0-4dcb-a0e7-0371960d9741', NULL, 'M', '2002-12-11', 'Tricolor', '2018-08-04'),
('Thor', 'Dog', 'Black', 'ed0ba7ee-6694-452f-92ab-19bd52a750df', NULL, 'M', '2011-05-28', 'Tricolor', '2016-07-24'),
('Tigger', 'Cat', 'Brown', '6f39f088-a2ea-40fc-9f7e-0dea387a5b59', 'Turkish Angora', 'M', '2005-06-07', 'Tabby', '2016-01-18'),
('Toby', 'Cat', 'Gray', 'e16f5ab8-9e18-4f58-adf8-00be13e5efa0', NULL, 'M', '2012-04-07', 'Spotted', '2019-08-30'),
('Toby', 'Dog', 'White', 'a457d717-2c6b-4ad2-8383-3974df128d4f', 'Bullmastiff', 'M', '2003-10-05', 'Tuxedo', '2019-05-08'),
('Toby', 'Rabbit', 'White', '01dd3b07-ebd6-4a7f-98bc-0a38aa48b139', NULL, 'M', '2011-10-27', 'Broken', '2019-05-23'),
('Tyson', 'Dog', 'Gray', '193e62eb-31cc-49ae-ad45-46cb9cee0efa', NULL, 'M', '2016-01-09', 'Bicolor', '2018-08-19'),
('Walter', 'Dog', 'Cream', '293ae36f-bfbe-4ebc-b90c-4a2be6055cd1', NULL, 'M', '2001-12-24', 'Solid', '2016-02-21'),
('Whitney', 'Rabbit', 'Black', 'f8fc5dfc-b0f1-4c91-ad34-06d16f2dea33', 'Lionhead', 'F', '2017-03-02', 'Broken', '2017-09-08');

-- Persons
CREATE	TABLE Persons
(
	Email		TEXT	NOT NULL 
		PRIMARY KEY,
	First_Name	TEXT		NOT NULL,
	Last_Name	TEXT		NOT NULL,
	Birth_Date	DATE			NULL,
	Address		TEXT	NOT NULL,
	State		TEXT		NOT NULL,
	City		TEXT		NOT NULL,
	Zip_Code	TEXT			NOT NULL
);
INSERT INTO	Persons (Email, First_Name, Last_Name, Birth_Date, Address, State, City, Zip_Code)
VALUES
('adam.brown@gmail.com', 'Adam', 'Brown', '1984-12-22', '41 Hill', 'California', 'Norwalk', '90650'),
('alan.cook@hotmail.com', 'Alan', 'Cook', NULL, '115 Sunset', 'California', 'Inglewood', '90301'),
('albert.wood@gmail.com', 'Albert', 'Wood', '1962-01-30', '780 Sixth', 'California', 'Bell Gardens', '90201'),
('anna.thompson@hotmail.com', 'Anna', 'Thompson', '1997-05-11', '716 Meadow', 'California', 'Los Angeles', '90032'),
('anne.parker@icloud.com', 'Anne', 'Parker', '1973-10-21', '130 Eleventh', 'California', 'Carson', '90248'),
('ashley.adams@icloud.com', 'Ashley', 'Adams', '1984-02-23', '101 North', 'California', 'Carson', '90749'),
('ashley.flores@animalshelter.com', 'Ashley', 'Flores', '1976-04-08', '282 North', 'California', 'Carson', '90749'),
('benjamin.edwards@icloud.com', 'Benjamin', 'Edwards', '1990-01-08', '578 Dogwood', 'California', 'Manhattan Beach', '90266'),
('bonnie.davis@icloud.com', 'Bonnie', 'Davis', '1951-01-29', '193 Lake', 'California', 'West Hollywood', '90048'),
('brenda.martin@gmail.com', 'Brenda', 'Martin', '1952-04-16', '129 South', 'California', 'Santa Monica', '90403'),
('bruce.cook@icloud.com', 'Bruce', 'Cook', '1953-01-12', '667 Church', 'California', 'South Whittier', '90605'),
('bruce.harris@hotmail.com', 'Bruce', 'Harris', '1957-11-26', '370 Church', 'California', 'South Whittier', '90605'),
('carol.mitchell@gmail.com', 'Carol', 'Mitchell', '1994-02-11', '506 Cherry', 'California', 'Torrance', '90503'),
('carolyn.nelson@icloud.com', 'Carolyn', 'Nelson', '1985-11-27', '39 Third', 'California', 'Whittier', '90605'),
('catherine.howard@icloud.com', 'Catherine', 'Howard', '1952-03-07', '806 Second', 'California', 'Los Angeles', '90068'),
('catherine.nguyen@hotmail.com', 'Catherine', 'Nguyen', '1946-03-29', '882 Second', 'California', 'Los Angeles', '90068'),
('charles.phillips@gmail.com', 'Charles', 'Phillips', '1980-05-11', '812 Hill', 'California', 'Long Beach', '90813'),
('cynthia.campbell@hotmail.com', 'Cynthia', 'Campbell', '1969-01-02', '902 Eighth', 'California', 'Inglewood', '90307'),
('denise.ortiz@yahoo.com', 'Denise', 'Ortiz', '1982-04-01', '996 Cherry', 'California', 'Santa Monica', '90407'),
('dennis.hill@animalshelter.com', 'Dennis', 'Hill', NULL, '941 Thirteenth', 'California', 'Gardena', '90247'),
('diane.thompson@hotmail.com', 'Diane', 'Thompson', '1998-06-25', '762 Church', 'California', 'Willowbrook', '90059'),
('donna.brooks@hotmail.com', 'Donna', 'Brooks', '1966-04-05', '972 Cherry', 'California', 'Los Angeles', '90068'),
('doris.young@icloud.com', 'Doris', 'Young', '1954-02-15', '511 Ridge', 'California', 'Torrance', '90501'),
('elizabeth.clark@icloud.com', 'Elizabeth', 'Clark', '1949-02-23', '443 Twelfth', 'California', 'Rancho Palos Verdes', '90275'),
('emily.perez@gmail.com', 'Emily', 'Perez', '1971-08-25', '759 Dogwood', 'California', 'Lynwood', '90262'),
('eugene.howard@icloud.com', 'Eugene', 'Howard', '1958-01-20', '647 Eleventh', 'California', 'Inglewood', '90309'),
('evelyn.rodriguez@outlook.com', 'Evelyn', 'Rodriguez', '1965-04-10', '793 Sixth', 'California', 'West Rancho Dominguez', '90059'),
('frances.cook@yahoo.com', 'Frances', 'Cook', '1973-08-13', '351 Forest', 'California', 'Compton', '90220'),
('frances.hill@animalshelter.com', 'Frances', 'Hill', '1953-01-29', '406 Forest', 'California', 'Compton', '90220'),
('frank.smith@icloud.com', 'Frank', 'Smith', '1997-09-20', '390 Jefferson', 'California', 'Walnut Park', '90255'),
('fred.james@gmail.com', 'Fred', 'James', '1972-08-08', '293 Second', 'California', 'Los Angeles', '90069'),
('fred.patel@gmail.com', 'Fred', 'Patel', '1953-03-10', '899 Second', 'California', 'Los Angeles', '90069'),
('george.nzalez@icloud.com', 'George', 'nzalez', '1952-12-11', '209 Cedar', 'California', 'Los Angeles', '90004'),
('george.scott@hotmail.com', 'George', 'Scott', '1982-05-03', '424 Cedar', 'California', 'Los Angeles', '90004'),
('gerald.reyes@animalshelter.com', 'Gerald', 'Reyes', '1956-02-10', '761 Eighth', 'California', 'Long Beach', '90853'),
('gerald.thompson@icloud.com', 'Gerald', 'Thompson', '1994-04-07', '631 Eighth', 'California', 'Long Beach', '90853'),
('gloria.wright@hotmail.com', 'Gloria', 'Wright', '1947-12-21', '439 Fourteenth', 'California', 'Whittier', '90603'),
('grery.evans@icloud.com', 'Grery', 'Evans', '1967-12-22', '481 Seventh', 'California', 'East Rancho Dominguez', '90221'),
('grery.james@icloud.com', 'Grery', 'James', '1994-09-24', '337 Seventh', 'California', 'East Rancho Dominguez', '90221'),
('harold.clark@icloud.com', 'Harold', 'Clark', '1987-09-26', '771 Ninth', 'California', 'Whittier', '90601'),
('harry.wilson@yahoo.com', 'Harry', 'Wilson', '1976-02-06', '886 Elm', 'California', 'Compton', '90223'),
('heather.turner@yahoo.com', 'Heather', 'Turner', '1974-09-11', '909 Twelfth', 'California', 'Paramount', '90723'),
('howard.bailey@gmail.com', 'Howard', 'Bailey', '1995-11-13', '1000 Adams', 'California', 'View Park-Windsor Hills', '90056'),
('irene.mendoza@gmail.com', 'Irene', 'Mendoza', '1985-11-23', '84 Elm', 'California', 'Florence-Graham', '90052'),
('jacqueline.phillips@gmail.com', 'Jacqueline', 'Phillips', NULL, '519 Johnson', 'California', 'Long Beach', '90853'),
('james.ramos@hotmail.com', 'James', 'Ramos', '1962-08-07', '968 Cherry', 'California', 'Carson', '90745'),
('janet.evans@gmail.com', 'Janet', 'Evans', '1980-12-07', '519 Oak', 'California', 'Lakewood', '90711'),
('jeffrey.mez@gmail.com', 'Jeffrey', 'mez', '1961-04-17', '51 Cedar', 'California', 'Whittier', '90603'),
('jerry.cox@icloud.com', 'Jerry', 'Cox', '1958-04-04', '353 Johnson', 'California', 'South Whittier', '90605'),
('jerry.mitchell@icloud.com', 'Jerry', 'Mitchell', '1981-09-22', '732 Johnson', 'California', 'South Whittier', '90605'),
('jesse.cox@yahoo.com', 'Jesse', 'Cox', '1990-07-26', '544 North', 'California', 'South Gate', '90280'),
('jesse.myers@gmail.com', 'Jesse', 'Myers', '1975-02-14', '684 North', 'California', 'South Gate', '90280'),
('jessica.ward@icloud.com', 'Jessica', 'Ward', '1953-11-28', '515 West', 'California', 'Downey', '90242'),
('jimmy.jones@yahoo.com', 'Jimmy', 'Jones', NULL, '226 Fourth', 'California', 'Inglewood', '90303'),
('joan.cooper@icloud.com', 'Joan', 'Cooper', '1986-04-03', '173 West', 'California', 'Compton', '90221'),
('jonathan.mez@hotmail.com', 'Jonathan', 'mez', '1989-07-09', '319 Johnson', 'California', 'Los Angeles', '90069'),
('joyce.nzalez@hotmail.com', 'Joyce', 'nzalez', '1970-07-02', '204 Cedar', 'California', 'View Park-Windsor Hills', '90043'),
('julia.flores@yahoo.com', 'Julia', 'Flores', '1988-01-12', '442 Lake view', 'California', 'Bell Gardens', '90201'),
('julie.adams@gmail.com', 'Julie', 'Adams', '1957-01-31', '133 Hill', 'California', 'Gardena', '90247'),
('julie.price@icloud.com', 'Julie', 'Price', '1962-11-29', '2 Hill', 'California', 'Gardena', '90247'),
('justin.ruiz@hotmail.com', 'Justin', 'Ruiz', '1991-07-13', '157 Church', 'California', 'Gardena', '90247'),
('justin.sanchez@yahoo.com', 'Justin', 'Sanchez', '1992-02-03', '415 Church', 'California', 'Gardena', '90247'),
('karen.smith@icloud.com', 'Karen', 'Smith', '1948-03-01', '110 North', 'California', 'West Rancho Dominguez', '90220'),
('katherine.murphy@gmail.com', 'Katherine', 'Murphy', '1957-05-15', '191 Lincoln', 'California', 'Commerce', '90022'),
('katherine.price@gmail.com', 'Katherine', 'Price', '1997-09-23', '949 Lincoln', 'California', 'Commerce', '90022'),
('kathryn.lopez@icloud.com', 'Kathryn', 'Lopez', '1990-08-30', '622 Madison', 'California', 'Los Angeles', '90034'),
('kathy.thomas@gmail.com', 'Kathy', 'Thomas', '1952-04-08', '427 Main', 'California', 'Lakewood', '90712'),
('kelly.allen@hotmail.com', 'Kelly', 'Allen', NULL, '651 Hickory', 'California', 'Long Beach', '90840'),
('kevin.diaz@hotmail.com', 'Kevin', 'Diaz', '1974-01-18', '262 Jackson', 'California', 'Torrance', '90509'),
('kimberly.morgan@gmail.com', 'Kimberly', 'Morgan', '1956-01-29', '2 Washington', 'California', 'Torrance', '90503'),
('laura.young@gmail.com', 'Laura', 'Young', '1987-05-19', '29 First', 'California', 'Torrance', '90503'),
('linda.kelly@gmail.com', 'Linda', 'Kelly', '1997-04-26', '51 Seventh', 'California', 'Compton', '90221'),
('lisa.perez@icloud.com', 'Lisa', 'Perez', '1949-08-08', '502 River', 'California', 'Hawthorne', '90310'),
('lori.smith@icloud.com', 'Lori', 'Smith', '1977-02-11', '324 Sixth', 'California', 'Signal Hill', '90755'),
('margaret.campbell@hotmail.com', 'Margaret', 'Campbell', '1960-11-03', '424 Eleventh', 'California', 'Los Angeles', '90247'),
('margaret.hall@gmail.com', 'Margaret', 'Hall', '1994-09-15', '344 Eleventh', 'California', 'Los Angeles', '90247'),
('matthew.lopez@gmail.com', 'Matthew', 'Lopez', '1988-02-15', '38 Dogwood', 'California', 'Torrance', '90510'),
('matthew.ward@icloud.com', 'Matthew', 'Ward', '1949-12-04', '240 Dogwood', 'California', 'Torrance', '90510'),
('melissa.lopez@gmail.com', 'Melissa', 'Lopez', NULL, '43 Park', 'California', 'Bell Gardens', '90202'),
('melissa.moore@icloud.com', 'Melissa', 'Moore', '1960-06-27', '156 Park', 'California', 'Bell Gardens', '90202'),
('mildred.gray@yahoo.com', 'Mildred', 'Gray', '1949-03-23', '193 Sixth', 'California', 'Long Beach', '90847'),
('nancy.howard@hotmail.com', 'Nancy', 'Howard', '1970-03-15', '587 Hickory', 'California', 'Carson', '90224'),
('nicholas.rivera@icloud.com', 'Nicholas', 'Rivera', '1993-09-07', '129 Adams', 'California', 'Long Beach', '90853'),
('nicole.evans@gmail.com', 'Nicole', 'Evans', '1954-07-02', '608 Jefferson', 'California', 'Signal Hill', '90755'),
('nicole.mendoza@gmail.com', 'Nicole', 'Mendoza', NULL, '76 Jefferson', 'California', 'Signal Hill', '90755'),
('patricia.wright@icloud.com', 'Patricia', 'Wright', '1953-07-18', '486 Chestnut', 'California', 'Santa Fe Springs', '90670'),
('patrick.hughes@animalshelter.com', 'Patrick', 'Hughes', '1988-10-11', '660 Spruce', 'California', 'La Mirada', '90638'),
('peter.smith@hotmail.com', 'Peter', 'Smith', '1986-08-27', '56 Main', 'California', 'Los Angeles', '90004'),
('phyllis.davis@icloud.com', 'Phyllis', 'Davis', '1993-10-20', '508 Eighth', 'California', 'Santa Monica', '90408'),
('phyllis.moore@gmail.com', 'Phyllis', 'Moore', '1988-09-22', '583 Eighth', 'California', 'Santa Monica', '90408'),
('randy.bailey@icloud.com', 'Randy', 'Bailey', '1973-07-13', '980 Oak', 'California', 'Compton', '90223'),
('richard.castillo@icloud.com', 'Richard', 'Castillo', '1978-12-26', '287 River', 'California', 'Culver City', '90233'),
('robin.miller@yahoo.com', 'Robin', 'Miller', '1965-12-11', '216 Hill', 'California', 'East Los Angeles', '90022'),
('robin.murphy@animalshelter.com', 'Robin', 'Murphy', '1974-10-13', '673 Hill', 'California', 'East Los Angeles', '90022'),
('roger.adams@hotmail.com', 'Roger', 'Adams', '1947-05-09', '639 West', 'California', 'Los Angeles', '90031'),
('roy.rogers@hotmail.com', 'Roy', 'Rogers', '1958-07-29', '836 Twelfth', 'California', 'Los Angeles', '90039'),
('ruby.lopez@yahoo.com', 'Ruby', 'Lopez', '1979-04-05', '808 Cedar', 'California', 'Long Beach', '90804'),
('ryan.garcia@hotmail.com', 'Ryan', 'Garcia', '1975-03-09', '787 Wilson', 'California', 'Downey', '90239'),
('ryan.hill@icloud.com', 'Ryan', 'Hill', '1960-11-03', '105 Wilson', 'California', 'Downey', '90239'),
('ryan.jackson@icloud.com', 'Ryan', 'Jackson', '1947-10-07', '487 Wilson', 'California', 'Downey', '90239'),
('ryan.wright@hotmail.com', 'Ryan', 'Wright', NULL, '600 Wilson', 'California', 'Downey', '90239'),
('samuel.baker@gmail.com', 'Samuel', 'Baker', '1980-01-17', '889 Maple', 'California', 'Los Angeles', '90247'),
('samuel.morales@icloud.com', 'Samuel', 'Morales', NULL, '896 Maple', 'California', 'Los Angeles', '90247'),
('sara.nelson@icloud.com', 'Sara', 'Nelson', '1990-10-15', '340 Fifth', 'California', 'View Park-Windsor Hills', '90043'),
('scott.baker@gmail.com', 'Scott', 'Baker', '1986-01-11', '190 Lake view', 'California', 'Los Angeles', '90089'),
('scott.gutierrez@gmail.com', 'Scott', 'Gutierrez', '1985-11-26', '993 Lake view', 'California', 'Los Angeles', '90089'),
('sean.nelson@icloud.com', 'Sean', 'Nelson', '1986-04-28', '339 Ninth', 'California', 'Los Angeles', '90034'),
('sharon.davis@animalshelter.com', 'Sharon', 'Davis', '1988-09-25', '372 Seventh', 'California', 'Los Angeles', '90068'),
('sharon.thompson@gmail.com', 'Sharon', 'Thompson', '1970-06-24', '688 Seventh', 'California', 'Los Angeles', '90068'),
('shirley.williams@outlook.com', 'Shirley', 'Williams', '1966-08-17', '11 Lincoln', 'California', 'Santa Monica', '90408'),
('stephanie.mez@icloud.com', 'Stephanie', 'mez', '1994-06-26', '539 West', 'California', 'Long Beach', '90899'),
('susan.murphy@icloud.com', 'Susan', 'Murphy', '1961-08-02', '246 Spruce', 'California', 'Long Beach', '90808'),
('theresa.carter@icloud.com', 'Theresa', 'Carter', '1968-08-27', '401 Lincoln', 'California', 'Long Beach', '90831'),
('timothy.anderson@gmail.com', 'Timothy', 'Anderson', '1973-05-08', '33 Seventh', 'California', 'Commerce', '90023'),
('virginia.baker@gmail.com', 'Virginia', 'Baker', '1990-11-25', '6 Jefferson', 'California', 'Santa Monica', '90410'),
('walter.edwards@icloud.com', 'Walter', 'Edwards', '1963-09-04', '137 Church', 'California', 'Pico Rivera', '90661'),
('wanda.gray@icloud.com', 'Wanda', 'Gray', '1963-03-18', '946 Cedar', 'California', 'Los Angeles', '90710'),
('wanda.myers@animalshelter.com', 'Wanda', 'Myers', '1975-02-05', '663 Cedar', 'California', 'Los Angeles', '90710'),
('wayne.carter@animalshelter.com', 'Wayne', 'Carter', '1988-03-15', '341 Washington', 'California', 'Inglewood', '90309'),
('wayne.turner@icloud.com', 'Wayne', 'Turner', '1966-02-18', '350 Washington', 'California', 'Inglewood', '90309');

-- Staff
CREATE	TABLE Staff
(
	Email	TEXT	NOT NULL 
		PRIMARY KEY
		REFERENCES Persons(Email), 
	Hire_Date DATE			NOT NULL
);
INSERT INTO	Staff (Email, Hire_Date)
VALUES
('ashley.flores@animalshelter.com', '2016-01-01'),
('dennis.hill@animalshelter.com', '2018-10-07'),
('frances.hill@animalshelter.com', '2016-01-01'),
('gerald.reyes@animalshelter.com', '2018-03-20'),
('patrick.hughes@animalshelter.com', '2018-12-15'),
('robin.murphy@animalshelter.com', '2018-08-15'),
('sharon.davis@animalshelter.com', '2016-01-01'),
('wanda.myers@animalshelter.com', '2016-01-01'),
('wayne.carter@animalshelter.com', '2018-04-02');

-- Staff Roles
CREATE	TABLE Staff_Roles 
(
	Role TEXT NOT NULL PRIMARY KEY 
);
INSERT INTO	Staff_Roles (Role)
VALUES
('Assistant'),
('Janitor'),
('Manager'),
('Receptionist'),
('Veterinarian');

-- Staff Assignments
CREATE TABLE Staff_Assignments
(
	Email		TEXT	NOT NULL
		REFERENCES Staff (Email) ON UPDATE CASCADE,
	Role		TEXT		NOT NULL
		REFERENCES Staff_Roles (Role),
	Assigned	DATE			NOT NULL,
	PRIMARY KEY (Email, Role)
);
INSERT INTO	Staff_Assignments (Email, Role, Assigned)
VALUES
('ashley.flores@animalshelter.com', 'Veterinarian', '2016-01-01'),
('dennis.hill@animalshelter.com', 'Veterinarian', '2018-10-07'),
('frances.hill@animalshelter.com', 'Receptionist', '2016-01-01'),
('gerald.reyes@animalshelter.com', 'Assistant', '2018-03-20'),
('patrick.hughes@animalshelter.com', 'Receptionist', '2018-12-15'),
('robin.murphy@animalshelter.com', 'Assistant', '2018-08-15'),
('sharon.davis@animalshelter.com', 'Manager', '2016-01-01'),
('wanda.myers@animalshelter.com', 'Assistant', '2016-01-01'),
('wayne.carter@animalshelter.com', 'Assistant', '2018-04-02');

-- Adoptions
CREATE	TABLE Adoptions
(
	Name			TEXT		NOT NULL,
	Species			TEXT		NOT NULL,
	Adopter_Email	TEXT	NOT NULL
		REFERENCES Persons (Email) ON UPDATE CASCADE,
	Adoption_Date	DATE			NOT NULL,
	Adoption_Fee	INTEGER		NOT NULL
		CHECK (Adoption_Fee >= (0)),
	PRIMARY KEY (Name, Species, Adopter_Email),
	FOREIGN KEY (Name, Species)
		REFERENCES Animals (Name, Species) ON UPDATE CASCADE
);
INSERT INTO	Adoptions (Name, Species, Adopter_Email, Adoption_Date, Adoption_Fee)
VALUES
('Abby', 'Dog', 'patrick.hughes@animalshelter.com', '2018-08-30', 58),
('Ace', 'Dog', 'justin.ruiz@hotmail.com', '2019-10-26', 68),
('Archie', 'Cat', 'patrick.hughes@animalshelter.com', '2018-08-30', 82),
('Bailey', 'Dog', 'wayne.turner@icloud.com', '2019-07-26', 50),
('Baloo', 'Rabbit', 'jesse.cox@yahoo.com', '2017-12-16', 58),
('Beau', 'Dog', 'shirley.williams@outlook.com', '2018-04-15', 90),
('Benji', 'Dog', 'sharon.davis@animalshelter.com', '2018-11-18', 97),
('Brody', 'Dog', 'george.scott@hotmail.com', '2019-02-21', 83),
('Brutus', 'Dog', 'virginia.baker@gmail.com', '2019-01-28', 66),
('Buddy', 'Cat', 'karen.smith@icloud.com', '2019-09-27', 73),
('Callie', 'Dog', 'peter.smith@hotmail.com', '2018-09-06', 57),
('Chico', 'Dog', 'lori.smith@icloud.com', '2019-12-29', 86),
('Chubby', 'Rabbit', 'adam.brown@gmail.com', '2018-05-27', 65),
('Cleo', 'Cat', 'melissa.lopez@gmail.com', '2019-12-15', 56),
('Cooper', 'Dog', 'lisa.perez@icloud.com', '2018-01-10', 61),
('Cosmo', 'Cat', 'diane.thompson@hotmail.com', '2019-06-16', 100),
('Dolly', 'Dog', 'laura.young@gmail.com', '2019-12-30', 93),
('Emma', 'Dog', 'melissa.moore@icloud.com', '2019-12-28', 76),
('Fiona', 'Cat', 'jerry.mitchell@icloud.com', '2018-02-23', 96),
('George', 'Cat', 'kevin.diaz@hotmail.com', '2018-09-13', 97),
('Ginger', 'Dog', 'julie.adams@gmail.com', '2017-03-07', 79),
('Gizmo', 'Dog', 'lori.smith@icloud.com', '2019-12-26', 54),
('Gracie', 'Cat', 'gerald.reyes@animalshelter.com', '2017-09-09', 82),
('Gus', 'Dog', 'frances.cook@yahoo.com', '2018-12-29', 96),
('Hobbes', 'Cat', 'timothy.anderson@gmail.com', '2017-11-08', 73),
('Hudini', 'Rabbit', 'kathy.thomas@gmail.com', '2019-12-24', 57),
('Humphrey', 'Rabbit', 'kelly.allen@hotmail.com', '2019-01-17', 85),
('Jake', 'Dog', 'shirley.williams@outlook.com', '2019-11-12', 84),
('Jax', 'Dog', 'wayne.turner@icloud.com', '2018-04-01', 85),
('Kiki', 'Cat', 'james.ramos@hotmail.com', '2019-12-01', 87),
('King', 'Dog', 'charles.phillips@gmail.com', '2019-07-18', 57),
('Lexi', 'Dog', 'virginia.baker@gmail.com', '2018-07-28', 54),
('Lily', 'Dog', 'mildred.gray@yahoo.com', '2019-09-01', 99),
('Lucy', 'Dog', 'richard.castillo@icloud.com', '2018-07-07', 78),
('Luke', 'Dog', 'ryan.garcia@hotmail.com', '2018-05-04', 65),
('Luna', 'Rabbit', 'ryan.wright@hotmail.com', '2019-04-14', 55),
('Mac', 'Dog', 'randy.bailey@icloud.com', '2018-06-12', 51),
('Maddie', 'Dog', 'theresa.carter@icloud.com', '2017-09-18', 87),
('Max', 'Dog', 'roy.rogers@hotmail.com', '2017-09-23', 62),
('Millie', 'Dog', 'richard.castillo@icloud.com', '2018-05-21', 98),
('Miss Kitty', 'Cat', 'anna.thompson@hotmail.com', '2019-11-11', 83),
('Misty', 'Cat', 'frances.hill@animalshelter.com', '2019-12-13', 86),
('Mocha', 'Dog', 'roger.adams@hotmail.com', '2019-07-22', 93),
('Nala', 'Dog', 'wayne.turner@icloud.com', '2019-07-26', 77),
('Nova', 'Cat', 'walter.edwards@icloud.com', '2018-09-03', 98),
('Oscar', 'Cat', 'bruce.harris@hotmail.com', '2018-11-19', 79),
('Otis', 'Dog', 'doris.young@icloud.com', '2019-08-02', 51),
('Peanut', 'Rabbit', 'richard.castillo@icloud.com', '2019-03-21', 83),
('Pearl', 'Cat', 'doris.young@icloud.com', '2019-10-13', 94),
('Penelope', 'Cat', 'emily.perez@gmail.com', '2018-06-02', 54),
('Penelope', 'Dog', 'virginia.baker@gmail.com', '2018-10-22', 54),
('Penny', 'Cat', 'roy.rogers@hotmail.com', '2017-04-08', 66),
('Piper', 'Dog', 'margaret.campbell@hotmail.com', '2016-06-16', 61),
('Poppy', 'Dog', 'phyllis.moore@gmail.com', '2019-03-15', 93),
('Prince', 'Dog', 'virginia.baker@gmail.com', '2018-03-13', 95),
('Pumpkin', 'Cat', 'scott.gutierrez@gmail.com', '2019-09-12', 64),
('Ranger', 'Dog', 'charles.phillips@gmail.com', '2019-01-06', 61),
('Remi / Remy', 'Dog', 'jesse.cox@yahoo.com', '2019-04-29', 61),
('Riley', 'Dog', 'sara.nelson@icloud.com', '2019-09-30', 54),
('Rocky', 'Cat', 'patricia.wright@icloud.com', '2019-11-21', 60),
('Roxy', 'Dog', 'julie.adams@gmail.com', '2019-08-07', 86),
('Rusty', 'Dog', 'jacqueline.phillips@gmail.com', '2016-04-23', 50),
('Sadie', 'Cat', 'jonathan.mez@hotmail.com', '2018-12-07', 85),
('Salem', 'Cat', 'bruce.cook@icloud.com', '2018-02-09', 55),
('Sam', 'Cat', 'frances.cook@yahoo.com', '2018-12-29', 51),
('Shadow', 'Dog', 'wayne.turner@icloud.com', '2018-04-01', 73),
('Skye', 'Dog', 'jerry.mitchell@icloud.com', '2016-09-25', 67),
('Thomas', 'Cat', 'george.scott@hotmail.com', '2019-05-23', 96),
('Toby', 'Rabbit', 'phyllis.moore@gmail.com', '2019-11-26', 96),
('Whitney', 'Rabbit', 'margaret.campbell@hotmail.com', '2019-07-17', 75);

CREATE TABLE Vaccinations
(
	Name				TEXT		NOT NULL,
	Species				TEXT		NOT NULL,
	Vaccination_Time	TIMESTAMP		NOT NULL,
	Vaccine				TEXT		NOT NULL,
	Batch				TEXT		NOT NULL,
	Comments			TEXT	NULL,
	Email				TEXT	NOT NULL
		REFERENCES Staff (Email) ON UPDATE CASCADE,
	PRIMARY KEY (Name, Species, Vaccine, Vaccination_Time),
	FOREIGN KEY (Name, Species)
		REFERENCES Animals (Name, Species)
);
INSERT INTO	Vaccinations (Name, Species, Vaccination_Time, Vaccine, Batch, Comments, Email)
VALUES
('Abby', 'Dog', '2017-04-19T09:01:00.0000000', 'Distemper Virus', 'N-178784096', NULL, 'ashley.flores@animalshelter.com'),
('Abby', 'Dog', '2018-04-19T10:44:00.0000000', 'Distemper Virus', 'L-107687717', NULL, 'wanda.myers@animalshelter.com'),
('Angel', 'Dog', '2017-05-04T10:38:00.0000000', 'Distemper Virus', 'L-353180534', NULL, 'wanda.myers@animalshelter.com'),
('Angel', 'Dog', '2018-05-04T09:47:00.0000000', 'Distemper Virus', 'A-271237673', NULL, 'wanda.myers@animalshelter.com'),
('Angel', 'Dog', '2017-05-04T12:49:00.0000000', 'Rabies', 'V-180603107', NULL, 'wanda.myers@animalshelter.com'),
('Angel', 'Dog', '2018-05-04T11:18:00.0000000', 'Rabies', 'P-118670651', NULL, 'ashley.flores@animalshelter.com'),
('Archie', 'Cat', '2017-11-20T09:35:00.0000000', 'Calicivirus', 'J-460970834', NULL, 'ashley.flores@animalshelter.com'),
('Archie', 'Cat', '2017-11-20T13:25:00.0000000', 'Panleukopenia Virus', 'F-164759480', NULL, 'ashley.flores@animalshelter.com'),
('Aspen', 'Dog', '2016-09-28T07:36:00.0000000', 'Adenovirus', 'M-471677500', NULL, 'wanda.myers@animalshelter.com'),
('Aspen', 'Dog', '2017-09-29T12:35:00.0000000', 'Adenovirus', 'V-256362103', NULL, 'wanda.myers@animalshelter.com'),
('Aspen', 'Dog', '2016-09-28T10:01:00.0000000', 'Distemper Virus', 'N-147820695', NULL, 'ashley.flores@animalshelter.com'),
('Aspen', 'Dog', '2016-09-28T07:41:00.0000000', 'Rabies', 'K-430117096', NULL, 'wanda.myers@animalshelter.com'),
('Aspen', 'Dog', '2017-09-29T07:32:00.0000000', 'Rabies', 'B-384980558', NULL, 'ashley.flores@animalshelter.com'),
('Baloo', 'Rabbit', '2016-09-01T07:00:00.0000000', 'Rabies', 'V-411899194', NULL, 'wanda.myers@animalshelter.com'),
('Benny', 'Dog', '2019-01-02T09:44:00.0000000', 'Adenovirus', 'D-237655965', NULL, 'ashley.flores@animalshelter.com'),
('Benny', 'Dog', '2019-01-02T13:19:00.0000000', 'Rabies', 'H-405534627', NULL, 'robin.murphy@animalshelter.com'),
('Bon bon', 'Rabbit', '2018-12-27T13:39:00.0000000', 'Myxomatosis', 'I-176340730', NULL, 'dennis.hill@animalshelter.com'),
('Bon bon', 'Rabbit', '2019-12-27T13:32:00.0000000', 'Myxomatosis', 'O-237649828', NULL, 'ashley.flores@animalshelter.com'),
('Bon bon', 'Rabbit', '2016-12-26T12:08:00.0000000', 'Rabies', 'N-100666243', NULL, 'wanda.myers@animalshelter.com'),
('Bon bon', 'Rabbit', '2017-12-27T10:09:00.0000000', 'Rabies', 'Z-365201947', NULL, 'wanda.myers@animalshelter.com'),
('Bon bon', 'Rabbit', '2018-12-27T11:09:00.0000000', 'Rabies', 'O-282699517', NULL, 'robin.murphy@animalshelter.com'),
('Bon bon', 'Rabbit', '2019-12-27T09:23:00.0000000', 'Rabies', 'C-219506249', NULL, 'gerald.reyes@animalshelter.com'),
('Boomer', 'Dog', '2019-09-03T11:58:00.0000000', 'Rabies', 'D-353567999', NULL, 'gerald.reyes@animalshelter.com'),
('Brutus', 'Dog', '2018-11-28T12:26:00.0000000', 'Adenovirus', 'K-99075733 ', NULL, 'wanda.myers@animalshelter.com'),
('Brutus', 'Dog', '2018-11-28T07:17:00.0000000', 'Distemper Virus', 'U-104436672', NULL, 'wayne.carter@animalshelter.com'),
('Cooper', 'Dog', '2017-10-13T09:41:00.0000000', 'Distemper Virus', 'K-334308175', NULL, 'ashley.flores@animalshelter.com'),
('Dolly', 'Dog', '2018-09-27T08:16:00.0000000', 'Adenovirus', 'F-202325284', NULL, 'ashley.flores@animalshelter.com'),
('Dolly', 'Dog', '2019-09-27T10:29:00.0000000', 'Adenovirus', 'O-402995062', NULL, 'wayne.carter@animalshelter.com'),
('Dolly', 'Dog', '2018-09-27T14:45:00.0000000', 'Rabies', 'T-302536393', NULL, 'robin.murphy@animalshelter.com'),
('Fiona', 'Cat', '2017-12-18T11:15:00.0000000', 'Calicivirus', 'C-259489422', NULL, 'wanda.myers@animalshelter.com'),
('Fiona', 'Cat', '2017-12-18T14:17:00.0000000', 'Panleukopenia Virus', 'Y-412311976', NULL, 'wanda.myers@animalshelter.com'),
('Ginger', 'Dog', '2017-03-07T08:33:00.0000000', 'Adenovirus', 'B-141623834', NULL, 'wanda.myers@animalshelter.com'),
('Gizmo', 'Dog', '2019-08-22T08:52:00.0000000', 'Distemper Virus', 'H-384444123', NULL, 'wayne.carter@animalshelter.com'),
('Hobbes', 'Cat', '2016-12-26T12:54:00.0000000', 'Panleukopenia Virus', 'X-224232315', NULL, 'ashley.flores@animalshelter.com'),
('Holly', 'Dog', '2019-07-15T13:14:00.0000000', 'Rabies', 'D-117727724', NULL, 'robin.murphy@animalshelter.com'),
('Humphrey', 'Rabbit', '2018-08-28T08:09:00.0000000', 'Myxomatosis', 'H-250858054', NULL, 'gerald.reyes@animalshelter.com'),
('Humphrey', 'Rabbit', '2018-08-28T09:41:00.0000000', 'Rabies', 'U-255625602', NULL, 'robin.murphy@animalshelter.com'),
('Humphrey', 'Rabbit', '2018-08-28T10:08:00.0000000', 'Viral Haemorrhagic Disease', 'I-404631209', NULL, 'gerald.reyes@animalshelter.com'),
('Jake', 'Dog', '2017-12-08T07:46:00.0000000', 'Adenovirus', 'T-332043529', NULL, 'wanda.myers@animalshelter.com'),
('Lucy', 'Dog', '2018-05-22T07:46:00.0000000', 'Distemper Virus', 'L-258258441', NULL, 'ashley.flores@animalshelter.com'),
('Luna', 'Dog', '2019-09-03T13:30:00.0000000', 'Adenovirus', 'O-245391721', NULL, 'wayne.carter@animalshelter.com'),
('Misty', 'Cat', '2019-08-09T09:13:00.0000000', 'Calicivirus', 'I-259629161', NULL, 'dennis.hill@animalshelter.com'),
('Misty', 'Cat', '2019-08-09T09:00:00.0000000', 'Panleukopenia Virus', 'Y-383139393', NULL, 'gerald.reyes@animalshelter.com'),
('Nala', 'Dog', '2019-07-26T13:15:00.0000000', 'Adenovirus', 'S-115426515', NULL, 'ashley.flores@animalshelter.com'),
('Nova', 'Cat', '2018-08-13T14:32:00.0000000', 'Leukemia Virus', 'E-489987614', NULL, 'ashley.flores@animalshelter.com'),
('Nova', 'Cat', '2018-08-13T11:35:00.0000000', 'Rabies', 'C-386537135', NULL, 'ashley.flores@animalshelter.com'),
('Odin', 'Dog', '2019-10-25T14:02:00.0000000', 'Adenovirus', 'Z-490194302', NULL, 'robin.murphy@animalshelter.com'),
('Odin', 'Dog', '2017-10-25T07:58:00.0000000', 'Rabies', 'N-322162073', NULL, 'ashley.flores@animalshelter.com'),
('Odin', 'Dog', '2019-10-25T09:11:00.0000000', 'Rabies', 'L-181928453', NULL, 'wayne.carter@animalshelter.com'),
('Oscar', 'Cat', '2018-03-22T07:15:00.0000000', 'Herpesvirus', 'L-196623340', NULL, 'wanda.myers@animalshelter.com'),
('Oscar', 'Cat', '2018-03-22T07:12:00.0000000', 'Panleukopenia Virus', 'S-427830689', NULL, 'ashley.flores@animalshelter.com'),
('Oscar', 'Cat', '2018-03-22T13:19:00.0000000', 'Rabies', 'K-153175906', NULL, 'ashley.flores@animalshelter.com'),
('Patches', 'Cat', '2019-10-21T09:56:00.0000000', 'Leukemia Virus', 'H-151581256', NULL, 'wanda.myers@animalshelter.com'),
('Penelope', 'Cat', '2017-12-22T08:29:00.0000000', 'Calicivirus', 'H-233459270', NULL, 'wanda.myers@animalshelter.com'),
('Penelope', 'Cat', '2017-12-22T09:42:00.0000000', 'Rabies', 'T-245247914', NULL, 'wanda.myers@animalshelter.com'),
('Penelope', 'Dog', '2017-01-12T12:42:00.0000000', 'Distemper Virus', 'M-466473114', NULL, 'ashley.flores@animalshelter.com'),
('Penelope', 'Dog', '2017-01-12T14:39:00.0000000', 'Rabies', 'R-249697441', NULL, 'ashley.flores@animalshelter.com'),
('Penelope', 'Dog', '2018-01-12T08:20:00.0000000', 'Rabies', 'G-252982705', NULL, 'ashley.flores@animalshelter.com'),
('Poppy', 'Dog', '2018-12-17T09:34:00.0000000', 'Rabies', 'W-142526378', NULL, 'robin.murphy@animalshelter.com'),
('Pumpkin', 'Cat', '2019-08-07T11:03:00.0000000', 'Herpesvirus', 'R-266824458', NULL, 'gerald.reyes@animalshelter.com'),
('Pumpkin', 'Cat', '2019-08-07T09:09:00.0000000', 'Rabies', 'C-414219200', NULL, 'robin.murphy@animalshelter.com'),
('Ranger', 'Dog', '2018-11-28T11:39:00.0000000', 'Adenovirus', 'P-300099414', NULL, 'ashley.flores@animalshelter.com'),
('Ranger', 'Dog', '2017-11-28T11:59:00.0000000', 'Distemper Virus', 'W-358599750', NULL, 'ashley.flores@animalshelter.com'),
('Ranger', 'Dog', '2018-11-28T07:27:00.0000000', 'Distemper Virus', 'K-483728872', NULL, 'wanda.myers@animalshelter.com'),
('Remi / Remy', 'Dog', '2018-11-14T11:49:00.0000000', 'Distemper Virus', 'S-337547458', NULL, 'gerald.reyes@animalshelter.com'),
('Roxy', 'Dog', '2019-01-04T07:55:00.0000000', 'Adenovirus', 'Q-206330713', NULL, 'ashley.flores@animalshelter.com'),
('Roxy', 'Dog', '2019-01-04T12:58:00.0000000', 'Distemper Virus', 'P-281685593', NULL, 'dennis.hill@animalshelter.com'),
('Sadie', 'Cat', '2016-10-06T07:02:00.0000000', 'Panleukopenia Virus', 'C-229285711', NULL, 'ashley.flores@animalshelter.com'),
('Sam', 'Cat', '2018-11-09T13:46:00.0000000', 'Herpesvirus', 'W-462716953', NULL, 'wanda.myers@animalshelter.com'),
('Sammy', 'Dog', '2018-07-06T12:29:00.0000000', 'Adenovirus', 'Q-336566517', NULL, 'wanda.myers@animalshelter.com'),
('Sammy', 'Dog', '2018-07-06T10:58:00.0000000', 'Distemper Virus', 'H-245193858', NULL, 'ashley.flores@animalshelter.com'),
('Samson', 'Dog', '2019-11-15T10:11:00.0000000', 'Distemper Virus', 'R-497123324', NULL, 'gerald.reyes@animalshelter.com'),
('Shadow', 'Dog', '2016-12-29T08:43:00.0000000', 'Distemper Virus', 'T-135880561', NULL, 'wanda.myers@animalshelter.com'),
('Shelby', 'Dog', '2016-04-18T14:04:00.0000000', 'Adenovirus', 'L-438221809', NULL, 'ashley.flores@animalshelter.com'),
('Shelby', 'Dog', '2017-04-19T13:33:00.0000000', 'Adenovirus', 'U-447076076', NULL, 'wanda.myers@animalshelter.com'),
('Simon', 'Cat', '2018-05-30T14:15:00.0000000', 'Calicivirus', 'Q-478638360', NULL, 'gerald.reyes@animalshelter.com'),
('Skye', 'Dog', '2016-08-10T10:51:00.0000000', 'Distemper Virus', 'E-236843325', NULL, 'ashley.flores@animalshelter.com'),
('Skye', 'Dog', '2016-08-10T09:53:00.0000000', 'Rabies', 'A-171447806', NULL, 'wanda.myers@animalshelter.com'),
('Stella', 'Dog', '2018-01-03T08:20:00.0000000', 'Adenovirus', 'K-380962117', NULL, 'ashley.flores@animalshelter.com'),
('Thomas', 'Cat', '2019-05-09T07:25:00.0000000', 'Leukemia Virus', 'N-431089273', NULL, 'wayne.carter@animalshelter.com'),
('Thomas', 'Cat', '2019-05-09T12:27:00.0000000', 'Rabies', 'Z-112256475', NULL, 'wanda.myers@animalshelter.com'),
('Thor', 'Dog', '2017-03-22T11:45:00.0000000', 'Adenovirus', 'U-127749818', NULL, 'ashley.flores@animalshelter.com'),
('Thor', 'Dog', '2019-03-22T14:24:00.0000000', 'Adenovirus', 'M-229481627', NULL, 'wanda.myers@animalshelter.com'),
('Thor', 'Dog', '2017-03-22T09:58:00.0000000', 'Distemper Virus', 'I-370298118', NULL, 'ashley.flores@animalshelter.com'),
('Thor', 'Dog', '2019-03-22T07:15:00.0000000', 'Distemper Virus', 'A-455989697', NULL, 'dennis.hill@animalshelter.com'),
('Tigger', 'Cat', '2018-01-04T13:28:00.0000000', 'Leukemia Virus', 'F-321237388', NULL, 'ashley.flores@animalshelter.com'),
('Tigger', 'Cat', '2019-01-04T11:15:00.0000000', 'Leukemia Virus', 'P-236394443', NULL, 'gerald.reyes@animalshelter.com'),
('Tigger', 'Cat', '2017-01-04T14:52:00.0000000', 'Panleukopenia Virus', 'R-191602716', NULL, 'wanda.myers@animalshelter.com'),
('Tigger', 'Cat', '2019-01-04T08:49:00.0000000', 'Panleukopenia Virus', 'T-370701265', NULL, 'dennis.hill@animalshelter.com'),
('Tigger', 'Cat', '2018-01-04T10:27:00.0000000', 'Rabies', 'L-382821941', NULL, 'ashley.flores@animalshelter.com'),
('Tigger', 'Cat', '2019-01-04T09:08:00.0000000', 'Rabies', 'V-177428557', NULL, 'robin.murphy@animalshelter.com'),
('Walter', 'Dog', '2018-08-27T11:10:00.0000000', 'Distemper Virus', 'B-226925017', NULL, 'ashley.flores@animalshelter.com'),
('Walter', 'Dog', '2019-08-27T12:32:00.0000000', 'Distemper Virus', 'X-480746334', NULL, 'wayne.carter@animalshelter.com'),
('Walter', 'Dog', '2018-08-27T14:21:00.0000000', 'Rabies', 'O-242396268', NULL, 'robin.murphy@animalshelter.com'),
('Walter', 'Dog', '2019-08-27T09:03:00.0000000', 'Rabies', 'L-366676246', NULL, 'robin.murphy@animalshelter.com');