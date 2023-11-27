<?php
// processa_registro.php

// Inclua o arquivo de configuração do banco de dados
include_once('db_connection.php'); // Substitua pelo nome do seu arquivo de configuração

// Verifique se o formulário foi enviado
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Recupere os dados do formulário
    $nome_completo = $_POST['nome_completo'];
    $email = $_POST['email'];
    $documento = $_POST['documento'];
    $genero = $_POST['genero'];
    $cep = $_POST['cep'];
    $endereco = $_POST['endereco']; // Adicione os demais campos aqui
    $cidade = $_POST['cidade'];
    $bairro = $_POST['bairro'];
    $uf = $_POST['uf'];
    $password = $_POST['password'];
    $status = 'A'; // Defina o status como 'A' (ativo)

    // Faça as validações necessárias aqui

    // Hash da senha (use uma técnica mais segura em produção)
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Prepare a consulta SQL para a inserção
    $query = "INSERT INTO peoples (nome_completo, email, documento, genero, cep, endereco, cidade, bairro, uf, password, status)
              VALUES ('$nome_completo', '$email', '$documento', '$genero', '$cep', '$endereco', '$cidade', '$bairro', '$uf', '$hashed_password', '$status')";

    // Execute a consulta
    $result = pg_query($db, $query);

    if ($result) {
        header('Location: register.php?success=true');
        exit();
    } else {
        header('Location: register.php?success=false');
        exit();
    }

    // Feche a conexão com o banco de dados
    pg_close($db);
} else {
    // Se o formulário não foi enviado, redirecione para a página de registro
    header('Location: register.php');
    exit();
}
?>
