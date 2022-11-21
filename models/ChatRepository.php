<?php

class ChatRepository {
    public static function getChats(){
        $chats = [];
        $db = Database::conexion();
        $q = "SELECT * FROM chat";
        $result = $db->query($q);
        while ($datos = $result->fetch_assoc()) {
            $chats[] = new Chats($datos);
        }
        return $chats;
    }
}
?>