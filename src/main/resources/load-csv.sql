SET search_path TO webshop;
SET datestyle TO 'DMY';

--   Voraussetzungen fuer COPY:
--   1) Superuser der Datenbank
--   2) Absoluter Pfadname fuer Datei oder relativ zu %PGDATA%
		
COPY benutzer
	FROM 'C:/workspace/webshopDB/src/test/resources/benutzer.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY adresse
	FROM 'C:/workspace/webshopDB/src/test/resources/adresse.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY artikel
	FROM 'C:/workspace/webshopDB/src/test/resources/artikel.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY lager
	FROM 'C:/workspace/webshopDB/src/test/resources/lager.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);
		
COPY bestellung
	FROM 'C:/workspace/webshopDB/src/test/resources/bestellung.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY bestellposition
	FROM 'C:/workspace/webshopDB/src/test/resources/bestellposition.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY rolle
	FROM 'C:/workspace/webshopDB/src/test/resources/rolle.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);
		
COPY rolle_has_benutzer
	FROM 'C:/workspace/webshopDB/src/test/resources/rolle_has_benutzer.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY kategorie
	FROM 'C:/workspace/webshopDB/src/test/resources/kategorie.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);
		
COPY kategorie_has_artikel
	FROM 'C:/workspace/webshopDB/src/test/resources/kategorie_has_artikel.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);

COPY produktbewertung
	FROM 'C:/workspace/webshopDB/src/test/resources/produktbewertung.csv'
	WITH (
		DELIMITER ';',
		FORMAT csv,
		HEADER);