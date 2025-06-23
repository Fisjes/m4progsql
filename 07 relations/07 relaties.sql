SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `voedselProduct` (
    `id` int(11) NOT NULL,
    `hoofdIngredientId` varchar(100) NOT NULL,
    `naam` varchar(100) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


    ALTER TABLE `voedselProduct`
    ADD PRIMARY KEY (`id`);

    ALTER TABLE `voedselProduct`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
    COMMIT;


    SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `ingredient` (
    `id` int(11) NOT NULL,
    `naam` varchar(100) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


    ALTER TABLE `ingredient`
    ADD PRIMARY KEY (`id`);

    ALTER TABLE `ingredient`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
    COMMIT;

ALTER TABLE `WELKE_TABEL_EEN_VERWIJZING HEEFT`
ADD CONSTRAINT FK_`voedselproduct`_`ingredient`
FOREIGN KEY (`hoofdIngredientId`) REFERENCES;
