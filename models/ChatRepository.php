<?php

class ChatRepository {
    public static function getChats(){
        $chats = [];
        $db = Database::conexion();
        $q = "SELECT * FROM chat";
        $result = $db->query($q);
        if($result){
            while ($datos = $result->fetch_assoc()) {
                $chats[] = new Chats($datos);
            }
        }
        return $chats;
    }

    public static function insertComment($comentario, $userId){
        $db = Database::conexion();
        $q = "INSERT INTO `chat`(`text`, `userid`) VALUES ('".$comentario."', ".$userId.")";
        $result = $db->query($q);
    }
}
?>