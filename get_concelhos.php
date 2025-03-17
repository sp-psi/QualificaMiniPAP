<?php
require 'db/connection.php';
// retorno em formato JSON
header('Content-Type: application/json');

$pdo = pdo_connect_mysql();
$stmt = $pdo->query("SELECT * FROM concelho");
$concelhos = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($concelhos);
?>