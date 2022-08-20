<?php 
    require_once "Conexion.php";
    class CrudAmbiente extends Conexion{
        public function mostrarDatos(){
           $sql="SELECT idAmbiente,
                        nombre,
                        aforo,
                        ubicacion
                from ambiente where activo = 1";
            $query=Conexion::conectar()->prepare($sql);
            $query->execute();
            return $query->fetchAll();
            $query->close; 
        }
        public function insertarDatos($datos){
        $sql="INSERT INTO ambiente (nombre, aforo, ubicacion, activo)

                values(:nombre, :aforo, :ubicacion, 1)";
                $query=Conexion::conectar()->prepare($sql);
                $query->bindParam(":nombre",$datos["nombre"],PDO::PARAM_STR);
                $query->bindParam(":ubicacion",$datos["ubicacion"],PDO::PARAM_STR);
                $query->bindParam(":aforo",$datos["aforo"],PDO::PARAM_INT);
                return $query->execute();
                $query->close;
        } 
        public function obtenerDatos($idAmbiente){
            $sql="SELECT idAmbiente,
                        nombre,
                        aforo,
                        ubicacion
                from ambiente where idAmbiente = :idAmbiente";
            $query=Conexion::conectar()->prepare($sql);
                $query->bindParam(":idAmbiente",$idAmbiente, PDO::PARAM_INT);
                $query->execute();
                return $query->fetch();
                $query->close;
        }
        public function actualizarDatos($datos){
            $sql="UPDATE ambiente set nombre = :nombre,
                                    aforo=:aforo,
                                    ubicacion=:ubicacion
                                    where idAmbiente=:idAmbiente";
            $query=Conexion::conectar()->prepare($sql);
                $query->bindParam(":nombre",$datos["nombre"],PDO::PARAM_STR);
                $query->bindParam(":aforo",$datos["aforo"],PDO::PARAM_INT);
                $query->bindParam(":ubicacion",$datos["ubicacion"],PDO::PARAM_STR);
                $query->bindParam(":idAmbiente",$datos["idAmbiente"],PDO::PARAM_INT);
                return $query->execute();
                $query->close;
        }
        public function eliminarDatos($idAmbiente){
            $sql="UPDATE ambiente set activo = 0 where idAmbiente=:idAmbiente";
            $query=Conexion::conectar()->prepare($sql);
            $query->bindParam(":idAmbiente",$idAmbiente,PDO::PARAM_INT);
            return $query->execute();
            $query->close;

        }
    }
?>