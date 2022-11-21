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
        $date = date("d/m/y");
        $db = Database::conexion();
        $q = "INSERT INTO `chat`(`text`, `userid`, `fecha`) VALUES ('".$comentario."', ".$userId." , '". $date ."')";
        $result = $db->query($q);
    }
}
?>