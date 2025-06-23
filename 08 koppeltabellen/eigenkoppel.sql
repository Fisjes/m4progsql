

DROP TABLE IF EXISTS gesprek;
DROP TABLE IF EXISTS helpdeskmedewerker;
DROP TABLE IF EXISTS beller;

CREATE TABLE helpdeskmedewerker (
    id INT PRIMARY KEY,
    naam VARCHAR(50)
);

CREATE TABLE beller (
    id INT PRIMARY KEY,
    naam VARCHAR(50)
);

CREATE TABLE gesprek (
    id INT PRIMARY KEY,
    bellerid INT,
    medewerkerid INT,
    datum DATETIME,
    FOREIGN KEY (bellerid) REFERENCES beller(id),
    FOREIGN KEY (medewerkerid) REFERENCES helpdeskmedewerker(id)
);


INSERT INTO helpdeskmedewerker (id, naam) VALUES
(1, 'Anna'),
(2, 'Bram'),
(3, 'Claudia');

INSERT INTO beller (id, naam) VALUES
(1, 'Daan'),
(2, 'Eva'),
(3, 'Fay');

INSERT INTO gesprek (id, bellerid, medewerkerid, datum) VALUES
(1, 1, 2, '2025-06-23 09:00:00'),
(2, 2, 1, '2025-06-23 09:30:00'),
(3, 3, 3, '2025-06-23 10:00:00');


SELECT 
    gesprek.id AS gesprek_id,
    gesprek.datum,
    beller.naam AS beller_naam,
    helpdeskmedewerker.naam AS medewerker_naam
FROM gesprek
JOIN beller ON gesprek.bellerid = beller.id
JOIN helpdeskmedewerker ON gesprek.medewerkerid = helpdeskmedewerker.id;
