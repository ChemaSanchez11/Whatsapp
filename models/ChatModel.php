<?php

class Chats
{
    private $id;
    private $text;
    private $user;
    private $date;

    public function __construct($datos)
    {
        $this->id = $datos['id'];
        $this->text = $datos['text'];
        $this->user = UserRepository::getUserById($datos['userid']);
        $this->date = $datos['fecha'];
    }

    public function getId()
    {
        return $this->id;
    }

    public function getText()
    {
        return $this->text;
    }

    public function getUser(){
        return $this->user;
    }

    public function getDate(){
        return $this->date;
    }

    public function __toString()
    {
        return $this->text;
    }

}


?>