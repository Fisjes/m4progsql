SELECT * FROM huisdieren;


SELECT naam, leeftijd FROM huisdieren;

SELECT naam, leeftijd, SUM(leeftijd) FROM huisdieren;

SELECT naam, leeftijd, SUM(leeftijd) AS totale_leeftijd FROM huisdieren;

SELECT naam AS name, leeftijd AS age, SUM(leeftijd) AS total_age FROM huisdieren;

SELECT naam, leeftijd FROM huisdieren AS pets;

SELECT pets.naam, pets.leeftijd FROM huisdieren AS pets;

SELECT pets.naam, pets.leeftijd
FROM huisdieren AS pets
WHERE pets.leeftijd > 5;


SELECT 
    h.hobbyid,         
    h.hobby,           
    p.id AS persoonid, 
    p.naam             
FROM hobby AS h
JOIN persoon AS p ON h.hobbyid = p.hobbyid;

SELECT 
    k.klantid,
    k.naam,
    k.leeftijd,
    k.telefoonnummer,
    g.gesprekStart,
    g.gesprekEind,
    g.gesprekNaarTelefoonnummer
FROM klant AS k
JOIN gesprek AS g ON k.klantid = g.klantid;