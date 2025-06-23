SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `kleren` (
    `id` int(11) NOT NULL,
    `beschrijving` varchar(100) NOT NULL,
    `kledingtype` varchar(100) NOT NULL,
    `kleur` varchar(100) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


    ALTER TABLE `kleren`
    ADD PRIMARY KEY (`id`);

    ALTER TABLE `kleren`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
    COMMIT;