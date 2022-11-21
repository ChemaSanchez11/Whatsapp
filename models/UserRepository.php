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

}