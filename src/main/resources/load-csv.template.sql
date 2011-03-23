SET search_path TO webshop;
SET datestyle TO 'DMY';

--   Voraussetzungen fuer COPY:
--   1) Superuser der Datenbank
--   2) Absoluter Pfadname fuer Datei oder relativ zu %PGDATA%
		
COPY benutzer
	FROM '@CSVDIR@/benutzer.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY adresse
	FROM '@CSVDIR@/adresse.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY artikel
	FROM '@CSVDIR@/artikel.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY lager
	FROM '@CSVDIR@/lager.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);
		
COPY bestellung
	FROM '@CSVDIR@/bestellung.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY bestellposition
	FROM '@CSVDIR@/bestellposition.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY rolle
	FROM '@CSVDIR@/rolle.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);
		
COPY rolle_has_benutzer
	FROM '@CSVDIR@/rolle_has_benutzer.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY kategorie
	FROM '@CSVDIR@/kategorie.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);
		
COPY kategorie_has_artikel
	FROM '@CSVDIR@/kategorie_has_artikel.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY produktbewertung
	FROM '@CSVDIR@/produktbewertung.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);