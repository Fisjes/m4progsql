CREATE TABLE 'klantTelefoonGresprek' (
    'id' int(11) NOT NULL,
    'naam' varchar(220) NOT NULL,
    'leeftijd' int(11) NOT NULL,
    'telefoonnummer' varchar(12) NOT NULL,
    'gesprekStart' DATETIME NOT NULL,
    'gesprekEind' DATETIME NOT NULL,
    'gesprekNaarTelefoonnummer' varchar(12) NOT NULL,
    UNIQUE INDEX 'id_UNIQUE' ('id' ASC) VISIBLE,

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;