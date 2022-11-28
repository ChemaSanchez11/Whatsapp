<?php

if (isset($_POST['new_chat']) && !empty($_POST['message'])) {

    MessageRepository::insertComment($_POST['message'], $_SESSION['user']->getId(), $_GET['new_msg']);
    header('Location: index.php?id=' . $_GET['new_msg']);
    die();


} else if ($_POST['create_chat']) {

    $id = ChatRepository::insertGroup();
    header('Location: index.php?id='.$id);

} else {

    header('Location: index.php?id=' . $_GET['new_msg']);
}


//TODO: Al insertar en un chat que no existe redirigir


?>