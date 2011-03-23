SET search_path TO webshop;

CREATE TABLE kategorie (
  idkategorie SERIAL  NOT NULL ,
  kategorie_idkategorie INTEGER  ,
  bezeichnung VARCHAR(256)   NOT NULL   ,
PRIMARY KEY(idkategorie)  ,
  FOREIGN KEY(kategorie_idkategorie)
    REFERENCES kategorie(idkategorie));


CREATE INDEX katogerie_FKIndex1 ON kategorie (kategorie_idkategorie);


CREATE INDEX IFK_Rel_05 ON kategorie (kategorie_idkategorie);


CREATE TABLE rolle (
  idrolle SERIAL  NOT NULL ,
  rolle VARCHAR(64)   NOT NULL   ,
PRIMARY KEY(idrolle));


CREATE TABLE benutzer (
  idbenutzer SERIAL NOT NULL,
  email VARCHAR(128) NOT NULL UNIQUE ,
  vorname VARCHAR(256)   NOT NULL ,
  nachname VARCHAR(256)   NOT NULL ,
  kontonummer VARCHAR(20)    ,
  bankleitzahl VARCHAR(20)    ,
  passwort VARCHAR(64)   NOT NULL ,
  newsletter BOOLEAN NOT NULL,
  erstellungsdatum TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL ,
  aenderungsdatum TIMESTAMP      ,
PRIMARY KEY(idbenutzer));




CREATE TABLE adresse (
  idadresse SERIAL  NOT NULL ,
  benutzer_idbenutzer INTEGER   NOT NULL ,
  postleitzahl CHAR(5)  NOT NULL ,
  ort VARCHAR(128)   NOT NULL ,
  strasse VARCHAR(128)   NOT NULL ,
  hausnummer varchar(5)   NOT NULL ,
  name VARCHAR(256)    ,
  vorname VARCHAR(256)      ,
  art CHAR(1) NOT NULL,
PRIMARY KEY(idadresse)  ,
  FOREIGN KEY(benutzer_idbenutzer)
    REFERENCES benutzer(idbenutzer));


CREATE INDEX adresse_FKIndex1 ON adresse (benutzer_idbenutzer);


CREATE INDEX IFK_Rel_12 ON adresse (benutzer_idbenutzer);


CREATE TABLE artikel (
  idartikel SERIAL  NOT NULL ,
  --kategorie_idkategorie INTEGER   NOT NULL ,
  bezeichnung VARCHAR(256)   NOT NULL ,
  preis FLOAT   NOT NULL ,
  erstellungsdatum TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL   ,
  aenderungsdatum TIMESTAMP    ,
  imSortiment BOOL   NOT NULL   ,
PRIMARY KEY(idartikel)
  --FOREIGN KEY(kategorie_idkategorie)REFERENCES kategorie(idkategorie)
  );


CREATE TABLE kategorie_has_artikel (
  idkategoriehasartikel SERIAL NOT NULL,
  artikel_idartikel INTEGER  NOT NULL ,
  kategorie_idkategorie INTEGER   NOT NULL ,
  PRIMARY KEY(idkategoriehasartikel),
  FOREIGN KEY(kategorie_idkategorie)
    REFERENCES kategorie(idkategorie),
  FOREIGN KEY(artikel_idartikel)
    REFERENCES artikel(idartikel));
    

--CREATE INDEX artikel_FKIndex1 ON artikel (kategorie_idkategorie);


--CREATE INDEX IFK_Rel_04 ON artikel (kategorie_idkategorie);


CREATE TABLE lager (
  idlager SERIAL  NOT NULL ,
  artikel_idartikel INTEGER   NOT NULL ,
  farbe VARCHAR(10)   ,
  groesse VARCHAR(10)    ,
  bestand_ist INTEGER   NOT NULL   ,
  bestand_min INTEGER   NOT NULL   ,
PRIMARY KEY(idlager)  ,
  FOREIGN KEY(artikel_idartikel)
    REFERENCES artikel(idartikel));


CREATE INDEX lager_FKIndex1 ON lager (artikel_idartikel);


CREATE INDEX IFK_Rel_06 ON lager (artikel_idartikel);


CREATE TABLE bestellung (
  idbestellung SERIAL  NOT NULL ,
  benutzer_idbenutzer INTEGER  NOT NULL ,
  bestellstatus VARCHAR(50)    ,
  zahlungsart VARCHAR(20)    ,
  gesamtpreis FLOAT DEFAULT '0.0' NOT NULL  ,
  erstellungsdatum TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL    ,
  aenderungsdatum TIMESTAMP      ,
PRIMARY KEY(idbestellung)  ,
  FOREIGN KEY(benutzer_idbenutzer)
    REFERENCES benutzer(idbenutzer));


CREATE INDEX bestellung_FKIndex1 ON bestellung (benutzer_idbenutzer);


CREATE INDEX IFK_Rel_07 ON bestellung (benutzer_idbenutzer);


CREATE TABLE rolle_has_benutzer (
	idrollehasbenutzer SERIAL NOT NULL,
  rolle_idrolle INTEGER   NOT NULL ,
  benutzer_idbenutzer INTEGER   NOT NULL   ,
PRIMARY KEY(idrollehasbenutzer)    ,
  FOREIGN KEY(rolle_idrolle)
    REFERENCES rolle(idrolle),
  FOREIGN KEY(benutzer_idbenutzer)
    REFERENCES benutzer(idbenutzer));


CREATE INDEX rolle_has_benutzer_FKIndex1 ON rolle_has_benutzer (rolle_idrolle);
CREATE INDEX rolle_has_benutzer_FKIndex2 ON rolle_has_benutzer (benutzer_idbenutzer);


CREATE INDEX IFK_Rel_13 ON rolle_has_benutzer (rolle_idrolle);
CREATE INDEX IFK_Rel_14 ON rolle_has_benutzer (benutzer_idbenutzer);


CREATE TABLE bestellposition (
  idbestellposition SERIAL  NOT NULL ,
  position INTEGER ,
  lager_idlager INTEGER   NOT NULL ,
  bestellung_idbestellung INTEGER   NOT NULL ,
  menge INTEGER   NOT NULL ,
  erstellungsdatum TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL ,
  aenderungsdatum TIMESTAMP      ,
PRIMARY KEY(idbestellposition)    ,
  FOREIGN KEY(bestellung_idbestellung)
    REFERENCES bestellung(idbestellung),
  FOREIGN KEY(lager_idlager)
    REFERENCES lager(idlager));


CREATE INDEX bestellposition_FKIndex1 ON bestellposition (bestellung_idbestellung);
CREATE INDEX bestellposition_FKIndex2 ON bestellposition (lager_idlager);


CREATE INDEX IFK_Rel_08 ON bestellposition (bestellung_idbestellung);
CREATE INDEX IFK_Rel_15 ON bestellposition (lager_idlager);


CREATE TABLE produktbewertung (
  idproduktbewertung SERIAL  NOT NULL ,
  artikel_idartikel INTEGER   NOT NULL ,
  benutzer_idbenutzer INTEGER   NOT NULL ,
  bewertung INTEGER   NOT NULL ,
  kommentar VARCHAR(512)    ,
  erstellungsdatum TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL ,
PRIMARY KEY(idproduktbewertung)    ,
  FOREIGN KEY(benutzer_idbenutzer)
    REFERENCES benutzer(idbenutzer),
  FOREIGN KEY(artikel_idartikel)
    REFERENCES artikel(idartikel));


CREATE INDEX produktbewertung_FKIndex1 ON produktbewertung (benutzer_idbenutzer);
CREATE INDEX produktbewertung_FKIndex2 ON produktbewertung (artikel_idartikel);


CREATE INDEX IFK_Rel_02 ON produktbewertung (benutzer_idbenutzer);
CREATE INDEX IFK_Rel_03 ON produktbewertung (artikel_idartikel);



