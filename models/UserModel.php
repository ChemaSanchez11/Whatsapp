<?php

class User
{
    public $id;
    public $name;
    public $rol;


    public function __construct ($datos){

        $this->id = $datos['id'];
        $this->name = $datos['user'];
        $this->rol = $datos['rol'];
    }

    public function getId(){
        return $this->id;
    }

    public function getName(){
        return $this->name;
    }

    public function getRol(){
        return $this->rol;
    }

    public function setRol($rol)
    {
        $this->rol = $rol;

        if($_SESSION['user']->getId() === $this->id){
            $_SESSION['user'] = $this;
        }

        $DB = Database::conexion();
        $DB->query("UPDATE `users` SET `rol` = '$rol'WHERE `id` = $this->id");
    }

}