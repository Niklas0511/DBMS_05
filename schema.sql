PRAGMA foreign_keys = ON;
CREATE TABLE buch (
	isbn	UNSIGNED NUMERIC(13,0) PRIMARY KEY,
	title	TEXT	Not NULL,
	erscheinungsjahr	YEAR Not NULL,
	verlag	TEXT NOT NULL,
	tagesgebühr	UNSIGNED NUMERIC(2,2) NOT NULL
);
CREATE TABLE exemplar(
	exemplar_id	UNSIGNED INTEGER PRIMARY KEY,
	isbn	UNSIGNED NUMERIC(13,0) NOT NULL,
	standort TEXT NOT NULL,

	FOREIGN KEY (isbn) REFERENCES buch(isbn)
        ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE mitglied (
	mitglied_id UNSIGNED INTEGER PRIMARY KEY,
	nachname	TEXT NOT NULL,
	vorname		TEXT NOT NULL,
	geburtsdatum	DATE NOT NULL,
	email		TEXT NOT NULL,
	beitritt_datum	DATE DEFAULT CURRENT_DATE
);
CREATE TABLE ausleihe (
    ausleihe_id      INTEGER  PRIMARY KEY,
    exemplar_id      INTEGER  NOT NULL,
    mitglied_id      INTEGER  NOT NULL,
    ausleihe_datum   DATE     NOT NULL,
    rueckgabe_datum  DATE,
    FOREIGN KEY (exemplar_id) REFERENCES exemplar(exemplar_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (mitglied_id) REFERENCES mitglied(mitglied_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CHECK (rueckgabe_datum IS NULL OR rueckgabe_datum >= ausleihe_datum)
);
