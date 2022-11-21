<?php

//cargamos el modelo
require_once('models/UserModel.php');
require_once('models/ChatModel.php');
require_once('models/ChatRepository.php');
session_start();

if (!isset($_SESSION['user'])) {
    $datos['id'] = 0;
    $datos['user'] = "";
    $datos['rol'] = 0;
    $datos['img'] = "default.png";
    $_SESSION['user'] = new User($datos);
}

if (isset($_GET['login'])) {
    require_once('controllers/loginController.php');
    die();
}

$repository = new ChatRepository();
$chats = $repository->getChats();

echo "gol";

require_once('views/mainView.phtml');