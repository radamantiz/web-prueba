<?php 
    require_once "Conexion.php";
    class CrudNovedad extends Conexion{
        public function mostrarDatosNovedad(){
           $sql="SELECT e.codigo,
                        e.nombre,
                        n.fecha,
                        n.tipo,
                        n.descripcion
                from novedad as n, equipo as e where n.FK_equipo = e.idEquipo and n.activo = 1";
            $query=Conexion::conectar()->prepare($sql);
            $query->execute();
            return $query->fetchAll();
            $query->close; 
        }
        public function registrarNovedad($datos){
        $sql="INSERT INTO novedad (FK_usuario, FK_equipo, tipo, descripcion, fecha, activo)

                values(:FK_usuario, :FK_equipo, :tipo, :descripcion, :fecha, 1)";
                $query=Conexion::conectar()->prepare($sql);
                $query->bindParam(":FK_usuario",$datos["FK_usuario"],PDO::PARAM_STR);
                $query->bindParam(":FK_equipo",$datos["FK_equipo"],PDO::PARAM_STR);
                $query->bindParam(":tipo",$datos["tipo"],PDO::PARAM_STR);
                $query->bindParam(":descripcion",$datos["descripcion"],PDO::PARAM_INT);
                $query->bindParam(":fecha",$datos["fecha"],PDO::PARAM_STR);
                return $query->execute();
                $query->close;
        } 
        public function obtenerDatos($idEquipo){
            $sql="SELECT idEquipo,
                        estado
            from equipo where idEquipo=:idEquipo";
            $query=Conexion::conectar()->prepare($sql);
                $query->bindParam(":idEquipo",$idEquipo, PDO::PARAM_INT);
                $query->execute();
                return $query->fetch();
                $query->close;
        }
    }
?>