SET search_path TO webshop;
SET datestyle TO 'DMY';

--   Voraussetzungen fuer COPY:
--   1) Superuser der Datenbank
--   2) Absoluter Pfadname fuer Datei oder relativ zu %PGDATA%
		
COPY benutzer
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/benutzer.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY adresse
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/adresse.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY artikel
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/artikel.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY lager
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/lager.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);
		
COPY bestellung
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/bestellung.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY bestellposition
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/bestellposition.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY rolle
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/rolle.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);
		
COPY rolle_has_benutzer
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/rolle_has_benutzer.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY kategorie
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/kategorie.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);
		
COPY kategorie_has_artikel
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/kategorie_has_artikel.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY produktbewertung
	FROM 'D:/swe/workspace/webshopDB/src/test/resources/produktbewertung.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);