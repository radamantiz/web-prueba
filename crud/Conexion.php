
<?php 

    $host = "localhost";
    $usuario = "webhub";
    $contraseña = "Sena-2022";
    $bd = "hub_innovacion";

    $conexion1 = mysqli_connect($host, $usuario, $contraseña, $bd);


    class Conexion{
        public function conectar(){
            $conexion=new PDO("mysql:host=localhost;dbname=hub_innovacion", "webhub","Sena-2022"); 
            return $conexion;   
        }
    }
?>