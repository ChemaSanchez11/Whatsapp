<?php

//cargamos el modelo
require_once('models/UserModel.php');
require_once('models/UserRepository.php');
require_once('models/MessageModel.php');
require_once('models/MessageRepository.php');
require_once ('models/ChatRepository.php');
require_once ('models/ChatModel.php');

session_start();

if (!isset($_SESSION['user'])) {
    $datos['id'] = 0;
    $datos['user'] = "";
    $datos['firstname'] = "";
    $datos['lastname'] = "";
    $datos['rol'] = 0;
    $datos['img'] = "login.png";
    $_SESSION['user'] = new User($datos);
}

UserRepository::updateTimeUser($_SESSION['user']->getId());

if (isset($_GET['login'])) {
    require_once('controllers/loginController.php');
    die();
}

if (isset($_GET['new_msg'])) {

    if (!$_SESSION['user']->getId()) header('Location: index.php?login&redirect');
    else {
        require_once('controllers/chatController.php');
        die();
    }
}

if(isset($_GET['new_chat'])){
    if(empty($_POST['create_chat'])){
        require_once('views/creatChatView.phtml');
        die();
    }
    require_once ('controllers/chatController.php');
    die();
}

if (isset($_GET['chat'])) {
    require_once('controllers/chatController.php');
    die();
}

if (isset($_GET['direct_chat'])){
        $db = Database::conexion();
        $q = "SELECT chatid FROM user_chats WHERE chatid = (SELECT chatid FROM user_chats WHERE userid = ". $_SESSION['user']->getId() .") AND userid = " . $_GET['direct_chat'];
        $result = $db->query($q);

        if($result->num_rows){
            var_dump($result->fetch_assoc());
        }else{
            $name = '(DIRECT) '. UserRepository::getUserById($_GET['direct_chat'])->getFirstname() . ' - '. $_SESSION['user']->getFirstName();
            $db->query('INSERT INTO chats(id,name) VALUES (NULL,"'. $name .'")');
            die();

            //todo HACER INSER EN user_chats para la asociacion
//            $q = "INSERT INTO user_chats(id,chatid,userid) VALUES (NULL,$_GET['])"
        }

}









if(isset($_GET['id']) && !empty($_GET['id'])){
    $repository = new MessageRepository();
    $messages = $repository->getMessages($_GET['id']);
}


require_once('views/mainView.phtml');