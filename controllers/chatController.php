<?php

if(isset($_POST['new_chat'])){
    ChatRepository::insertComment($_POST['message'], $_SESSION['user']->getId());
    die;
    header('Location: index.php');
}

?>