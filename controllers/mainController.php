<?php

//cargamos el modelo
require_once('models/UserModel.php');
session_start();

if (!isset($_SESSION['user'])) {
    $datos['id'] = 0;
    $datos['user'] = "";
    $datos['rol'] = 0;
    $_SESSION['user'] = new User($datos);
}

if (isset($_GET['login'])) {
    require_once('controllers/loginController.php');
    die();
}

require_once('views/mainView.phtml');