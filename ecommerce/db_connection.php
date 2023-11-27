<?php
$host = "localhost";  
$port = "5432";       
$dbname = "BANCOOFICIAL";  
$user = "postgres";     
$password = "753951";    

// Estabelecer conexão com o banco de dados
$db = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");
?>