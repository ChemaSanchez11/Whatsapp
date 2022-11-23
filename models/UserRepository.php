<?php

class UserRepository
{

    public static function getUserById($id){
        $DB = Database::conexion();
        $result = $DB->query("SELECT * FROM users WHERE id = $id");

        if($result){
            $user = new User($result->fetch_assoc());
        }else $user = null;

        return $user;
    }

    public static function updateTimeUser($id){
        $DB = Database::conexion();
        $result = $DB->query("UPDATE users SET lastlogin = " . time() . " WHERE id = $id");

    }

    public static  function examineLogin(){
        $DB = Database::conexion();
        $result = $DB->query("SELECT * FROM users");

        $online_users = [];

        if($result){
            while ($datos = $result->fetch_assoc()) {

                $diff = time() - $datos['lastlogin'];

                if ($diff < 300) {
                    $online_users[] = new User($datos);
                }
            }
        }

        return $online_users;
    }

}