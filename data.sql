PRAGMA foreign_keys = ON;

--buch
INSERT INTO buch  VALUES (9783423087332, 'Steppenwolf', 1927,'dtv',0.5);
INSERT INTO buch VALUES (9783518368934, 'Homo Faber',1957,'Suhrkamp',0.5);
INSERT INTO buch VALUES (9783257204566, 'Der Vorleser',1995,'Diogenes',0.75);
INSERT INTO buch VALUES(9783596182964, 'Das Parfum', 1985,'Fischer',0.75);
INSERT INTO buch VALUES(9783423135719,'Die Verwandlung', 1915, 'dtv',0.30);

--exemplar
INSERT INTO exemplar VALUES(1,9783423087332, 'A-01-3');
INSERT INTO exemplar VALUES(2,9783423087332,'A-01-4');
INSERT INTO exemplar VALUES(3,9783518368934,'A-02-1');
INSERT INTO exemplar VALUES(4,9783257204566,'B-01-7');
INSERT INTO exemplar VALUES(5,9783596182964, 'B-02-2');
INSERT INTO exemplar VALUES(6,9783423135719, 'A-03-1');

--mitglied
INSERT INTO mitglied(mitglied_id,nachname, vorname, geburtsdatum, email) VALUES('1','Berger','Jonas','2001-04-12','jonas.berger@mail.de');
INSERT INTO mitglied(mitglied_id,nachname, vorname, geburtsdatum, email, beitritt_datum) VALUES('2','Sommer','Klara','1985-11-30', 'klara.sommer@web.de','2019-03-15');
INSERT INTO mitglied(mitglied_id,nachname, vorname, geburtsdatum, email) VALUES('3','Hartmann','Lea','1998-07-08','lea.hartmann@example.com');

--ausleihe
INSERT INTO ausleihe VALUES(1,1,1,'2026-05-01','2026-05-10');
INSERT INTO ausleihe VALUES(2,3,2,'2026-05-05',NULL);
INSERT INTO ausleihe VALUES(3,4,1,'2026-05-12',NULL);
INSERT INTO ausleihe VALUES(4,6,3,'2026-04-20','2026-04-28');
