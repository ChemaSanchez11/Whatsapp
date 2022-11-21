<?php

//cargamos el modelo
require_once('models/UserModel.php');
require_once('models/UserRepository.php');
require_once('models/ChatModel.php');
require_once('models/ChatRepository.php');
session_start();

if (!isset($_SESSION['user'])) {
    $datos['id'] = 0;
    $datos['user'] = "";
    $datos['rol'] = 0;
    $datos['img'] = "login.png";
    $_SESSION['user'] = new User($datos);
}

if (isset($_GET['login'])) {
    require_once('controllers/loginController.php');
    die();
}

if (isset($_GET['new_chat'])) {

    if(!$_SESSION['user']->getId()) header('Location: index.php?login');
    else{
        require_once('controllers/chatController.php');
        die();
    }
}

$repository = new ChatRepository();
$chats = $repository->getChats();

require_once('views/mainView.phtml');