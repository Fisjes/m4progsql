SELECT * FROM `game` WHERE platform = 'xbox' AND prijs <= '70 euro';

SELECT * FROM `game` WHERE genre = 'rpg' or genre = 'soulslike';

SELECT * FROM `game` WHERE genre = 'rpg' and prijs = '90 euro' and releasedatum = 'Q2';
