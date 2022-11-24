<?php

class MessageRepository {
    public static function getMessages($chatid){
        $chats = [];
        $db = Database::conexion();
        $q = "SELECT * FROM messages WHERE chatid = $chatid";
        $result = $db->query($q);
        if($result){
            while ($datos = $result->fetch_assoc()) {
                $chats[] = new Messagge($datos);
            }
        }
        return $chats;
    }

    public static function insertComment($comentario, $userId, $chatid){
        $date = date("d/m/y");
        $db = Database::conexion();
        $q = "INSERT INTO `messages`(`text`, `userid`, `fecha`, `chatid`) VALUES ('".$comentario."', ".$userId." , '". $date ."', '". $chatid ."')";
        $result = $db->query($q);
    }
}
?>