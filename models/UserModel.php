<?php

class User
{
    public $id;
    public $name;
    public $rol;
    public $img;


    public function __construct ($row){
        $this->id = $row['id'];
        $this->name = $row['user'];
        $this->rol = $row['rol'];
        $this->img = $row['img'];
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

    public function getImg(){
        return 'views/img/users/'.$this->img;
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