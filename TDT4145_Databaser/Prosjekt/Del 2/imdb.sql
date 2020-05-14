DROP DATABASE IF EXISTS akvo_imdb;
CREATE DATABASE akvo_imdb;
USE akvo_imdb;

CREATE Table person (
	personid INT NOT NULL PRIMARY KEY,
    navn VARCHAR(50),
    fodselsdato DATE,
    nasjonalitet VARCHAR(50)
);

CREATE TABLE lydspor (
	lydsporid INT NOT NULL PRIMARY KEY,
    albumnavn VARCHAR(50)
);

CREATE TABLE musikkereilydspor (
	personid INT,
    lydsporid INT,
    rolle VARCHAR(50),
	FOREIGN KEY (personid) REFERENCES person(personid) ON DELETE CASCADE,
	FOREIGN KEY (lydsporid) REFERENCES lydspor(lydsporid) ON DELETE CASCADE
);

CREATE TABLE selskaper (
	selskapsid INT NOT NULL PRIMARY KEY,
    navn VARCHAR(50),
    url VARCHAR(50),
    adresse VARCHAR(50),
    land VARCHAR(50)
);

CREATE TABLE sjanger (
	sjangerid INT NOT NULL PRIMARY KEY,
    navn VARCHAR(50)
);

CREATE TABLE film (
	filmid INT NOT NULL PRIMARY KEY,
    tittel VARCHAR(50),
    utgivelseår INT,
    lanseringsdato DATE,
    storyline VARCHAR(5000),
    lengde TIME,
    lagetfor VARCHAR(50),
    lydsporid INT,
    FOREIGN KEY (lydsporid) REFERENCES lydspor(lydsporid) ON DELETE CASCADE,
	produsentid INT,
    FOREIGN KEY (produsentid) REFERENCES selskaper(selskapsid) ON DELETE CASCADE
     
);

CREATE TABLE sjangerifilm (
    sjangerid INT,
    filmid INT,
	FOREIGN KEY (sjangerid) REFERENCES sjanger(sjangerid) ON DELETE CASCADE,
	FOREIGN KEY (filmid) REFERENCES film(filmid) ON DELETE CASCADE
);

CREATE TABLE manusforfatterforfilm (
	personid INT,
    filmid INT,
	FOREIGN KEY (personid) REFERENCES person(personid) ON DELETE CASCADE,
	FOREIGN KEY (filmid) REFERENCES film(filmid) ON DELETE CASCADE
);

CREATE TABLE regissørforfilm (
	personid INT,
    filmid INT,
	FOREIGN KEY (personid) REFERENCES person(personid) ON DELETE CASCADE,
	FOREIGN KEY (filmid) REFERENCES film(filmid) ON DELETE CASCADE
);
    
CREATE TABLE skuespillerforfilm (
	personid INT,
    filmid INT,
    rolle VARCHAR(50),
	FOREIGN KEY (personid) REFERENCES person(personid) ON DELETE CASCADE,
	FOREIGN KEY (filmid) REFERENCES film(filmid) ON DELETE CASCADE
);

CREATE TABLE serie (
	serieid INT NOT NULL PRIMARY KEY,
    navn VARCHAR(50)
);

CREATE TABLE filmiserie (
	serieid INT,
    filmid INT,
    sesong INT,
    episode INT,
    FOREIGN KEY (serieid) REFERENCES serie(serieid) ON DELETE CASCADE,
    FOREIGN KEY (filmid) REFERENCES film(filmid) ON DELETE CASCADE
);

CREATE TABLE bruker (
	brukerid INT NOT NULL PRIMARY KEY
);

CREATE TABLE anmeldelse (
	rating INT,
    tekst VARCHAR(1000),
    anmeldelsefor INT,
    FOREIGN KEY (anmeldelsefor) REFERENCES film(filmid) ON DELETE CASCADE,
    skrevetav INT,
    FOREIGN KEY (skrevetav) REFERENCES bruker(brukerid) ON DELETE CASCADE
);

INSERT INTO person VALUES(1, "Christopher Nolan","1999-01-01","Amerikansk"),(2, "Jonathan Nolan","1999-01-01","Amerikansk"),(3,"David S. Goyer","1999-01-01","Amerikansk"),(4,"Christian Bale","1999-01-01","Norsk"),(5,"Tom Hardy","1999-01-01","Norsk"),(6,"Hanz Zimmer","1999-01-01","Norsk");
INSERT INTO serie VALUES (1,"Batman-series");
INSERT INTO lydspor VALUES(1,"The Dark Knight Rises (soundtrack)");
INSERT INTO musikkereilydspor VALUES(6,1,"Komponist");
INSERT INTO selskaper VALUES(1,"warner bros","www.warnerbros.com","Holywood","USA"),(2,"Gutta","www.lolxd.com","Stavanger","Norge");
INSERT INTO sjanger VALUES(1,"Action"),(2,"Komedie"),(3,"Thriller");
INSERT INTO film VALUES(1,"Batman",2004,"2005-11-05","Kul fyr","45:08","Kino",1,1),(2,"Teletubbes",2004,"2005-11-05","Kul fyr","45:08","Kino",1,2),(3,"Batman 2",2004,"2005-11-05","Kul fyr","45:08","Kino",1,1),(4,"John Wick",2004,"2005-11-05","Kul fyr","45:08","Kino",1,2);
INSERT INTO regissørforfilm VALUES(1,1),(2,1);
INSERT INTO manusforfatterforfilm VALUES (3,1);
INSERT INTO skuespillerforfilm VALUES(4,1,"Batman"),(6,4,"John Wick");
INSERT INTO sjangerifilm VALUES(1,1),(2,2),(1,3),(3,4),(1,4);
INSERT INTO filmiserie VALUES(1,1,null, 1);
INSERT INTO bruker VALUES(1),(2);
INSERT INTO anmeldelse VALUES(10,"Jævla bra film bursjan", 1, 1);

