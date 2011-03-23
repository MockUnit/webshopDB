SET search_path TO webshop;

ALTER SEQUENCE adresse_idadresse_seq RESTART WITH 20;
ALTER SEQUENCE benutzer_idbenutzer_seq RESTART WITH 20;
ALTER SEQUENCE artikel_idartikel_seq RESTART WITH 20;
ALTER SEQUENCE bestellung_idbestellung_seq RESTART WITH 20;
ALTER SEQUENCE bestellposition_idbestellposition_seq RESTART WITH 20;
ALTER SEQUENCE lager_idlager_seq RESTART WITH 20;
ALTER SEQUENCE rolle_idrolle_seq RESTART WITH 20;
ALTER SEQUENCE kategorie_idkategorie_seq RESTART WITH 20;
ALTER SEQUENCE produktbewertung_idproduktbewertung_seq RESTART WITH 20;
ALTER SEQUENCE rolle_has_benutzer_idrollehasbenutzer_seq RESTART WITH 20;
ALTER SEQUENCE kategorie_has_artikel_idkategoriehasartikel_seq RESTART WITH 20;