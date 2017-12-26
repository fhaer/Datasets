-- Löschen von Tabellen

drop table if exists s.buchung;
drop table if exists s.preis;
drop table if exists s.flugintervall;
drop table if exists s.teilstrecke;
drop table if exists s.flughafen;
drop table if exists s.flug;
drop table if exists s.kapazitaet;
drop table if exists s.flugzeug;
drop table if exists s.flugzeugtyp;
drop table if exists s.fluglinie;
drop table if exists s.buchungsklasse;
drop table if exists s.passagier;

-- Anlegen von Tabellen

CREATE TABLE s.flughafen 
(
	flughafen_id CHAR(3) PRIMARY KEY, 
	name         VARCHAR(40), 
	ort          VARCHAR(40), 
	land         VARCHAR(25), 
	staat        VARCHAR(30)
);

CREATE TABLE s.flugzeugtyp 
(
	flugzeugtyp_id 		CHAR(3), 
	beschreibung 		VARCHAR(100),
	hersteller 			VARCHAR(25), 
	maschinen 			INTEGER, 
	fluegelspannweite 	INTEGER, 
	laenge 				INTEGER, 
	gewicht 			INTEGER, 
	ladung 				INTEGER, 
	geschwindigkeit 	INTEGER, 
	reichweite 			INTEGER,
	PRIMARY KEY (flugzeugtyp_id)
);

CREATE TABLE s.fluglinie 
(
	fluglinie_id CHAR(3) PRIMARY KEY, 
	name         VARCHAR(64)
);

CREATE TABLE s.buchungsklasse 
(
	buchungsklasse_id CHAR(1) PRIMARY KEY, 
	Beschreibung      VARCHAR(40)
);

CREATE TABLE s.passagier 
(
	passagier_id INTEGER PRIMARY KEY, 
	nachname     VARCHAR(30),
	vorname		 VARCHAR(30),
	adresse      VARCHAR(100),
	ort      	 VARCHAR(100),
	land         VARCHAR(25)
);

CREATE TABLE s.teilstrecke 
(
	teilstrecke_id    INTEGER PRIMARY KEY, 
	startflughafen_id CHAR(3), 
	zielflughafen_id  CHAR(3), 
	beschreibung      VARCHAR(30), 
	CONSTRAINT start_fk 
	FOREIGN KEY(startflughafen_id) 
	REFERENCES s.flughafen(flughafen_id), 
  CONSTRAINT ziel_fk
	FOREIGN KEY(zielflughafen_id) 
	REFERENCES s.flughafen(flughafen_id)
);

CREATE TABLE s.flugzeug 
(
	flugzeug_id    INTEGER PRIMARY KEY,
 	fluglinie_id   CHAR(3),
 	flugzeugtyp_id CHAR(3), 
 	Zustand        VARCHAR(40), 
 	CONSTRAINT flugzeugTyp_fk 
 	FOREIGN KEY(flugzeugtyp_id) 
 	REFERENCES s.flugzeugtyp(flugzeugtyp_id), 
 	CONSTRAINT fluglinie_fk 
 	FOREIGN KEY(fluglinie_id) 
 	REFERENCES s.fluglinie(fluglinie_id)
);

CREATE TABLE s.flug 
(
	flug_id      CHAR(8) PRIMARY KEY, 
	flugzeug_id  INTEGER, 
	CONSTRAINT flugzeug_fk 
	FOREIGN KEY(flugzeug_id) 
	REFERENCES s.flugzeug(flugzeug_id) 
);

CREATE TABLE s.kapazitaet 
(
	flugzeug_id       INTEGER, 
	buchungsklasse_id CHAR(1), 
	kapazitaet        INTEGER, 
	CONSTRAINT kapazitaet_pk
	PRIMARY KEY(flugzeug_id, buchungsklasse_id), 
	CONSTRAINT flugzeug_fk 
	FOREIGN KEY(flugzeug_id) 
	REFERENCES s.flugzeug(flugzeug_id),
	CONSTRAINT buchungskl_fk 
	FOREIGN KEY(buchungsklasse_id) 
	REFERENCES s.buchungsklasse(buchungsklasse_id) 
);

CREATE TABLE s.flugintervall 
(
	flugintervall_id INTEGER PRIMARY KEY, 
	teilstrecke_id   INTEGER, 
	flug_id          CHAR(8), 
	ankunftszeit_Pl  TIME, 
	abflugzeit_Pl    TIME, 
	CONSTRAINT teilstrecke_fk 
	FOREIGN KEY (teilstrecke_id) 
	REFERENCES s.teilstrecke(teilstrecke_id), 
	CONSTRAINT flug_fk 
	FOREIGN KEY(flug_id) 
	REFERENCES s.flug(flug_id)
);

CREATE TABLE s.preis 
(
	flugintervall_id    INTEGER, 
	buchungsklasse_id   CHAR(1), 
	preis               INTEGER CHECK (preis > 0),
	CONSTRAINT preis_pk 
	PRIMARY KEY(flugintervall_id, buchungsklasse_id), 
	CONSTRAINT flugintervall_fk 
	FOREIGN KEY(flugintervall_id) 
	REFERENCES s.flugintervall(flugintervall_id),
	CONSTRAINT buchungsklasse_fk 
	FOREIGN KEY(buchungsklasse_id) 
	REFERENCES s.buchungsklasse(buchungsklasse_id)
);

CREATE TABLE s.buchung 
(
	passagier_id       INTEGER, 
	flugintervall_id   INTEGER, 
	datum              DATE, 
	buchungsklasse_id  CHAR(1), 
	CONSTRAINT buchung_pk 
	PRIMARY KEY(passagier_id, flugintervall_id, buchungsklasse_id), 
	CONSTRAINT passagier_fk 
	FOREIGN KEY(passagier_id) 
	REFERENCES s.passagier(passagier_id),
    CONSTRAINT flugintervall_fk 
    FOREIGN KEY(flugintervall_id) 
    REFERENCES s.flugintervall(flugintervall_id), 
    CONSTRAINT buchungsklasse_fk 
    FOREIGN KEY(buchungsklasse_id) 
    REFERENCES s.buchungsklasse(buchungsklasse_id) 
);


-- DWH-System

-- ETL: Extraktionstabelle(n) erstellen

CREATE TABLE s.E_Buchungen 
(
	Zielflughafen_ID  	CHAR(3), 
	Startflughafen_ID 	CHAR(3), 
	Flugzeugtyp_ID     	CHAR(3), 
	Fluglinie_ID       	CHAR(3), 
	Buchungsklasse_ID 	CHAR(1), 
	Zeit_ID           	DATE, 
	E_Anzahl           	INT, 
	PRIMARY KEY(Zielflughafen_ID, Startflughafen_ID, Flugzeugtyp_ID, 
	            Fluglinie_ID, Buchungsklasse_ID, Zeit_ID)
);

-- ETL: Dimensionstabellen erstellen

CREATE TABLE s.D_Zielflughafen
(
	Zielflughafen_ID     CHAR(3) PRIMARY KEY,
	Zielflughafen_Name   VARCHAR(40),
	Zielflughafen_Ort    TEXT,
	Zielflughafen_Land   TEXT,
	Zielflughafen_Staat  TEXT
);

CREATE TABLE s.D_Startflughafen
(
	Startflughafen_ID     CHAR(3) PRIMARY KEY,
	Startflughafen_Name   TEXT,
	Startflughafen_Ort    TEXT,
	Startflughafen_Land   TEXT,
	Startflughafen_Staat  TEXT
);

CREATE TABLE s.D_Flugzeugtyp
(
	Flugzeugtyp_ID     CHAR(3) PRIMARY KEY,
	Flugzeugtyp_DESC   TEXT,
	Hersteller         TEXT
);

CREATE TABLE s.D_Fluglinie
(
	Fluglinie_ID   CHAR(3) PRIMARY KEY,
	Fluglinie_DESC TEXT
);

CREATE TABLE s.D_Buchungsklasse
(
	Buchungsklasse_ID     CHAR(1) PRIMARY KEY,
	Buchungsklasse_DESC   TEXT
);

CREATE TABLE s.D_Zeit 
(
    Tag_ID      INT PRIMARY KEY, 
    Tag_DESC    DATE,
    Monat_ID    SMALLINT, 
    Monat_DESC  TEXT, 
    Jahr_ID     INT, 
    Jahr_Desc   INT
);

-- ETL: Dimension Datum

   --> Extraktion
CREATE TABLE s.T_D_Zeit
(
    Tag_ID      SERIAL PRIMARY KEY, 
    Tag_DESC    DATE,
    Monat_ID    SMALLINT,
    Monat_DESC  TEXT, 
    Jahr_ID     INT, 
    Jahr_Desc   INT
);
INSERT INTO s.E_Buchungen 
	(SELECT   Zielflughafen_ID, Startflughafen_ID, Flugzeugtyp_ID, 
	          Fluglinie_ID, Buchungsklasse_ID, Datum, COUNT(*) AS E_Anzahl 
	 FROM     s.Teilstrecke ts, s.Flugintervall fi, s.Flugzeug fz, s.Flug f, s.Buchung b
	 WHERE    ts.Teilstrecke_ID = fi.Teilstrecke_ID AND
              fi.Flug_ID = f.Flug_ID AND
              fz.flugzeug_id = f.flugzeug_id AND
              fi.Flugintervall_ID = b.Flugintervall_ID 
     GROUP BY Zielflughafen_ID, Startflughafen_ID, Flugzeugtyp_ID, Fluglinie_ID, Buchungsklasse_ID, Datum);

   --> Transformation: Selektion des Datums aus E_Buchungen, Einfügen T_D_Zeit
INSERT INTO s.T_D_Zeit (Tag_DESC) (SELECT Zeit_ID FROM s.E_Buchungen);

   --> Transformation: Ergänzen fehlender Tag/Monat/Jahr-Werte in T_D_Zeit, IDs beliebig (sofern bzgl. nächsthöherer Hierarchiestufe eindeutig)
UPDATE s.T_D_Zeit SET Monat_DESC = regexp_replace(Tag_DESC::text, '-\d\d$', '');
UPDATE s.T_D_Zeit SET Jahr_DESC  = regexp_replace(Tag_DESC::text, '-\d\d-\d+$', '')::int;
UPDATE s.T_D_Zeit SET Monat_ID   = extract(year from Tag_DESC) - 1900 + 1000 * extract(MONTH from tag_desc); 
UPDATE s.T_D_Zeit SET Jahr_ID    = extract(year from Tag_DESC) - 1900;

   --> Laden
INSERT INTO s.D_Zeit (SELECT * FROM s.T_D_Zeit) ON CONFLICT DO NOTHING;

-- ETL: Dimension Startflughafen
   --> E
CREATE TABLE s.T_D_Startflughafen
(
	Startflughafen_ID     CHAR(3) PRIMARY KEY,
	Startflughafen_Name   VARCHAR(40),
	Startflughafen_Ort    TEXT,
	Startflughafen_Land   TEXT,
	Startflughafen_Staat  TEXT
);
INSERT INTO s.T_D_Startflughafen (SELECT * FROM  s.Flughafen);
   --> T
UPDATE s.T_D_Startflughafen SET Startflughafen_Staat = regexp_replace(Startflughafen_Staat, '\s+$', '');
   --> L
INSERT INTO s.D_Startflughafen (SELECT * FROM  s.T_D_Startflughafen) ON CONFLICT DO NOTHING;

-- ETL: Dimension Zielflughafen
   --> E
CREATE TABLE s.T_D_Zielflughafen
(
	Zielflughafen_ID     CHAR(3) PRIMARY KEY,
	Zielflughafen_Name   VARCHAR(40),
	Zielflughafen_Ort    TEXT,
	Zielflughafen_Land   TEXT,
	Zielflughafen_Staat  TEXT
);
INSERT INTO s.T_D_Zielflughafen (SELECT * FROM  s.Flughafen);
   --> T
UPDATE s.T_D_Zielflughafen SET Zielflughafen_Staat = regexp_replace(Zielflughafen_Staat, '\s+$', '');
   --> L
INSERT INTO s.D_Zielflughafen (SELECT * FROM  s.T_D_Zielflughafen) ON CONFLICT DO NOTHING;

-- ETL: Dimension Fluglinie
   --> E
CREATE TABLE s.T_D_Fluglinie
(
	Fluglinie_ID   CHAR(3) PRIMARY KEY,
	Fluglinie_DESC TEXT
);
INSERT INTO s.T_D_Fluglinie (SELECT * FROM  s.Fluglinie);
   --> T
UPDATE s.T_D_Fluglinie SET Fluglinie_ID = regexp_replace(Fluglinie_ID, '\s+$', '');
UPDATE s.T_D_Fluglinie SET Fluglinie_DESC = regexp_replace(Fluglinie_DESC, '\s+$', '');
   --> L
INSERT INTO s.D_Fluglinie (SELECT * FROM  s.T_D_Fluglinie) ON CONFLICT DO NOTHING;

-- ETL: Dimension Buchungsklasse
   --> E
CREATE TABLE s.T_D_Buchungsklasse
(
	Buchungsklasse_ID     CHAR(1) PRIMARY KEY,
	Buchungsklasse_DESC   TEXT
);
INSERT INTO s.T_D_Buchungsklasse (SELECT * FROM  s.Buchungsklasse);
   --> T
UPDATE s.T_D_Buchungsklasse SET Buchungsklasse_DESC = regexp_replace(Buchungsklasse_DESC, '\s+$', '');
   --> L
INSERT INTO s.D_Buchungsklasse (SELECT * FROM  s.T_D_Buchungsklasse) ON CONFLICT DO NOTHING;

-- ETL: Dimension Flugzeugtyp
   --> E
CREATE TABLE s.T_D_Flugzeugtyp
(
	Flugzeugtyp_ID     CHAR(3) PRIMARY KEY,
	Flugzeugtyp_DESC   TEXT,
	Hersteller         TEXT
);
INSERT INTO s.T_D_Flugzeugtyp (SELECT Flugzeugtyp_ID, Beschreibung, Hersteller FROM  s.Flugzeugtyp);
   --> T
   --> L
INSERT INTO s.D_Flugzeugtyp (SELECT * FROM  s.T_D_Flugzeugtyp) ON CONFLICT DO NOTHING;

-- ETL: Faktentabelle
   --> E
CREATE TABLE s.T_F_Buchungen 
(
	Zielflughafen_ID  	CHAR(3), 
	Startflughafen_ID 	CHAR(3), 
	Flugzeugtyp_ID     	CHAR(3), 
	Fluglinie_ID       	CHAR(3), 
	Buchungsklasse_ID 	CHAR(1), 
	Zeit_ID           	INT, 
	F_Anzahl           	INT, 
	PRIMARY KEY(Zielflughafen_ID, Startflughafen_ID, Flugzeugtyp_ID, 
	            Fluglinie_ID, Buchungsklasse_ID, Zeit_ID)
);
CREATE TABLE s.F_Buchungen 
(
	Zielflughafen_ID  	CHAR(3) REFERENCES s.D_Zielflughafen (Zielflughafen_ID), 
	Startflughafen_ID 	CHAR(3) REFERENCES s.D_Startflughafen (Startflughafen_ID), 
	Flugzeugtyp_ID     	CHAR(3) REFERENCES s.D_Flugzeugtyp (Flugzeugtyp_ID), 
	Fluglinie_ID       	CHAR(3) REFERENCES s.D_Fluglinie (Fluglinie_ID), 
	Buchungsklasse_ID 	CHAR(1) REFERENCES s.D_Buchungsklasse (Buchungsklasse_ID), 
	Zeit_ID           	INT     REFERENCES s.D_Zeit (Tag_ID), 
	F_Anzahl           	INT, 
	PRIMARY KEY(Zielflughafen_ID, Startflughafen_ID, Flugzeugtyp_ID, 
	            Fluglinie_ID, Buchungsklasse_ID, Zeit_ID)
);
   --> E/T: Datentyp Zeit_ID konvertieren
INSERT INTO s.T_F_Buchungen 
	(SELECT Zielflughafen_ID, Startflughafen_ID, Flugzeugtyp_ID, Fluglinie_ID, Buchungsklasse_ID,
	 Tag_ID, E_Anzahl 
	 FROM s.E_Buchungen e INNER JOIN s.T_D_Zeit t ON e.Zeit_ID = t.Tag_DESC);
   --> L: Laden, mit Prüfung referentieller Integrität
INSERT INTO s.F_Buchungen (SELECT * FROM s.T_F_Buchungen) ON CONFLICT DO NOTHING;

 
-- ETL: Extraktions- und Transformationstabellen löschen
DROP TABLE IF EXISTS s.T_D_Buchungsklasse, s.T_D_Fluglinie, s.T_D_Flugzeugtyp, s.T_D_Startflughafen, s.T_D_Zielflughafen, s.T_D_Zeit, s.T_F_Buchungen CASCADE;
DROP TABLE IF EXISTS s.E_Buchungen;

-- ETL: Regelmäßig auszuführende Teile ggf. in separates ETL-Skript ausgliedern


-- Berichte: Anfragen an Dimensionstabelle

CREATE VIEW s.bericht1 AS

SELECT   DISTINCT Startflughafen_Staat
FROM     s.D_Startflughafen
WHERE	 Startflughafen_Land = 'USA';
 

-- Berichte: Anfragen an Dimensions- und Faktentabellen
 
CREATE VIEW s.bericht2 AS

SELECT   Monat_DESC, SUM(F_Anzahl) AS Buchungsanzahl
FROM     s.F_Buchungen F INNER JOIN s.D_Zeit Z           ON F.Zeit_ID = Z.Tag_ID
WHERE    Monat_DESC = '2005-05' 
GROUP BY Monat_DESC;
 
 

CREATE VIEW s.bericht3 AS

SELECT   Tag_DESC, Buchungsklasse_DESC, SUM(F_Anzahl) AS Buchungsanzahl
FROM     s.F_Buchungen F INNER JOIN s.D_Zeit Z           ON F.Zeit_ID = Z.Tag_ID
                                   INNER JOIN s.D_Buchungsklasse B ON F.Buchungsklasse_ID = B.Buchungsklasse_ID
WHERE    Monat_DESC = '2005-05'
GROUP BY Tag_DESC, Buchungsklasse_DESC ORDER BY Tag_DESC, Buchungsklasse_DESC;
 
 

CREATE VIEW s.bericht4 AS

SELECT   Flugzeugtyp_DESC, Tag_DESC, SUM(F_Anzahl) AS Buchungsanzahl
FROM     s.F_Buchungen F INNER JOIN s.D_Zeit Z           ON F.Zeit_ID = Z.Tag_ID
                                   INNER JOIN s.D_Buchungsklasse B ON F.Buchungsklasse_ID = B.Buchungsklasse_ID
                                   INNER JOIN s.D_Flugzeugtyp    T ON F.Flugzeugtyp_ID = T.Flugzeugtyp_ID
WHERE    Monat_DESC = '2005-05' AND
         Hersteller = 'BOEING' AND
		 Buchungsklasse_DESC = 'ECONOMY CLASS'
GROUP BY Flugzeugtyp_DESC, Tag_DESC;



CREATE VIEW s.bericht5 AS

WITH
  Buchungen_Startflughaefen_je_Staat AS 
  (SELECT   Startflughafen_Staat, SUM(F_Anzahl) AS Buchungen_je_Staat
   FROM     s.F_Buchungen F INNER JOIN s.D_Startflughafen S ON F.Startflughafen_ID = S.Startflughafen_ID
   WHERE    Startflughafen_Land = 'USA'
   GROUP BY Startflughafen_Staat),

  Buchungen_Startflughafen_USA AS
  (SELECT   SUM(F_Anzahl) AS Buchungen_USA
   FROM     s.F_Buchungen F INNER JOIN s.D_Startflughafen S ON F.Startflughafen_ID = S.Startflughafen_ID
   WHERE    Startflughafen_Land = 'USA')

SELECT Startflughafen_Staat, Buchungen_je_Staat, Buchungen_USA, round(Buchungen_je_Staat::decimal/Buchungen_USA*100, 2)
FROM   Buchungen_Startflughaefen_je_Staat, Buchungen_Startflughafen_USA;



CREATE VIEW s.bericht6 AS

SELECT   Fluglinie_DESC, SUM(F_Anzahl) AS Buchungsanzahl
FROM     s.F_Buchungen F INNER JOIN s.D_Zeit Z           ON F.Zeit_ID = Z.Tag_ID
                                   INNER JOIN s.D_Fluglinie L      ON F.Fluglinie_ID = L.Fluglinie_ID
                                   INNER JOIN s.D_Startflughafen A ON F.Startflughafen_ID = A.Startflughafen_ID
                                   INNER JOIN s.D_Zielflughafen B  ON F.Zielflughafen_ID = B.Zielflughafen_ID
WHERE    Jahr_DESC IN ('2004','2005','2006') AND
         Startflughafen_Ort = 'ATLANTA' AND Zielflughafen_Ort = 'WASHINGTON'
GROUP BY Fluglinie_DESC ORDER BY Buchungsanzahl DESC LIMIT 3;



CREATE VIEW s.bericht7 AS

WITH
  Teilstrecke_AT_WA AS 
  (SELECT   Fluglinie_DESC, SUM(F_Anzahl) AS Buchungsanzahl_AT_WA
   FROM     s.F_Buchungen F INNER JOIN s.D_Zeit Z           ON F.Zeit_ID = Z.Tag_ID
                                      INNER JOIN s.D_Fluglinie L      ON F.Fluglinie_ID = L.Fluglinie_ID
                                      INNER JOIN s.D_Startflughafen A ON F.Startflughafen_ID = A.Startflughafen_ID
                                      INNER JOIN s.D_Zielflughafen B  ON F.Zielflughafen_ID = B.Zielflughafen_ID
   WHERE    Jahr_DESC IN ('2004','2005','2006') AND
            Startflughafen_Ort = 'ATLANTA' AND Zielflughafen_Ort = 'WASHINGTON' AND
            Fluglinie_DESC = 'DELTA AIR LINES INC.'
   GROUP BY Fluglinie_DESC),
   
  Buchungen_je_Teilstrecke AS
  (SELECT   F.Startflughafen_ID, F.Zielflughafen_ID, SUM(F_Anzahl) AS Buchungsanzahl_Teilstrecke
   FROM     s.F_Buchungen F INNER JOIN s.D_Zeit Z           ON F.Zeit_ID = Z.Tag_ID
                                      INNER JOIN s.D_Fluglinie L      ON F.Fluglinie_ID = L.Fluglinie_ID
                                      INNER JOIN s.D_Startflughafen A ON F.Startflughafen_ID = A.Startflughafen_ID
                                      INNER JOIN s.D_Zielflughafen B  ON F.Zielflughafen_ID = B.Zielflughafen_ID
   WHERE    Jahr_DESC IN ('2004','2005','2006') AND
            Fluglinie_DESC = 'DELTA AIR LINES INC.'
   GROUP BY F.Startflughafen_ID, F.Zielflughafen_ID),

   Durchschnitt_Buchungen_je_Teilstrecke AS
   (SELECT AVG(Buchungsanzahl_Teilstrecke) AS Durchschnitt_Buchungsanzahl_Teilstrecke
    FROM   Buchungen_je_Teilstrecke)

SELECT Buchungsanzahl_AT_WA, Durchschnitt_Buchungsanzahl_Teilstrecke, round(Buchungsanzahl_AT_WA::decimal/Durchschnitt_Buchungsanzahl_Teilstrecke,2)
FROM   Teilstrecke_AT_WA, Durchschnitt_Buchungen_je_Teilstrecke;

