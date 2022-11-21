<?php

class Chats
{
    private $id;
    private $text;

    public function __construct($datos)
    {
        $this->id = $datos['id'];
        $this->text = $datos['text'];

    }

    public function getId()
    {
        return $this->id;
    }

    public function getText()
    {
        return $this->text;
    }

    public function __toString()
    {

        return $this->text;
    }

}


?>