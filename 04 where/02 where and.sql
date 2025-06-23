SELECT * FROM `huisdieren` WHERE eigenaar = 'joep' AND leeftijd >= 1;

SELECT * FROM `huisdieren` WHERE eigenaar = 'joep' AND eigenaar = 'marije' AND leeftijd >= 1;

SELECT * FROM `huisdieren` WHERE eigenaar = 'joep' AND eigenaar = 'marije' AND leeftijd = 1;

SELECT * FROM `huisdieren` WHERE eigenaar = 'joep' AND eigenaar = 'marije' AND leeftijd = 1 AND typedier = 'hamster';

SELECT * FROM `huisdieren` WHERE typedier = 'joep' AND eigenaar = 'marije' AND geboortedatum = 1 AND typedier = 'hamster';

SELECT * FROM `huisdieren` WHERE eigenaar = 'joep' AND eigenaar = 'marije' AND geboortedatum = 1 AND typedier = 'hamster';
