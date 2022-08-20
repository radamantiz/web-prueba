<?php 
    require_once "Conexion.php";
    class Crud extends Conexion{
        public function mostrarDatos(){
           $sql="SELECT e.idEquipo,
                        e.codigo,
                        e.nombre,
                        e.estado,
                        e.FK_ambiente, a.nombre as nombreA
                from equipo as e, ambiente as a where e.FK_ambiente = a.idAmbiente and e.activo = 1";
            $query=Conexion::conectar()->prepare($sql);
            $query->execute();
            return $query->fetchAll();
            $query->close; 
        }
        public function insertarDatos($datos){
        $sql="INSERT INTO equipo (codigo, nombre, estado, FK_ambiente, activo)

                values(:codigo,:nombre,:estado,:FK_ambiente, 1)";
                $query=Conexion::conectar()->prepare($sql);
                $query->bindParam(":codigo",$datos["codigo"],PDO::PARAM_STR);
                $query->bindParam(":nombre",$datos["nombre"],PDO::PARAM_STR);
                $query->bindParam(":estado",$datos["estado"],PDO::PARAM_STR);
                $query->bindParam(":FK_ambiente",$datos["FK_ambiente"],PDO::PARAM_INT);
                return $query->execute();
                $query->close;
        } 
        public function obtenerDatos($idEquipo){
            $sql="SELECT idEquipo,
                        codigo,
                        nombre,
                        estado,
                        FK_ambiente
            from equipo where idEquipo=:idEquipo";
            $query=Conexion::conectar()->prepare($sql);
                $query->bindParam(":idEquipo",$idEquipo, PDO::PARAM_INT);
                $query->execute();
                return $query->fetch();
                $query->close;
        }
        public function actualizarDatos($datos){
            $sql="UPDATE equipo set codigo = :codigo,
                                    nombre = :nombre,
                                    estado=:estado,
                                    FK_ambiente=:FK_ambiente
                                    where idEquipo=:idEquipo";
            $query=Conexion::conectar()->prepare($sql);
                $query->bindParam(":codigo",$datos["codigo"],PDO::PARAM_STR);
                $query->bindParam(":nombre",$datos["nombre"],PDO::PARAM_STR);
                $query->bindParam(":estado",$datos["estado"],PDO::PARAM_STR);
                $query->bindParam(":FK_ambiente",$datos["FK_ambiente"],PDO::PARAM_INT);
                $query->bindParam(":idEquipo",$datos["idEquipo"],PDO::PARAM_INT);
                return $query->execute();
                $query->close;
        }
        public function eliminarDatos($idEquipo){
            $sql="UPDATE equipo set activo = 0 where idEquipo=:idEquipo";
            $query=Conexion::conectar()->prepare($sql);
            $query->bindParam(":idEquipo",$idEquipo,PDO::PARAM_INT);
            return $query->execute();
            $query->close;

        }
        public function obtenerDatosNovedad($idEquipo){
            $sql="SELECT idEquipo,
                        estado
            from equipo where idEquipo=:idEquipo";
            $query=Conexion::conectar()->prepare($sql);
                $query->bindParam(":idEquipo",$idEquipo, PDO::PARAM_INT);
                $query->execute();
                return $idEquipo;
                $query->close;
        }
    }
?>