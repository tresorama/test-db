insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 16:20:39.488', '[blank]', 1, 'CREATE TABLE IF NOT EXISTS rapporto_clienti(
  id_rapporto int NOT NULL AUTO_INCREMENT,
  id_dipendente int NOT NULL,
  id_cliente int NOT NULL,
  PRIMARY KEY(id_rapporto)
);

CREATE TABLE IF NOT EXISTS uffici(
  id_ufficio int NOT NULL AUTO_INCREMENT,
  nome varchar(255) NOT NULL UNIQUE,
  PRIMARY KEY(id_ufficio)
);

CREATE TABLE IF NOT EXISTS dipendenti(
  id_dipendente int UNSIGNED NOT NULL AUTO_INCREMENT REFERENCES rapporto_clienti(id_dipendente), 
  nome varchar(255) NOT NULL, 
  cognome varchar(255) NOT NULL, 
  data_assunzione date NOT NULL, 
  stipendio decimal NOT NULL CHECK(stipendio >= 1200 AND stipendio <= 5000),
  telefono varchar(10) NOT NULL UNIQUE,
  id_ufficio int REFERENCES uffici(id_ufficio),
  PRIMARY KEY(id_dipendente)
);

CREATE TABLE IF NOT EXISTS clienti(
  id_cliente int UNSIGNED NOT NULL AUTO_INCREMENT REFERENCES repporto_clienti(id_cliente),
  denominazione varchar(255) NOT NULL,
  p_iva varchar(16) NOT NULL UNIQUE,
  indirizzo varchar(255) NOT NULL,
  telefono varchar(10) NOT NULL UNIQUE,
  PRIMARY KEY(id_cliente)
);
', '01_create_tables', '2022-11-12 19:17:32', 12);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 17:09:13.276', '[blank]', 2, '/* 
 * Create a record
 */

INSERT INTO clienti 
(denominazione, p_iva, indirizzo, telefono)
VALUES
("Xyz Casa", "2542376584", "Via roma, Mantova", "0543566969"),
("Abc Informa", "1542376584", "Via mauri, Parma", "0511523954");









', '03_create_record_cliente', '2022-11-12 18:37:05', 8);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 17:16:07.042', '[blank]', 3, 'DROP TABLE clienti, dipendenti, rapporto_clienti;






', '02_drop_tables', '2022-11-12 18:36:34', 2);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 17:53:05.263', '[blank]', 4, 'SELECT *
FROM dipendenti
WHERE dipendenti.stipendio > 1900;









', '04_r_', '2022-11-12 18:46:27', 5);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 18:03:51.428', '[blank]', 5, '
INSERT INTO dipendenti 
(nome, cognome, data_assunzione, stipendio, telefono, id_ufficio)
VALUES
("Luca", "Rossi", "2022-10-12", 2000, "3822347688", 1),
("Mario", "Verdi", "2022-07-27", 1600, "3491847658", 2),
("Paola", "Blu", "2018-03-12", 1900, "3497637618", 2),
("Maria", "Maggio", "2017-07-20", 1300, "3495712658", 3);








', '03_create_record_dipendenti', '2022-11-12 19:24:46', 3);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 18:12:47.596', '[blank]', 6, 'SELECT * 
FROM dipendenti
WHERE dipendenti.nome IN (''Luca'', ''Paolo'');

SELECT * 
FROM dipendenti
WHERE dipendenti.data_assunzione BETWEEN "2022-01-01" AND "2022-06-01";







', '05_r_IN_BETWEEN', '2022-11-12 18:46:32', 4);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 18:21:54.417', '[blank]', 7, 'SELECT * 
FROM dipendenti
ORDER BY dipendenti.stipendio DESC;

SELECT * 
FROM dipendenti
ORDER BY dipendenti.data_assunzione ASC;

SELECT * 
FROM dipendenti
ORDER BY dipendenti.nome, dipendenti.cognome ASC;









', '06_r_ORDER_BY', '2022-11-12 18:46:40', 5);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 18:27:36.348', '[blank]', 8, 'SELECT * 
FROM dipendenti
ORDER BY dipendenti.stipendio DESC
LIMIT 1;

SELECT * 
FROM dipendenti
ORDER BY dipendenti.stipendio DESC
LIMIT 1, 2;









', '07_r_LIMIT', '2022-11-12 18:46:46', 5);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 18:38:41.018', '[blank]', 9, 'SELECT DISTINCT dipendenti.mansione
FROM dipendenti;

SELECT COUNT(dipendenti.mansione)
FROM dipendenti;

SELECT COUNT(DISTINCT dipendenti.mansione)
FROM dipendenti;










', '08_r_DISTINCT', '2022-11-12 18:46:52', 2);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 18:43:20.843', '[blank]', 10, 'UPDATE clienti
SET clienti.indirizzo = ''Viale Magenta, Milano''
WHERE clienti.id_cliente LIKE 9;










', '09_u_', '2022-11-12 18:55:45', 2);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 18:51:34.007', '[blank]', 11, 'DELETE 
FROM dipendenti
WHERE dipendenti.id_dipendente LIKE 7;









', '10_d_', '2022-11-12 18:51:34.007', 1);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 19:18:00.880', '[blank]', 12, '
INSERT INTO uffici 
(nome)
VALUES
("Amministrazione"),
("Servizio Clienti"),
("Risorse Umane"),
("Vendite");







', '03_create_record_uffici', '2022-11-12 19:18:00.880', 1);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-12 19:26:02.598', '[blank]', 13, 'SELECT dipendenti.id_dipendente, dipendenti.nome, uffici.nome
FROM dipendenti RIGHT JOIN uffici
ON dipendenti.id_ufficio LIKE uffici.id_ufficio;









', '11_r_JOIN', '2022-11-13 10:00:01', 3);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-13 10:12:28.456', '[blank]', 14, 'SELECT d.id_dipendente, d.nome, d.cognome
FROM dipendenti AS d;

SELECT d.id_dipendente, d.nome, d.cognome, u.nome AS ''nome_ufficio''
FROM dipendenti AS d INNER JOIN uffici AS u
ON d.id_ufficio LIKE u.id_ufficio;

SELECT 
  d.nome,
  d.cognome, 
  u.nome AS ''nome_ufficio'',
  DATE_FORMAT(d.data_assunzione, ''%e %M, %Y'') AS ''giorno_assunzione''
FROM dipendenti AS d INNER JOIN uffici AS u
ON d.id_ufficio LIKE u.id_ufficio;






', '12_r_ALIAS', '2022-11-13 10:17:54', 2);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-13 10:22:15.301', '[blank]', 15, 'SELECT 
  u.nome AS ''nome_ufficio'',
  COUNT(d.id_dipendente) AS ''numero_dipendenti''
FROM uffici AS u 
LEFT JOIN dipendenti AS d
ON d.id_ufficio LIKE u.id_ufficio
GROUP BY u.nome;

SELECT 
  u.nome AS ''nome_ufficio'',
  COUNT(d.id_dipendente) AS ''numero_dipendenti''
FROM uffici AS u 
LEFT JOIN dipendenti AS d
ON d.id_ufficio LIKE u.id_ufficio
GROUP BY u.nome
HAVING numero_dipendenti > 0;', '13_r_GROUP_BY_n_HAVING', '2022-11-13 10:22:15.301', 1);
insert into `favorite_query` (`connectionHash`, `createdAt`, `database`, `id`, `text`, `title`, `updatedAt`, `version`) values ('DEPRECATED', '2022-11-13 10:36:40.107', '[blank]', 16, 'CREATE VIEW view_uffici_per_dipendenti AS
SELECT 
  u.nome AS ''ufficio_nome'',
  COUNT(d.id_dipendente) AS ''numero_dipendenti''
FROM uffici AS u
INNER JOIN dipendenti AS d
ON d.id_ufficio = u.id_ufficio
GROUP BY ufficio_nome
HAVING numero_dipendenti > 0
ORDER BY numero_dipendenti DESC
;








', '14_v_CREATE_VIEW', '2022-11-13 10:36:40.107', 1);
