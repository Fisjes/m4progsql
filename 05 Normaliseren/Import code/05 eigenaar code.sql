SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `huisdiereigenaar` (
    `id` int(11) NOT NULL,
    `voornaam` varchar(120) NOT NULL,
    `achternaam` varchar(120) NOT NULL,
    `leeftijd` int(100) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


    ALTER TABLE `huisdiereigenaar`
    ADD PRIMARY KEY (`id`);
    COMMIT;

    Ben Straat
    Django Banjo
    Bola Dola
    Boris Woudenberg
    Barry van der Meer
    Joep Roep
    Marije Meer

    INSERT INTO `huisdiereneigenaar` (`id`, `voornaam`, `achternaam`, `leeftijd`)
 VALUES 
 ('1', 'Ben', 'Straat', '20',)
 ('2', 'Django', 'Banjo', '30'),
 ('3', 'Bola', 'Dola', '40'),
 ('4','Boris', 'Woudenberg', '50'),
 ('5','Barry', 'van der Meer', '60'),
 ('6','Joep', 'Roep', '70'),
 ('7','Marije', 'Meer', '80');

