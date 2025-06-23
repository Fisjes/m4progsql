
DROP TABLE IF EXISTS kitten;
DROP TABLE IF EXISTS kat;


CREATE TABLE kat (
    id INT PRIMARY KEY,
    naam VARCHAR(100) NOT NULL
);


CREATE TABLE kitten (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(100) NOT NULL,
    mamaId INT,
    papaId INT,
    FOREIGN KEY (mamaId) REFERENCES kat(id),
    FOREIGN KEY (papaId) REFERENCES kat(id)
);


INSERT INTO kat (id, naam) VALUES 
(1, 'spinner'),
(2, 'pluisje');


INSERT INTO kitten (mamaId, papaId, naam) VALUES 
(1, 2, 'minicat');


SELECT 
    ktn.naam AS kitten_naam,
    mama.naam AS mama_naam,
    papa.naam AS papa_naam
FROM 
    kitten ktn
JOIN 
    kat mama ON ktn.mamaId = mama.id
JOIN 
    kat papa ON ktn.papaId = papa.id;




DROP TABLE IF EXISTS kitten;
DROP TABLE IF EXISTS kat;

CREATE TABLE kat (
    id INT PRIMARY KEY,
    naam VARCHAR(50)
);

CREATE TABLE kitten (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(50),
    mamaId INT,
    papaId INT,
    FOREIGN KEY (mamaId) REFERENCES kat(id) ON DELETE CASCADE,
    FOREIGN KEY (papaId) REFERENCES kat(id) ON DELETE CASCADE
);



INSERT INTO kat (id, naam) VALUES
(1, 'Spinnen'),
(2, 'Tijger');

INSERT INTO kitten (naam, mamaId, papaId) VALUES
('Minicat', 1, 2);



DELETE FROM kat WHERE id = 1;


TRUNCATE TABLE kitten;
TRUNCATE TABLE kat;

INSERT INTO kat (id, naam) VALUES
(1, 'Spinnen'),
(2, 'Tijger');

ALTER TABLE kitten DROP FOREIGN KEY kitten_ibfk_1;
ALTER TABLE kitten DROP FOREIGN KEY kitten_ibfk_2;


ALTER TABLE kitten
    ADD CONSTRAINT fk_mama_restrict FOREIGN KEY (mamaId) REFERENCES kat(id) ON DELETE RESTRICT;

ALTER TABLE kitten
    ADD CONSTRAINT fk_papa_restrict FOREIGN KEY (papaId) REFERENCES kat(id) ON DELETE RESTRICT;

INSERT INTO kitten (naam, mamaId, papaId) VALUES
('Minicat', 1, 2);


DELETE FROM kat WHERE id = 1;




ALTER TABLE kitten DROP FOREIGN KEY fk_mama_restrict;
ALTER TABLE kitten DROP FOREIGN KEY fk_papa_restrict;


ALTER TABLE kitten
    ADD CONSTRAINT fk_mama_null FOREIGN KEY (mamaId) REFERENCES kat(id) ON DELETE SET NULL;

ALTER TABLE kitten
    ADD CONSTRAINT fk_papa_null FOREIGN KEY (papaId) REFERENCES kat(id) ON DELETE SET NULL;


DELETE FROM kat WHERE id = 1;


SELECT * FROM kitten;
