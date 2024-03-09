CREATE DATABASE IF NOT EXISTS q4;

-- Switch to the newly created database
USE q4;

CREATE TABLE Tourist (
tid VARCHAR(7) PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
DOB date,
email VARCHAR(100) NOT NULL
);
CREATE TABLE ThemePark (
ParkTitle VARCHAR(50) NOT NULL,
Addr VARCHAR(50) NOT NULL,
Rating FLOAT NOT NULL,
PRIMARY KEY (ParkTitle, Addr)
);
CREATE TABLE Ride (
RideTitle VARCHAR(50) PRIMARY KEY,
Avg_wt TIME NOT NULL,
MinHeightRestriction INT
);
CREATE TABLE Visit (
tid VARCHAR(7),
ParkTitle VARCHAR(50),
Addr VARCHAR(50),
Stars INT NOT NULL,
FOREIGN KEY (tid) REFERENCES Tourist (tid),
FOREIGN KEY (ParkTitle, Addr) REFERENCES ThemePark (ParkTitle, Addr)
);
CREATE TABLE Favorite (
tid VARCHAR(7),
RideTitle VARCHAR(50),
FOREIGN KEY (tid) REFERENCES Tourist (tid),
FOREIGN KEY (RideTitle) REFERENCES Ride (RideTitle)
);
CREATE TABLE Locate (
RideTitle VARCHAR(50),
ParkTitle VARCHAR(50),
Addr VARCHAR(50),
IP VARCHAR(50) NOT NULL,
FOREIGN KEY (RideTitle) REFERENCES Ride (RideTitle),
FOREIGN KEY (ParkTitle, Addr) REFERENCES ThemePark (ParkTitle, Addr)
);



INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('wi1342', 'Willehad', 'Iversen', '2001-04-02', 'wi1342@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('vh2623', 'Vassilis', 'Hart', '1999-03-16', 'vh2623@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('ks0335', 'Kevin', 'Slootmaekers', NULL, 'ks0335@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('kc8273', 'Kiera', 'Costa', '2000-07-20', 'kc8273@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('mm9823', 'Manya', 'Mittelman', '2000-11-12', 'mm9823@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('ga1146', 'Geirr ', 'Andreas', NULL, 'ga1146@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('am9274', 'Ayaru ', 'MacBeth', '2001-05-16', 'am9274@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('db0666', 'Dubravka ', 'Bogdanov', NULL, 'db0666@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('ft5391', 'Friduman ', 'Toft', NULL, 'ft5391@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('dv7982', 'Dipak ', 'Victors', '1999-03-06', 'dv7982@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('yp2225', 'Yacouba ', 'Pettersen', NULL, 'yp2225@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('nm1240', 'Nabu ', 'Miazga', '2000-02-10', 'nm1240@nyu.edu');
INSERT INTO Tourist (tid, first_name, last_name, DOB, email) VALUES ('zr8244', 'Zacharie ', 'Reuter', '2001-07-06', 'zr8244@nyu.edu');

INSERT INTO ThemePark (ParkTitle, Addr, Rating) VALUES ('UniversalStudioFloridaUniversal', '6000 Universal Blvd', 4.7);
INSERT INTO ThemePark (ParkTitle, Addr, Rating) VALUES ('UniversalIslandsOfAdventure', '6000 Universal Blvd', 4.7);
INSERT INTO ThemePark (ParkTitle, Addr, Rating) VALUES ('MagicKingdomPark', 'Bay Lake', 4.6);
INSERT INTO ThemePark (ParkTitle, Addr, Rating) VALUES ('Disney''sHollywoodStudios', 'Bay Lake', 4.6);
INSERT INTO ThemePark (ParkTitle, Addr, Rating) VALUES ('Disney''sAnimalKingdom', 'Bay Lake', 4.7);
INSERT INTO ThemePark (ParkTitle, Addr, Rating) VALUES ('LEGOLANDFloridaResort', '1 Legoland Way', 4.4);

INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('The Simpsons Ride', '00:25:00', 40);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Harry Potter and the Escape from Gringotts', '01:00:00', 42);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Hogwarts Express - King''s Cross Station', '00:35:00', NULL);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Revenge of the Mummy', '01:00:00', 48);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('TRANSFORMERS: THE RIDE-3D', '00:25:00', 40);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Despicable Me Minion Mayhem', '00:25:00', 40);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Hogwarts Express - Hogsmeade Station', '00:35:00', NULL);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Hagrid''s Magical Creatures Motorbike Adventure', '02:00:00', 48);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Harry Potter and the Forbidden Journey', '00:15:00', 48);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('The Amazing Adventures of Spider-Man', '00:35:00', 40);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Mickey''s PhilharMagic', '00:15:00', NULL);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Enchanted Tales with Belle', '00:30:00', NULL);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Seven Dwarfs Mine Train', '01:15:00', 38);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Big Thunder Mountain Railroad', '00:55:00', 40);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Avatar Flight of Passage', '02:25:00', 44);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Na''vi River Journey', '01:10:00', NULL);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Slinky Dog Dash', '01:25:00', 38);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Mickey & Minnie''s Runaway Railway', '00:50:00', NULL);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('Star Wars: Rise of the Resistance', '01:20:00', 40);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('LEGO NINJAGO The Ride', '00:05:00', 48);
INSERT INTO Ride (RideTitle, Avg_wt, MinHeightRestriction) VALUES ('NFPA Rescue Academy', '00:15:00', 34);

INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('The Simpsons Ride', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd','The Simpsons');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Harry Potter and the Escape from Gringotts', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd','Harry Potter');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Hogwarts Express - King''s Cross Station', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd','Harry Potter');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Revenge of the Mummy', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd','Mummy');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('TRANSFORMERS: THE RIDE-3D', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd','Transformers');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Despicable Me Minion Mayhem', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd','Minions');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Hogwarts Express - Hogsmeade Station', 'UniversalIslandsOfAdventure', '6000 Universal Blvd','Harry Potter');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Hagrid''s Magical Creatures Motorbike Adventure', 'UniversalIslandsOfAdventure', '6000 Universal Blvd','Harry Potter');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Harry Potter and the Forbidden Journey', 'UniversalIslandsOfAdventure', '6000 Universal Blvd','Harry Potter');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('The Amazing Adventures of Spider-Man', 'UniversalIslandsOfAdventure', '6000 Universal Blvd','SpiderMan');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Mickey''s PhilharMagic', 'MagicKingdomPark', 'Bay Lake','Mickey Mouse');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Enchanted Tales with Belle', 'MagicKingdomPark', 'Bay Lake','Beauty and the Beast');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Seven Dwarfs Mine Train', 'MagicKingdomPark', 'Bay Lake','Snow White and the Seven Dwarfs');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Big Thunder Mountain Railroad', 'MagicKingdomPark', 'Bay Lake','Up');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Avatar Flight of Passage', 'Disney''sAnimalKingdom', 'Bay Lake','Avatar');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Na''vi River Journey', 'Disney''sAnimalKingdom', 'Bay Lake','Avatar');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Slinky Dog Dash', 'Disney''sHollywoodStudios', 'Bay Lake','slinky dog');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Mickey & Minnie''s Runaway Railway', 'Disney''sHollywoodStudios', 'Bay Lake','Mickey Mouse');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('Star Wars: Rise of the Resistance', 'Disney''sHollywoodStudios', 'Bay Lake','Star Wars');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('LEGO NINJAGO The Ride', 'LEGOLANDFloridaResort', '1 Legoland Way','NINJAGO');
INSERT INTO  Locate (RideTitle, ParkTitle, Addr, IP) VALUES ('NFPA Rescue Academy', 'LEGOLANDFloridaResort', '1 Legoland Way','NFPA');

INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('wi1342', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('wi1342', 'UniversalIslandsOfAdventure', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('wi1342', 'MagicKingdomPark', 'Bay Lake',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('wi1342', 'LEGOLANDFloridaResort', '1 Legoland Way',4);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('vh2623', 'UniversalIslandsOfAdventure', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('vh2623', 'Disney''sHollywoodStudios', 'Bay Lake',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('ks0335', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('kc8273', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd',4);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('kc8273', 'UniversalIslandsOfAdventure', '6000 Universal Blvd',4);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('mm9823', 'LEGOLANDFloridaResort', '1 Legoland Way',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('mm9823', 'Disney''sAnimalKingdom', 'Bay Lake',4);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('ga1146', 'MagicKingdomPark', 'Bay Lake',4);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('ga1146', 'Disney''sHollywoodStudios', 'Bay Lake',3);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('ga1146', 'Disney''sAnimalKingdom', 'Bay Lake',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('am9274', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('am9274', 'UniversalIslandsOfAdventure', '6000 Universal Blvd',2);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('db0666', 'LEGOLANDFloridaResort', '1 Legoland Way',4);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('ft5391', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('ft5391', 'UniversalIslandsOfAdventure', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('dv7982', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('dv7982', 'LEGOLANDFloridaResort', '1 Legoland Way',4);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('dv7982', 'Disney''sAnimalKingdom', 'Bay Lake',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('yp2225', 'MagicKingdomPark', 'Bay Lake',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('yp2225', 'Disney''sHollywoodStudios', 'Bay Lake',4);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('nm1240', 'Disney''sHollywoodStudios', 'Bay Lake',4);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('nm1240', 'Disney''sAnimalKingdom', 'Bay Lake',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('zr8244', 'UniversalStudioFloridaUniversal', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('zr8244', 'UniversalIslandsOfAdventure', '6000 Universal Blvd',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('zr8244', 'MagicKingdomPark', 'Bay Lake',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('zr8244', 'Disney''sHollywoodStudios', 'Bay Lake',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('zr8244', 'Disney''sAnimalKingdom', 'Bay Lake',5);
INSERT INTO  Visit (tid, ParkTitle, Addr, Stars) VALUES ('zr8244', 'LEGOLANDFloridaResort', '1 Legoland Way',5);




INSERT INTO  Favorite (tid, RideTitle) VALUES ('wi1342', 'Harry Potter and the Escape from Gringotts');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('vh2623', 'Mickey & Minnie''s Runaway Railway');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('ks0335', 'Revenge of the Mummy');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('kc8273', 'Hagrid''s Magical Creatures Motorbike Adventure');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('mm9823', 'LEGO NINJAGO The Ride');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('ga1146', 'Avatar Flight of Passage');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('am9274', 'Hogwarts Express - King''s Cross Station');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('db0666', 'LEGO NINJAGO The Ride');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('ft5391', 'Harry Potter and the Forbidden Journey');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('dv7982', 'Avatar Flight of Passage');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('yp2225', 'Big Thunder Mountain Railroad');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('nm1240', 'Star Wars: Rise of the Resistance');
INSERT INTO  Favorite (tid, RideTitle) VALUES ('zr8244', 'Mickey''s PhilharMagic');
