<?php

class Database
{
    public static function conexion(){
        $conexion=new mysqli("localhost", "root", "", "carrito");
        $conexion->query("SET NAMES 'utf8'");
        return $conexion;
    }
}