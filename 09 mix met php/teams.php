<?php

$servername = "mariadb";
$username = "m4proggebruiker";
$password = "bf83tb3g5v";
$database = "m4prog";

$conn = new mysqli($servername, $username, $password, $database);
if ($conn->connect_error) {
    die("Connectie mislukt: " . $conn->connect_error);
}


$sql = "
SELECT 
    teamlid.voornaam, 
    teamlid.achternaam, 
    team.id AS teamid, 
    team.naam AS teamnaam
FROM teamlid
JOIN teamlid2_team ON teamlid.id = teamlid2_team.teamlid_id
JOIN team ON teamlid2_team.team_id = team.id
ORDER BY team.id, teamlid.voornaam
";

$result = $conn->query($sql);
$rows = $result->fetch_all(MYSQLI_ASSOC);


$teams = [];
foreach ($rows as $row) {
    $teamnaam = $row['teamnaam'];
    $naam = $row['voornaam'] . $row['achternaam'];
    $teams[$teamnaam][] = $naam;
}
?>

<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Teams en Leden</title>
</head>
<body>
    <h1>per team</h1>
    <?php foreach ($teams as $teamnaam => $leden): ?>
        <h2><?= htmlspecialchars($teamnaam) ?></h2>
        <?php foreach ($leden as $lid): ?>
            <?= htmlspecialchars($lid) ?><br>
        <?php endforeach; ?>
        <br>
    <?php endforeach; ?>
</body>
</html>
