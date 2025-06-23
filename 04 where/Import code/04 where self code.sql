SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `game` (
    `id` int(11) NOT NULL,
    `platform` varchar(100) NOT NULL,
    `jaar` varchar(100) NOT NULL,
    `releasedatum` varchar(100) NOT NULL,
    `prijs` varchar(100) NOT NULL,
    `genre` varchar(100) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


    ALTER TABLE `game`
    ADD PRIMARY KEY (`id`);

    ALTER TABLE `game`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
    COMMIT;

    INSERT INTO `game` (`id`, `platform`, `jaar`, `releasedatum`, `prijs`, `genre`)
 VALUES 
 ('1', 'xbox', '2025', 'Q4, 60 euro', 'actie'),
 ('2', 'playstation', '2025', 'Q2, 90 euro', 'rpg'),
 ('3', 'nintendo', '2025', 'Q1, 30 euro', 'soulslike'),
 ('4','pc', '2025', 'Q3, 40 euro', 'platformer');

 