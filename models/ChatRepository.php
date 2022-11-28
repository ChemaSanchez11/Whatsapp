<?php

class ChatRepository
{
    public static function getChats()
    {
        $chats = [];
        $db = Database::conexion();
        $q = "SELECT * FROM chats WHERE type='room'";
        $result = $db->query($q);
        if ($result) {
            while ($datos = $result->fetch_assoc()) {
                $chats[] = new Chat($datos);
            }
        }
        return $chats;
    }

    public static function insertGroup()
    {

        $db = Database::conexion();
        $q = "INSERT INTO chats (`id`,`name`) VALUES (null,'" . $_POST['name'] . "')";
        $db->query($q);
        return $db->insert_id;
    }

    public static function getDirectChat($first, $second)
    {
        $db = Database::conexion();
        $q = "SELECT chatid FROM user_chats WHERE chatid IN(SELECT chatid FROM user_chats WHERE userid = " . $first . ") AND userid = " . $second;

        $result = $db->query($q);

        if ($result->num_rows) return $result->fetch_assoc()['chatid'];
        else return false;

    }

    public static function createDirectChat($first, $second)
    {

        $db = Database::conexion();

        $name = '(DIRECT) ' . UserRepository::getUserById($first)->getFirstname() . ' - ' . $second->getFirstName();
        $db->query("INSERT INTO chats(id,name,type) VALUES (NULL,'" . $name . "','direct')");

        $inset_id = $db->insert_id;

        $q = "INSERT INTO user_chats(id,chatid,userid) VALUES (NULL, " . $inset_id . "," . $second->getId() . ")";
        $db->query($q);
        $q = "INSERT INTO user_chats(id,chatid,userid) VALUES (NULL, " . $inset_id . "," . $first . ")";
        $db->query($q);

        return $inset_id;
    }

    public static function existChat($id){
        $db = Database::conexion();
        $result = $db->query("SELECT * FROM chats WHERE id = $id");

        if(!$result->num_rows){
            header('location: index.php?');
        }
    }

}

?>