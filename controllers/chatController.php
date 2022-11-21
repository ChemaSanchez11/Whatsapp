<?php

if(isset($_POST['new_chat'])){
    ChatRepository::insertComment($_POST['message'], $_SESSION['user']->getId());
    header('Location: index.php');
}

?>